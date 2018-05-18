.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentDelegate$FragmentInto;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationComposite:Lcom/android/camera/animation/AnimationComposite;

.field private currentFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/camera/Camera;

.field private originalFragments:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    new-instance v0, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {v0}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "need operation info"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v13}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v13}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v7

    iget v9, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v13}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v7

    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13, v7}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v9, v7, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v8

    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v8, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v13, v14, v8}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    :pswitch_1
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13, v9}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v10, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v3, v10}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    :pswitch_2
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13, v7}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v6, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v7, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v6, :cond_4

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v13, v14, v8}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v9, v7, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v8

    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v8, v14}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :pswitch_4
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_9

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13, v1}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v10, :cond_6

    if-eq v1, v7, :cond_8

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    :goto_4
    invoke-virtual {v3, v10}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_4

    :cond_9
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragment;

    invoke-virtual {v8, v7}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    :pswitch_5
    if-eq v7, v9, :cond_a

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v6, :cond_a

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_a
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragment;

    invoke-virtual {v8, v7}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v6, :cond_b

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_b
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v7, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    invoke-virtual {v0, p4}, Lcom/android/camera/fragment/BaseFragment;->setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    return-object v0

    :sswitch_0
    const/4 v1, 0x0

    return-object v1

    :sswitch_1
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomAction;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBeauty;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {v0}, Lcom/android/camera/fragment/sticker/FragmentSticker;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;-><init>()V

    goto :goto_0

    :sswitch_d
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    goto :goto_0

    :sswitch_e
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    goto :goto_0

    :sswitch_f
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualStereo;

    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualStereo;-><init>()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0xf1 -> :sswitch_1
        0xf3 -> :sswitch_2
        0xf4 -> :sswitch_3
        0xf7 -> :sswitch_5
        0xf9 -> :sswitch_8
        0xfa -> :sswitch_4
        0xfb -> :sswitch_6
        0xfc -> :sswitch_7
        0xff -> :sswitch_9
        0xff0 -> :sswitch_a
        0xff1 -> :sswitch_c
        0xff2 -> :sswitch_b
        0xff3 -> :sswitch_d
        0xff4 -> :sswitch_e
        0xff5 -> :sswitch_f
    .end sparse-switch
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCurrentFragments(III)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_6
    const/4 v0, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public delegateEvent(I)V
    .locals 9

    const v8, 0x7f0a00c3

    const v7, 0x7f0a00e8

    const/16 v6, 0xf1

    const v5, 0x7f0a00e9

    const v4, 0x7f0a00ea

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v2, 0xfa

    if-eq v0, v2, :cond_1

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v2, 0xfb

    if-eq v0, v2, :cond_2

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xfb

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v2, 0xff

    if-eq v0, v2, :cond_3

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff1

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xfc

    if-eq v2, v3, :cond_4

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xfc

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xff2

    if-eq v2, v3, :cond_5

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff2

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xff3

    if-eq v2, v3, :cond_7

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0a00e5

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0a00e6

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0a00e7

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0a00e5

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const v3, 0x7f0a00e5

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0a00e6

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const v3, 0x7f0a00e6

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a00e7

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const v3, 0x7f0a00e7

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff1

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;IZLcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;
    .locals 4
    .param p1    # Lio/reactivex/Completable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    new-instance v1, Lcom/android/camera/fragment/BaseFragmentDelegate$1;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/fragment/BaseFragmentDelegate$1;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v2, p1, v1, p2, p3}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;IZ)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    return-object v2
.end method

.method public getActiveFragment(I)I
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf0

    return v2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object v0
.end method

.method public getOriginalFragment(I)I
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const/16 v2, 0xf0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public init(Landroid/support/v4/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    const/4 v8, 0x1

    const/16 v9, 0xf4

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v6

    const/4 v8, 0x1

    const/16 v9, 0xf7

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v4

    const/4 v8, 0x1

    const/16 v9, 0xff1

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v2

    const/4 v8, 0x1

    const/16 v9, 0xf1

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v1

    const/4 v8, 0x1

    const/16 v9, 0xf3

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    const/4 v8, 0x1

    const/16 v9, 0xff0

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e8

    invoke-virtual {v7, v9, v2, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00ea

    invoke-virtual {v7, v9, v1, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e5

    invoke-virtual {v7, v9, v6, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e6

    invoke-virtual {v7, v9, v4, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00c3

    invoke-virtual {v7, v9, v3, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e4

    invoke-virtual {v7, v9, v5, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    const/16 v9, 0xff4

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e7

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e7

    invoke-virtual {v7, v9, v0, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e8

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00ea

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e5

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v9, 0x7f0a00e9

    const/16 v10, 0xf0

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e6

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00c3

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e4

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v6}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v1}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-direct {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-interface {p3}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v8

    goto/16 :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v9, 0x7f0a00e7

    const/16 v10, 0xf0

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_1
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method
