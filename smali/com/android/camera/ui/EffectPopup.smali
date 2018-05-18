.class public Lcom/android/camera/ui/EffectPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "EffectPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/EffectPopup$1;,
        Lcom/android/camera/ui/EffectPopup$EffectDivider;,
        Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;,
        Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;,
        Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;,
        Lcom/android/camera/ui/EffectPopup$EffectItemHolder;,
        Lcom/android/camera/ui/EffectPopup$EffectItemPadding;,
        Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;,
        Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentIndex:I

.field private mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

.field private mEffectItemHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/EffectPopup$EffectItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHolderHeight:I

.field private mHolderWidth:I

.field protected mIgnoreSameItemClick:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

.field private mTextView:Landroid/widget/TextView;

.field private mTextureHeight:I

.field private mTextureOffsetX:I

.field private mTextureOffsetY:I

.field private mTextureWidth:I

.field private mToastAnim:Landroid/view/animation/Animation;

.field private mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTotalWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/EffectPopup;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/EffectPopup;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "EffectPopup"

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/ui/EffectPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/EffectPopup$1;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectPopup;->mIgnoreSameItemClick:Z

    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v6}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "text"

    aget-object v7, v3, v4

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v6, Landroid/support/v7/widget/RecyclerView;

    const-string/jumbo v7, "mRecycler"

    const-class v8, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v6, v7, v8}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v7}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mTotalWidth:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09005b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    const v6, 0x7f050009

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v6, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/camera/effect/EffectController;->getEffectCount(I)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;

    invoke-direct {v7, p0}, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/android/camera/ui/EffectPopup$EffectDivider;

    sget v8, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    invoke-direct {v7, p0, v8}, Lcom/android/camera/ui/EffectPopup$EffectDivider;-><init>(Lcom/android/camera/ui/EffectPopup;I)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v6, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "EffectPopup"

    const-string/jumbo v7, "no mRecycler field "

    invoke-static {v6, v7, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-ne v4, v1, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/ui/EffectPopup;->mIgnoreSameItemClick:Z

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget v4, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-ne v4, v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput v1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->select(I)V

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    const-string/jumbo v4, "pref_camera_scenemode_key"

    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa6

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v4, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-interface {v2, v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible(I)V

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/EffectPopup;->notifyToDispatcher(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "pref_audio_focus_key"

    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/module/BaseModule;->isModuleRecording(Lcom/android/camera/module/Module;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "camcorder_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public reloadPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isNeedForceRecycleEffectPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->setItemInCenter(I)V

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget v1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->select(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "EffectPopup"

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setItemInCenter(I)V
    .locals 3

    iget v1, p0, Lcom/android/camera/ui/EffectPopup;->mTotalWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public show(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    const-string/jumbo v0, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    :cond_0
    return-void
.end method

.method public startEffectRender()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    mul-int/2addr v5, v3

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    mul-int/2addr v6, v4

    if-le v5, v6, :cond_0

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    mul-int/2addr v5, v3

    div-int/2addr v5, v4

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->start()V

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    mul-int/2addr v5, v4

    div-int/2addr v5, v3

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopEffectRender()V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateBackground()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa6

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isPreviewFullScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v4, 0x7f0d000e

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->updateBackground()V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v4, 0x7f0d000d

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
