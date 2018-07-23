.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/support/v4/app/FragmentContainer;

.field mController:Landroid/support/v4/app/FragmentController;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 405
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 408
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    .line 797
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 798
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 799
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 800
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void

    .line 408
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 477
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 478
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 480
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 2280
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 1439
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_0

    .line 1443
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1447
    return-void

    .line 1440
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 820
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 821
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 822
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 823
    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .prologue
    .line 806
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 807
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 809
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 810
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 811
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 812
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 813
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 814
    const-wide/16 v2, 0xdc

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 815
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 816
    return-object v10
.end method

.method static modifiesAlpha(Landroid/view/animation/Animation;)Z
    .locals 5
    .param p0, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 488
    instance-of v2, p0, Landroid/view/animation/AlphaAnimation;

    if-nez v2, :cond_1

    .line 490
    instance-of v2, p0, Landroid/view/animation/AnimationSet;

    if-nez v2, :cond_2

    .line 498
    .end local p0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    return v3

    .line 489
    .restart local p0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    return v4

    .line 491
    :cond_2
    check-cast p0, Landroid/view/animation/AnimationSet;

    .end local p0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 492
    .local v0, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 493
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-nez v2, :cond_3

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_3
    return v4
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 2145
    const/4 v0, 0x0

    .line 2146
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 2157
    :goto_0
    return v0

    .line 2148
    :sswitch_0
    const/16 v0, 0x2002

    goto :goto_0

    .line 2151
    :sswitch_1
    const/16 v0, 0x1001

    goto :goto_0

    .line 2154
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2146
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 905
    if-nez p1, :cond_1

    .line 906
    :cond_0
    return-void

    .line 905
    :cond_1
    if-eqz p2, :cond_0

    .line 908
    invoke-static {p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 911
    :goto_0
    return-void

    .line 909
    :cond_2
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x0

    .line 503
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/view/animation/Animation;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 510
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v1, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v3, "FragmentManager"

    invoke-direct {v1, v3}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 513
    .local v1, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 514
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v3, :cond_0

    .line 522
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "  "

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 527
    :goto_0
    throw p1

    .line 516
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "  "

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2, v4}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 524
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 2169
    const/4 v0, -0x1

    .line 2170
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 2181
    :goto_0
    return v0

    .line 2172
    :sswitch_0
    if-nez p1, :cond_0

    const/4 v0, 0x2

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 2175
    :sswitch_1
    if-nez p1, :cond_1

    const/4 v0, 0x4

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    .line 2178
    :sswitch_2
    if-nez p1, :cond_2

    const/4 v0, 0x6

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_3

    .line 2170
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 1596
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1599
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1601
    return-void

    .line 1597
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1263
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1266
    :goto_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_2

    .line 1267
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1268
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    .line 1282
    :cond_0
    :goto_2
    return-void

    .line 1264
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    goto :goto_0

    .line 1266
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1269
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1272
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1274
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1275
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-nez v0, :cond_6

    .line 1278
    :cond_4
    :goto_3
    if-eqz p2, :cond_0

    .line 1279
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    .line 1270
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4

    .line 1276
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_3
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 609
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    return-void

    .line 607
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .locals 5
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 1476
    move-object v0, p0

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter p0

    .line 1477
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1478
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1481
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1482
    .local v2, "index":I
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_3

    .line 1483
    :goto_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    monitor-exit p0

    return v2

    .line 1477
    .end local v2    # "index":I
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1487
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1488
    .restart local v2    # "index":I
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_4

    .line 1489
    :goto_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1490
    monitor-exit p0

    return v2

    .line 1479
    .end local v2    # "index":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    goto :goto_0

    .line 1492
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1482
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v2    # "index":I
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1488
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v4/app/FragmentHostCallback;
    .param p2, "container"    # Landroid/support/v4/app/FragmentContainer;
    .param p3, "parent"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1976
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 1977
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1978
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 1979
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 1980
    return-void

    .line 1976
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1361
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1362
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_2

    .line 1380
    :cond_0
    :goto_1
    return-void

    .line 1361
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1363
    :cond_2
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1364
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_0

    .line 1365
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1368
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1371
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_6

    .line 1372
    :goto_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1374
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-nez v0, :cond_7

    .line 1377
    :cond_3
    :goto_4
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_1

    .line 1366
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    goto :goto_2

    .line 1369
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1374
    :cond_7
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1375
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_4
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 532
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1342
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1343
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_2

    .line 1358
    :cond_0
    :goto_1
    return-void

    .line 1342
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1344
    :cond_2
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1345
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 1351
    :goto_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-nez v0, :cond_6

    .line 1354
    :cond_3
    :goto_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1355
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_1

    .line 1348
    :cond_4
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_5

    .line 1349
    :goto_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1348
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove from detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1351
    :cond_6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1352
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_3
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1992
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1993
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1994
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2037
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2045
    :cond_0
    return-void

    .line 2038
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2039
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2040
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 2038
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2041
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 2120
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2130
    :cond_0
    return v3

    .line 2121
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2122
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2123
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_3

    .line 2121
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2124
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2125
    const/4 v2, 0x1

    return v2
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1987
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1988
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1989
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2059
    const/4 v3, 0x0

    .line 2060
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 2061
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 2076
    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 2085
    :cond_1
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 2087
    return v3

    .line 2062
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_2
    const/4 v1, 0x0

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2063
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2064
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_4

    .line 2062
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2065
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2066
    const/4 v3, 0x1

    .line 2067
    if-eqz v2, :cond_5

    .line 2070
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2068
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    goto :goto_2

    .line 2077
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 2078
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2079
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_8

    .line 2080
    :cond_7
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 2077
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2079
    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4
.end method

.method public dispatchDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2028
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 2029
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2030
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2031
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2032
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 2033
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 2034
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    .prologue
    .line 2024
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2025
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 2048
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2056
    :cond_0
    return-void

    .line 2049
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2050
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2051
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 2049
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2052
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    goto :goto_1
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 2106
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2116
    :cond_0
    return v3

    .line 2107
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2108
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2109
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_3

    .line 2107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2110
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2111
    const/4 v2, 0x1

    return v2
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2134
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2142
    :cond_0
    return-void

    .line 2135
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2136
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2137
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 2135
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2138
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 2007
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2008
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2091
    const/4 v2, 0x0

    .line 2092
    .local v2, "show":Z
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 2102
    :cond_0
    return v2

    .line 2093
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2094
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2095
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_3

    .line 2093
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2096
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2097
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public dispatchReallyStop()V
    .locals 2

    .prologue
    .line 2020
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2021
    return-void
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2002
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2003
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2004
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1997
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1998
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1999
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 2014
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2016
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2017
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 686
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 689
    .local v6, "innerPrefix":Ljava/lang/String;
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v8, :cond_8

    .line 706
    :cond_0
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v8, :cond_a

    .line 718
    :cond_1
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-nez v8, :cond_b

    .line 730
    :cond_2
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v8, :cond_c

    .line 743
    :cond_3
    move-object v1, p0

    .local v1, "-l_7_R":Ljava/lang/Object;
    monitor-enter p0

    .line 744
    :try_start_0
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v8, :cond_d

    .line 756
    :cond_4
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v8, :cond_e

    .line 760
    :cond_5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v8, :cond_f

    .line 774
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "FragmentManager misc state:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mHost="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 776
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mContainer="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 777
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-nez v8, :cond_10

    .line 780
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mCurState="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 781
    const-string/jumbo v8, " mStateSaved="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 782
    const-string/jumbo v8, " mDestroyed="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 783
    iget-boolean v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-nez v8, :cond_11

    .line 787
    :goto_2
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v8, :cond_12

    .line 791
    :goto_3
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v8, :cond_13

    .line 795
    :cond_7
    :goto_4
    return-void

    .line 690
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    :cond_8
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 691
    .local v2, "N":I
    if-lez v2, :cond_0

    .line 692
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Active Fragments in "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    const-string/jumbo v8, ":"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v2, :cond_0

    .line 696
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 697
    .local v4, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 698
    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 699
    if-nez v4, :cond_9

    .line 695
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 700
    :cond_9
    invoke-virtual {v4, v6, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_6

    .line 707
    .end local v2    # "N":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v5    # "i":I
    :cond_a
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 708
    .restart local v2    # "N":I
    if-lez v2, :cond_1

    .line 709
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Added Fragments:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    if-ge v5, v2, :cond_1

    .line 711
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 712
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 713
    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 719
    .end local v2    # "N":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v5    # "i":I
    :cond_b
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 720
    .restart local v2    # "N":I
    if-lez v2, :cond_2

    .line 721
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Fragments Created Menus:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8
    if-ge v5, v2, :cond_2

    .line 723
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 724
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 725
    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 731
    .end local v2    # "N":I
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v5    # "i":I
    :cond_c
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 732
    .restart local v2    # "N":I
    if-lez v2, :cond_3

    .line 733
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Back Stack:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    if-ge v5, v2, :cond_3

    .line 735
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    .line 736
    .local v3, "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 737
    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v3, v6, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 734
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 745
    .end local v2    # "N":I
    .end local v3    # "bs":Landroid/support/v4/app/BackStackRecord;
    .end local v5    # "i":I
    .restart local v1    # "-l_7_R":Ljava/lang/Object;
    :cond_d
    :try_start_1
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 746
    .restart local v2    # "N":I
    if-lez v2, :cond_4

    .line 747
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Back Stack Indices:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    if-ge v5, v2, :cond_4

    .line 749
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    .line 750
    .restart local v3    # "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 751
    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 748
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 756
    .end local v2    # "N":I
    .end local v3    # "bs":Landroid/support/v4/app/BackStackRecord;
    .end local v5    # "i":I
    :cond_e
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 757
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mAvailBackStackIndices: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    :catchall_0
    move-exception v0

    .local v0, "-l_10_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 763
    .end local v0    # "-l_10_R":Ljava/lang/Object;
    :cond_f
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 764
    .restart local v2    # "N":I
    if-lez v2, :cond_6

    .line 765
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Pending Actions:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_b
    if-ge v5, v2, :cond_6

    .line 767
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    .line 768
    .local v7, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 769
    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 766
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 778
    .end local v2    # "N":I
    .end local v5    # "i":I
    .end local v7    # "r":Ljava/lang/Runnable;
    :cond_10
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mParent="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 784
    :cond_11
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    iget-boolean v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_2

    .line 788
    :cond_12
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mNoTransactionsBecause="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 791
    :cond_13
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 792
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mAvailIndices: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1457
    if-eqz p2, :cond_1

    .line 1460
    :goto_0
    move-object v0, p0

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter p0

    .line 1461
    :try_start_0
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v2, :cond_2

    .line 1462
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Activity has been destroyed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1472
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1458
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    goto :goto_0

    .line 1461
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v2, :cond_0

    .line 1464
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1467
    :goto_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 1472
    :goto_2
    monitor-exit p0

    .line 1473
    return-void

    .line 1465
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    goto :goto_1

    .line 1469
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1470
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public execPendingActions()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1535
    iget-boolean v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v7, :cond_2

    .line 1539
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 1543
    const/4 v2, 0x0

    .line 1548
    .local v2, "didSomething":Z
    :goto_0
    move-object v0, p0

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter p0

    .line 1549
    :try_start_0
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 1550
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    iget-boolean v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-nez v7, :cond_8

    .line 1584
    :cond_1
    :goto_1
    return v2

    .line 1536
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v2    # "didSomething":Z
    :cond_2
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Recursive entry to executePendingTransactions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1540
    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Must be called from main thread of process"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1549
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    .restart local v2    # "didSomething":Z
    :cond_4
    :try_start_1
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1553
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1554
    .local v6, "numActions":I
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-nez v7, :cond_6

    .line 1555
    :cond_5
    new-array v7, v6, [Ljava/lang/Runnable;

    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1557
    :goto_2
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1558
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1559
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1560
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1562
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1563
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-lt v4, v6, :cond_7

    .line 1567
    iput-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1568
    const/4 v2, 0x1

    goto :goto_0

    .line 1554
    .end local v4    # "i":I
    :cond_6
    :try_start_2
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v7, v7

    if-lt v7, v6, :cond_5

    goto :goto_2

    .line 1560
    .end local v6    # "numActions":I
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1564
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v4    # "i":I
    .restart local v6    # "numActions":I
    :cond_7
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v7, v7, v4

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 1565
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aput-object v10, v7, v4

    .line 1563
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1572
    .end local v4    # "i":I
    .end local v6    # "numActions":I
    :cond_8
    const/4 v5, 0x0

    .line 1573
    .local v5, "loadersRunning":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_9

    .line 1579
    if-nez v5, :cond_1

    .line 1580
    iput-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1581
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto :goto_1

    .line 1574
    :cond_9
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 1575
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-nez v3, :cond_b

    .line 1573
    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1575
    :cond_b
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v7, :cond_a

    .line 1576
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v7}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_5
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1383
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1392
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 1401
    :cond_1
    return-object v3

    .line 1385
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1386
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1387
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_4

    .line 1385
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1387
    :cond_4
    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_3

    .line 1388
    return-object v0

    .line 1394
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1395
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1396
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_7

    .line 1394
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1396
    :cond_7
    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_6

    .line 1397
    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1405
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1414
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 1423
    :cond_1
    return-object v3

    .line 1405
    :cond_2
    if-eqz p1, :cond_0

    .line 1407
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1408
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1409
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_4

    .line 1407
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1409
    :cond_4
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1410
    return-object v0

    .line 1414
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_5
    if-eqz p1, :cond_1

    .line 1416
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1417
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1418
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_7

    .line 1416
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1418
    :cond_7
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1419
    return-object v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1427
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1435
    :cond_0
    return-object v3

    .line 1427
    :cond_1
    if-eqz p1, :cond_0

    .line 1428
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1429
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1430
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_3

    .line 1428
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1430
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1431
    return-object v0
.end method

.method public freeBackStackIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1521
    move-object v0, p0

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter p0

    .line 1522
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1523
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1526
    :goto_0
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_1

    .line 1527
    :goto_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    monitor-exit p0

    .line 1529
    return-void

    .line 1524
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    goto :goto_0

    .line 1528
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1526
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Freeing back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 601
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 630
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 631
    .local v1, "index":I
    if-eq v1, v2, :cond_0

    .line 634
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 638
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 639
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 643
    :goto_1
    return-object v0

    .line 632
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    return-object v3

    .line 635
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 640
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;
    .locals 0

    .prologue
    .line 2277
    return-object p0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1302
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v1, :cond_0

    .line 1303
    :goto_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_1

    .line 1319
    :goto_1
    return-void

    .line 1302
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1304
    :cond_1
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1305
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 1314
    :goto_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v1, :cond_5

    .line 1317
    :cond_2
    :goto_3
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    goto :goto_1

    .line 1306
    :cond_3
    invoke-virtual {p0, p1, p2, v3, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1308
    .local v0, "anim":Landroid/view/animation/Animation;
    if-nez v0, :cond_4

    .line 1312
    :goto_4
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1309
    :cond_4
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1310
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 1314
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_5
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1315
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_3
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const v8, 0x3f79999a    # 0.975f

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 828
    iget v3, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v3}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 830
    .local v1, "animObj":Landroid/view/animation/Animation;
    if-nez v1, :cond_2

    .line 834
    iget v3, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-nez v3, :cond_3

    .line 841
    :cond_0
    if-eqz p2, :cond_4

    .line 845
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    .line 846
    .local v2, "styleIndex":I
    if-ltz v2, :cond_5

    .line 850
    packed-switch v2, :pswitch_data_0

    .line 865
    if-eqz p4, :cond_6

    .line 868
    :cond_1
    :goto_0
    if-eqz p4, :cond_7

    .line 882
    return-object v7

    .line 831
    .end local v2    # "styleIndex":I
    :cond_2
    return-object v1

    .line 835
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 836
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 837
    return-object v0

    .line 842
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_4
    return-object v7

    .line 847
    .restart local v2    # "styleIndex":I
    :cond_5
    return-object v7

    .line 852
    :pswitch_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f900000    # 1.125f

    invoke-static {v3, v4, v5, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 854
    :pswitch_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v8, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 856
    :pswitch_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v5, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 858
    :pswitch_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x3f89999a    # 1.075f

    invoke-static {v3, v5, v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 860
    :pswitch_4
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 862
    :pswitch_5
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 865
    :cond_6
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 866
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    goto :goto_0

    .line 869
    :cond_7
    return-object v7

    .line 850
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1229
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_1

    .line 1233
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1234
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1237
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1238
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    :goto_1
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_4

    .line 1245
    :goto_2
    return-void

    .line 1230
    :cond_1
    return-void

    .line 1233
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1241
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1242
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1235
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    goto :goto_0

    .line 1244
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v2, 0x0

    .line 1248
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1252
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1253
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1257
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    .line 1260
    return-void

    .line 1249
    :cond_0
    return-void

    .line 1252
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1255
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method moveToState(IIIZ)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1185
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_3

    .line 1189
    :cond_0
    if-eqz p4, :cond_4

    .line 1193
    :cond_1
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1194
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1215
    :cond_2
    :goto_0
    return-void

    .line 1185
    :cond_3
    if-eqz p1, :cond_0

    .line 1186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No host"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_4
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_1

    .line 1190
    return-void

    .line 1195
    :cond_5
    const/4 v7, 0x0

    .line 1196
    .local v7, "loadersRunning":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_6

    .line 1206
    if-eqz v7, :cond_9

    .line 1210
    :goto_2
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 1211
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1212
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0

    .line 1197
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1198
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_8

    .line 1196
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1199
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1200
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_7

    .line 1201
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v7, v0

    goto :goto_3

    .line 1207
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto :goto_2
.end method

.method moveToState(IZ)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1182
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1177
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1178
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 11
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .prologue
    .line 916
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    if-gt p2, v0, :cond_5

    .line 919
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-nez v0, :cond_6

    .line 925
    :cond_1
    :goto_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-nez v0, :cond_7

    .line 928
    :cond_2
    :goto_2
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-lt v0, p2, :cond_8

    .line 1064
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-gt v0, p2, :cond_26

    .line 1173
    :cond_3
    :goto_3
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 1174
    return-void

    .line 916
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 917
    :cond_5
    const/4 p2, 0x1

    goto :goto_0

    .line 919
    :cond_6
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_1

    .line 921
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_1

    .line 925
    :cond_7
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    const/4 v0, 0x3

    if-le p2, v0, :cond_2

    .line 926
    const/4 p2, 0x3

    goto :goto_2

    .line 932
    :cond_8
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_b

    .line 935
    :cond_9
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-nez v0, :cond_c

    .line 943
    :goto_4
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 945
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_d

    .line 946
    :goto_5
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_e

    .line 965
    :cond_a
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 966
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 967
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v0

    :goto_7
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 970
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 971
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_11

    .line 975
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    .line 979
    :goto_8
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-eqz v0, :cond_13

    .line 982
    :goto_9
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 983
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_14

    .line 1003
    :goto_a
    :pswitch_1
    const/4 v0, 0x1

    if-gt p2, v0, :cond_18

    .line 1051
    :goto_b
    :pswitch_2
    const/4 v0, 0x3

    if-gt p2, v0, :cond_23

    .line 1056
    :goto_c
    :pswitch_3
    const/4 v0, 0x4

    if-le p2, v0, :cond_3

    .line 1057
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_25

    .line 1058
    :goto_d
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1059
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto :goto_3

    .line 932
    :cond_b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_9

    .line 933
    return-void

    .line 940
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 941
    iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_4

    .line 945
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 947
    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 948
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 950
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 952
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_f

    .line 956
    :goto_e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 958
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_a

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 960
    const/4 v0, 0x3

    if-le p2, v0, :cond_a

    .line 961
    const/4 p2, 0x3

    goto/16 :goto_6

    .line 953
    :cond_f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    goto :goto_e

    .line 967
    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_7

    .line 972
    :cond_11
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_8

    .line 980
    :cond_13
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 987
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 989
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_15

    .line 999
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_a

    .line 990
    :cond_15
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_16

    .line 994
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 996
    :goto_f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_17

    .line 997
    :goto_10
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto/16 :goto_a

    .line 992
    :cond_16
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    goto :goto_f

    .line 996
    :cond_17
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 1004
    :cond_18
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_19

    .line 1005
    :goto_11
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_1a

    .line 1043
    :goto_12
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1044
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_22

    .line 1047
    :goto_13
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto/16 :goto_b

    .line 1004
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1006
    :cond_1a
    const/4 v7, 0x0

    .line 1007
    .local v7, "container":Landroid/view/ViewGroup;
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-nez v0, :cond_1c

    .line 1017
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_1b
    :goto_14
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1018
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1020
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1d

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_12

    .line 1008
    .restart local v7    # "container":Landroid/view/ViewGroup;
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "container":Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .line 1009
    .restart local v7    # "container":Landroid/view/ViewGroup;
    if-nez v7, :cond_1b

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v0, :cond_1b

    .line 1010
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_14

    .line 1021
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_1d
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1022
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1e

    .line 1025
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1027
    :goto_15
    if-nez v7, :cond_1f

    .line 1036
    :goto_16
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_21

    .line 1037
    :goto_17
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto/16 :goto_12

    .line 1023
    :cond_1e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    goto :goto_15

    .line 1028
    :cond_1f
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1030
    .local v6, "anim":Landroid/view/animation/Animation;
    if-nez v6, :cond_20

    .line 1034
    :goto_18
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_16

    .line 1031
    :cond_20
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v6}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1032
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_18

    .line 1036
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_21
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    .line 1045
    :cond_22
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    goto/16 :goto_13

    .line 1052
    :cond_23
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_24

    .line 1053
    :goto_19
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    goto/16 :goto_c

    .line 1052
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1057
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1065
    :cond_26
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 1125
    :cond_27
    :goto_1a
    :pswitch_4
    const/4 v0, 0x1

    if-ge p2, v0, :cond_3

    .line 1126
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_37

    .line 1139
    :cond_28
    :goto_1b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-nez v0, :cond_38

    .line 1147
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_39

    .line 1148
    :goto_1c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-eqz v0, :cond_3a

    .line 1152
    :goto_1d
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1153
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1154
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3b

    .line 1158
    if-nez p5, :cond_3

    .line 1159
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-eqz v0, :cond_3c

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1163
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1165
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_3

    .line 1067
    :pswitch_5
    const/4 v0, 0x5

    if-lt p2, v0, :cond_2b

    .line 1073
    :goto_1e
    :pswitch_6
    const/4 v0, 0x4

    if-lt p2, v0, :cond_2d

    .line 1078
    :goto_1f
    :pswitch_7
    const/4 v0, 0x3

    if-lt p2, v0, :cond_2f

    .line 1083
    :goto_20
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_27

    .line 1084
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_31

    .line 1085
    :goto_21
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_32

    .line 1092
    :cond_29
    :goto_22
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1093
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_33

    .line 1120
    :cond_2a
    :goto_23
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1122
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_1a

    .line 1068
    :cond_2b
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_2c

    .line 1069
    :goto_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    goto :goto_1e

    .line 1068
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1074
    :cond_2d
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_2e

    .line 1075
    :goto_25
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    goto :goto_1f

    .line 1074
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1079
    :cond_2f
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_30

    .line 1080
    :goto_26
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    goto :goto_20

    .line 1079
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom STOPPED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1084
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1088
    :cond_32
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_29

    .line 1089
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_22

    .line 1093
    :cond_33
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2a

    .line 1094
    const/4 v6, 0x0

    .line 1095
    .restart local v6    # "anim":Landroid/view/animation/Animation;
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-gtz v0, :cond_35

    .line 1099
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_34
    :goto_27
    if-nez v6, :cond_36

    .line 1118
    :goto_28
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_23

    .line 1095
    .restart local v6    # "anim":Landroid/view/animation/Animation;
    :cond_35
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_34

    .line 1096
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_27

    .line 1100
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_36
    move-object v8, p1

    .line 1101
    .local v8, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1102
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1103
    iget-object v10, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1104
    .local v10, "viewToAnimate":Landroid/view/View;
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$5;

    invoke-direct {v0, p0, v10, v6, p1}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1116
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_28

    .line 1127
    .end local v8    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v10    # "viewToAnimate":Landroid/view/View;
    :cond_37
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 1134
    iget-object v9, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1135
    .local v9, "v":Landroid/view/View;
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1136
    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_1b

    .line 1144
    .end local v9    # "v":Landroid/view/View;
    :cond_38
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1145
    const/4 p2, 0x1

    goto/16 :goto_3

    .line 1147
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1149
    :cond_3a
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    goto/16 :goto_1d

    .line 1155
    :cond_3b
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_3c
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_3

    .line 943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1065
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 1983
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1984
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2186
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2190
    const-string/jumbo v0, "class"

    invoke-interface {p4, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2191
    .local v8, "fname":Ljava/lang/String;
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2192
    .local v6, "a":Landroid/content/res/TypedArray;
    if-eqz v8, :cond_5

    .line 2195
    :goto_0
    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 2196
    .local v9, "id":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2197
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2199
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2205
    if-nez p1, :cond_7

    move v7, v3

    .line 2206
    .local v7, "containerId":I
    :goto_1
    if-eq v7, v4, :cond_8

    .line 2214
    :cond_0
    if-ne v9, v4, :cond_9

    .line 2215
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    :goto_2
    if-eqz v1, :cond_a

    .line 2218
    :cond_1
    :goto_3
    if-eqz v1, :cond_b

    .line 2222
    :cond_2
    :goto_4
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_c

    .line 2225
    :goto_5
    if-eqz v1, :cond_d

    .line 2236
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_f

    .line 2246
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2250
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-eqz v0, :cond_10

    .line 2257
    :goto_6
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, v2, :cond_11

    .line 2260
    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    .line 2263
    :goto_7
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 2267
    if-nez v9, :cond_13

    .line 2270
    :goto_8
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2273
    :goto_9
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    .line 2187
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "containerId":I
    .end local v8    # "fname":Ljava/lang/String;
    .end local v9    # "id":I
    .end local v10    # "tag":Ljava/lang/String;
    :cond_4
    return-object v1

    .line 2193
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    .restart local v8    # "fname":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 2202
    .restart local v9    # "id":I
    .restart local v10    # "tag":Ljava/lang/String;
    :cond_6
    return-object v1

    .line 2205
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    goto :goto_1

    .line 2206
    .restart local v7    # "containerId":I
    :cond_8
    if-ne v9, v4, :cond_0

    if-nez v10, :cond_0

    .line 2207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2214
    :cond_9
    invoke-virtual {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_2

    .line 2215
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_a
    if-eqz v10, :cond_1

    .line 2216
    invoke-virtual {p0, v10}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_3

    .line 2218
    :cond_b
    if-eq v7, v4, :cond_2

    .line 2219
    invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_4

    .line 2222
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateView: id=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " fname="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " existing="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2226
    :cond_d
    invoke-static {p3, v8}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2227
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 2228
    if-nez v9, :cond_e

    move v0, v7

    :goto_a
    iput v0, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 2229
    iput v7, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2230
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 2231
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2232
    iput-object p0, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2233
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2234
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_6

    :cond_e
    move v0, v9

    .line 2228
    goto :goto_a

    .line 2239
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2251
    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 2257
    :cond_11
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2258
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto/16 :goto_7

    .line 2264
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " did not create a view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2268
    :cond_13
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    goto/16 :goto_8

    .line 2271
    :cond_14
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 886
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-nez v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_1

    .line 892
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 893
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_0

    .line 889
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 890
    return-void
.end method

.method public popBackStack()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 547
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 574
    if-ltz p1, :cond_0

    .line 577
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 582
    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 558
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 563
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .prologue
    .line 551
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 552
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 553
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 586
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 587
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 588
    if-ltz p1, :cond_0

    .line 591
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 567
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 568
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 569
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 11
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1605
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    .line 1608
    if-eqz p2, :cond_5

    .line 1620
    :cond_0
    const/4 v4, -0x1

    .line 1621
    .local v4, "index":I
    if-eqz p2, :cond_7

    .line 1624
    :cond_1
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 1625
    :goto_0
    if-gez v4, :cond_8

    .line 1635
    :cond_2
    if-ltz v4, :cond_b

    .line 1638
    and-int/lit8 v9, p4, 0x1

    if-nez v9, :cond_c

    .line 1652
    :cond_3
    :goto_1
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v4, v9, :cond_f

    .line 1655
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    .local v8, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_2
    if-gt v3, v4, :cond_10

    .line 1660
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 1661
    .local v0, "LAST":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1662
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1663
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    const/4 v3, 0x0

    :goto_3
    if-le v3, v0, :cond_11

    .line 1666
    const/4 v7, 0x0

    .line 1667
    .local v7, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    const/4 v3, 0x0

    .end local v7    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :goto_4
    if-le v3, v0, :cond_12

    .line 1672
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1674
    .end local v0    # "LAST":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v8    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    :goto_5
    const/4 v9, 0x1

    return v9

    .line 1606
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    :cond_4
    const/4 v9, 0x0

    return v9

    .line 1608
    :cond_5
    if-gez p3, :cond_0

    and-int/lit8 v9, p4, 0x1

    if-nez v9, :cond_0

    .line 1609
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 1610
    .local v5, "last":I
    if-ltz v5, :cond_6

    .line 1613
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1614
    .local v1, "bss":Landroid/support/v4/app/BackStackRecord;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1615
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1616
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {v1, v2, v6}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1617
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v2, v6}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    .line 1618
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto :goto_5

    .line 1611
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    :cond_6
    const/4 v9, 0x0

    return v9

    .line 1621
    .end local v5    # "last":I
    .restart local v4    # "index":I
    :cond_7
    if-gez p3, :cond_1

    goto :goto_1

    .line 1626
    :cond_8
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1627
    .restart local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    if-nez p2, :cond_9

    .line 1630
    :goto_6
    if-gez p3, :cond_a

    .line 1633
    :goto_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1627
    :cond_9
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_6

    .line 1630
    :cond_a
    iget v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-eq p3, v9, :cond_2

    goto :goto_7

    .line 1636
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_b
    const/4 v9, 0x0

    return v9

    .line 1639
    :cond_c
    add-int/lit8 v4, v4, -0x1

    .line 1641
    :goto_8
    if-ltz v4, :cond_3

    .line 1642
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1643
    .restart local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    if-nez p2, :cond_e

    :cond_d
    if-ltz p3, :cond_3

    iget v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p3, v9, :cond_3

    .line 1645
    :goto_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 1643
    :cond_e
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_9

    .line 1653
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_f
    const/4 v9, 0x0

    return v9

    .line 1658
    .restart local v3    # "i":I
    .restart local v8    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    :cond_10
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1664
    .restart local v0    # "LAST":I
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    :cond_11
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v9, v2, v6}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1663
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1668
    :cond_12
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v9, :cond_13

    .line 1669
    :goto_a
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    if-eq v3, v0, :cond_14

    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v9, v10, v7, v2, v6}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v7

    .line 1667
    .restart local v7    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 1668
    .end local v7    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Popping back stack state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FragmentManager"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1669
    :cond_14
    const/4 v10, 0x1

    goto :goto_b
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 621
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 625
    :goto_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    return-void

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1285
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v1, :cond_2

    .line 1286
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_3

    move v6, v5

    .line 1287
    .local v6, "inactive":Z
    :goto_1
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v1, :cond_4

    .line 1288
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    .line 1291
    :goto_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-nez v1, :cond_6

    .line 1294
    :cond_1
    :goto_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1295
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1296
    if-nez v6, :cond_7

    move v2, v0

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1299
    :goto_5
    return-void

    .line 1285
    .end local v6    # "inactive":Z
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v6, v0

    .line 1286
    goto :goto_1

    .line 1287
    .restart local v6    # "inactive":Z
    :cond_4
    if-nez v6, :cond_0

    goto :goto_5

    .line 1289
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1291
    :cond_6
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_1

    .line 1292
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_3

    :cond_7
    move v2, v5

    .line 1296
    goto :goto_4
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 1588
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1593
    :cond_0
    return-void

    .line 1589
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1590
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "nonConfig":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1864
    if-eqz p1, :cond_4

    move-object v2, p1

    .line 1865
    check-cast v2, Landroid/support/v4/app/FragmentManagerState;

    .line 1866
    .local v2, "fms":Landroid/support/v4/app/FragmentManagerState;
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-eqz v7, :cond_5

    .line 1870
    if-nez p2, :cond_6

    .line 1892
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1893
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v7, :cond_9

    .line 1896
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v7, v7

    if-lt v4, v7, :cond_a

    .line 1917
    if-nez p2, :cond_f

    .line 1933
    :cond_1
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-nez v7, :cond_12

    .line 1949
    iput-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1953
    :cond_2
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-nez v7, :cond_16

    .line 1970
    iput-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1972
    :cond_3
    return-void

    .line 1864
    .end local v2    # "fms":Landroid/support/v4/app/FragmentManagerState;
    .end local v4    # "i":I
    :cond_4
    return-void

    .line 1866
    .restart local v2    # "fms":Landroid/support/v4/app/FragmentManagerState;
    :cond_5
    return-void

    .line 1871
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 1872
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1873
    .local v1, "f":Landroid/support/v4/app/Fragment;
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v7, :cond_7

    .line 1874
    :goto_3
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    iget v8, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v3, v7, v8

    .line 1875
    .local v3, "fs":Landroid/support/v4/app/FragmentState;
    iput-object v1, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1876
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1877
    iput v11, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1878
    iput-boolean v11, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1879
    iput-boolean v11, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1880
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1881
    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_8

    .line 1871
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1873
    .end local v3    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: re-attaching retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1882
    .restart local v3    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_8
    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1883
    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v8, "android:view_state"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1885
    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v7, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_4

    .line 1894
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v4    # "i":I
    :cond_9
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1897
    .restart local v4    # "i":I
    :cond_a
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v3, v7, v4

    .line 1898
    .restart local v3    # "fs":Landroid/support/v4/app/FragmentState;
    if-nez v3, :cond_b

    .line 1907
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v7, :cond_d

    .line 1911
    :goto_5
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v7, :cond_e

    .line 1912
    :goto_6
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1899
    :cond_b
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1900
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v7, :cond_c

    .line 1901
    :goto_8
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    iput-object v10, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    goto :goto_7

    .line 1900
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: active #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1909
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    goto :goto_5

    .line 1911
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: avail #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1918
    .end local v3    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_f
    const/4 v4, 0x0

    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 1919
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1920
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    iget v7, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-gez v7, :cond_10

    .line 1918
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1921
    :cond_10
    iget v7, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_11

    .line 1924
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Re-attaching retained fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " target no longer exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_a

    .line 1922
    :cond_11
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v8, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    iput-object v7, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_a

    .line 1934
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1935
    const/4 v4, 0x0

    :goto_b
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 1936
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1937
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_13

    .line 1941
    :goto_c
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1942
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v7, :cond_14

    .line 1943
    :goto_d
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 1946
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1938
    :cond_13
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No instantiated fragment for index #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_c

    .line 1942
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: added #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1944
    :cond_15
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Already added!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1954
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_16
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1955
    const/4 v4, 0x0

    :goto_e
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v7, v7

    if-ge v4, v7, :cond_3

    .line 1956
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    aget-object v7, v7, v4

    invoke-virtual {v7, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v0

    .line 1957
    .local v0, "bse":Landroid/support/v4/app/BackStackRecord;
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v7, :cond_17

    .line 1964
    :goto_f
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    iget v7, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v7, :cond_18

    .line 1955
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1958
    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    new-instance v5, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v7, "FragmentManager"

    invoke-direct {v5, v7}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 1961
    .local v5, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1962
    .local v6, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v7, "  "

    invoke-virtual {v0, v7, v6, v11}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_f

    .line 1966
    .end local v5    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_18
    iget v7, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v7, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    goto :goto_10
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1678
    const/4 v1, 0x0

    .line 1679
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1693
    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    return-object v1

    .line 1680
    .restart local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_1
    const/4 v2, 0x0

    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1681
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1682
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_3

    .line 1680
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1682
    :cond_3
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_2

    .line 1683
    if-eqz v1, :cond_4

    .line 1686
    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1688
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_5

    const/4 v3, -0x1

    :goto_3
    iput v3, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 1689
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retainNonConfig: keeping retained "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1684
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    goto :goto_2

    .line 1688
    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_5
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    goto :goto_3
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1748
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1750
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    if-nez v9, :cond_1

    .line 1763
    :goto_0
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v9, :cond_2

    .line 1764
    :cond_0
    return-object v12

    .line 1760
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    goto :goto_0

    .line 1763
    :cond_2
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1768
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1769
    .local v0, "N":I
    new-array v1, v0, [Landroid/support/v4/app/FragmentState;

    .line 1770
    .local v1, "active":[Landroid/support/v4/app/FragmentState;
    const/4 v7, 0x0

    .line 1771
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v0, :cond_5

    .line 1815
    if-eqz v7, :cond_e

    .line 1820
    const/4 v2, 0x0

    .line 1821
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 1824
    .local v3, "backStack":[Landroid/support/v4/app/BackStackState;
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v9, :cond_10

    .line 1842
    .end local v2    # "added":[I
    :cond_3
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v9, :cond_13

    .line 1854
    .end local v3    # "backStack":[Landroid/support/v4/app/BackStackState;
    :cond_4
    new-instance v5, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1855
    .local v5, "fms":Landroid/support/v4/app/FragmentManagerState;
    iput-object v1, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 1856
    iput-object v2, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 1857
    iput-object v3, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    .line 1858
    return-object v5

    .line 1772
    .end local v5    # "fms":Landroid/support/v4/app/FragmentManagerState;
    :cond_5
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1773
    .local v4, "f":Landroid/support/v4/app/Fragment;
    if-nez v4, :cond_7

    .line 1771
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1774
    :cond_7
    iget v9, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v9, :cond_a

    .line 1780
    :goto_3
    const/4 v7, 0x1

    .line 1782
    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1783
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    aput-object v6, v1, v8

    .line 1785
    iget v9, v4, Landroid/support/v4/app/Fragment;->mState:I

    if-gtz v9, :cond_b

    .line 1807
    :cond_8
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1810
    :cond_9
    :goto_4
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FragmentManager"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1775
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_a
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_3

    .line 1785
    .restart local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_b
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_8

    .line 1786
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1788
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_9

    .line 1789
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v9, :cond_c

    .line 1794
    :goto_5
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v9, :cond_d

    .line 1797
    :goto_6
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v10, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    const-string/jumbo v11, "android:target_state"

    invoke-virtual {p0, v9, v11, v10}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1799
    iget v9, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v9, :cond_9

    .line 1800
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget v10, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    const-string/jumbo v11, "android:target_req_state"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1790
    :cond_c
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_5

    .line 1795
    :cond_d
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_6

    .line 1816
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_e
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v9, :cond_f

    .line 1817
    :goto_7
    return-object v12

    .line 1816
    :cond_f
    const-string/jumbo v9, "FragmentManager"

    const-string/jumbo v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1825
    .restart local v2    # "added":[I
    .restart local v3    # "backStack":[Landroid/support/v4/app/BackStackState;
    :cond_10
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1826
    if-lez v0, :cond_3

    .line 1827
    new-array v2, v0, [I

    .line 1828
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v0, :cond_3

    .line 1829
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v9, v2, v8

    .line 1830
    aget v9, v2, v8

    if-ltz v9, :cond_11

    .line 1835
    :goto_9
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v9, :cond_12

    .line 1828
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1831
    :cond_11
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_9

    .line 1835
    :cond_12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveAllState: adding fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FragmentManager"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1843
    .end local v2    # "added":[I
    :cond_13
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1844
    if-lez v0, :cond_4

    .line 1845
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    .line 1846
    const/4 v8, 0x0

    :goto_b
    if-ge v8, v0, :cond_4

    .line 1847
    new-instance v10, Landroid/support/v4/app/BackStackState;

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v10, v9}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v10, v3, v8

    .line 1848
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v9, :cond_14

    .line 1846
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 1848
    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveAllState: adding back stack #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FragmentManager"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v2, 0x0

    .line 1713
    const/4 v0, 0x0

    .line 1715
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1718
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1719
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1724
    .end local v0    # "result":Landroid/os/Bundle;
    :goto_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1727
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    .line 1734
    :goto_3
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-eqz v1, :cond_5

    .line 1742
    :goto_4
    return-object v0

    .line 1716
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 1720
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1721
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    goto :goto_1

    .line 1725
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    .line 1728
    :cond_3
    if-eqz v0, :cond_4

    .line 1731
    :goto_5
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string/jumbo v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_3

    .line 1729
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "result":Landroid/os/Bundle;
    goto :goto_5

    .line 1735
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_5
    if-eqz v0, :cond_6

    .line 1739
    :goto_6
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    const-string/jumbo v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1736
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "result":Landroid/os/Bundle;
    goto :goto_6
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 653
    iget v2, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 657
    :goto_0
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-gtz v2, :cond_1

    .line 661
    return-object v1

    .line 654
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not currently in the FragmentManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 658
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 659
    .local v0, "result":Landroid/os/Bundle;
    if-nez v0, :cond_2

    :goto_1
    return-object v1

    :cond_2
    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v2, 0x0

    .line 1697
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1705
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1706
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1710
    :goto_1
    return-void

    .line 1698
    :cond_0
    return-void

    .line 1701
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 1707
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1708
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_1
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 1496
    move-object v0, p0

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter p0

    .line 1497
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1500
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1501
    .local v2, "N":I
    if-lt p1, v2, :cond_1

    .line 1505
    :goto_1
    if-lt v2, p1, :cond_3

    .line 1514
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_6

    .line 1515
    :goto_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    :goto_3
    monitor-exit p0

    .line 1518
    return-void

    .line 1498
    .end local v2    # "N":I
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    goto :goto_0

    .line 1517
    :catchall_0
    move-exception v1

    .local v1, "-l_5_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1502
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .restart local v2    # "N":I
    :cond_1
    :try_start_1
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_2

    .line 1503
    :goto_4
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1502
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1506
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1510
    :goto_5
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_5

    .line 1511
    :goto_6
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1508
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    goto :goto_5

    .line 1510
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding available back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1514
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1322
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v1, :cond_0

    .line 1323
    :goto_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 1339
    :goto_1
    return-void

    .line 1322
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1324
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1325
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 1334
    :goto_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v1, :cond_5

    .line 1337
    :cond_2
    :goto_3
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    goto :goto_1

    .line 1326
    :cond_3
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1328
    .local v0, "anim":Landroid/view/animation/Animation;
    if-nez v0, :cond_4

    .line 1332
    :goto_4
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1329
    :cond_4
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1330
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 1334
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_5
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1335
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_3
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1218
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1226
    return-void

    .line 1218
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1221
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1222
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 1220
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1223
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 672
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_0

    .line 678
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 680
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 676
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
