.class public Lcom/android/camera/fragment/manually/FragmentManually;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentManually.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mCurrentAdjustType:I

.field private mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

.field private mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

.field private mIndicatorButton:Landroid/widget/ImageView;

.field private mIsHiding:Z

.field private mManuallyComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation
.end field

.field private mManuallyParent:Landroid/view/ViewGroup;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewLayout:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/manually/FragmentManually;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsHiding:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    return-void
.end method

.method private adjustViewBackground(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0d000b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0d000c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    return-object v0

    :cond_0
    return-object v1
.end method

.method private hideTips()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_0
    return-void
.end method

.method private initManually()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/manually/ManuallyDecoration;->setStyle(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;-><init>(ILandroid/view/View$OnClickListener;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateData()V

    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    :cond_0
    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method private initManuallyDataList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunctionFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunctionET()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualLensMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0

    :pswitch_0
    iput v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return v2

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManually()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->initScene(Lcom/android/camera/fragment/manually/ManuallyListener;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->initTilt(Lcom/android/camera/fragment/manually/ManuallyListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initScene(Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v1

    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    iget v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x40b00000    # 5.5f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method private initTilt(Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/manually/ManuallyDecoration;->setStyle(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;

    iget v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method private reInitManuallyLayout(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setManuallyLayoutViewVisible(I)V
    .locals 4

    const/16 v3, 0x50

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0xfe

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v3}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v3}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {v0, v3}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf7

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f040013

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v2, 0x7f0a0053

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0054

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a0057

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/android/camera/fragment/manually/ManuallyDecoration;-><init>(II)V

    iput-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/manually/FragmentManually;->adjustViewBackground(I)V

    iget v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/fragment/manually/FragmentManually;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    iget v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->adjustViewBackground(I)V

    iget v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v4, v1, v3}, Lcom/android/camera/fragment/manually/FragmentManually;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->notifyDataChanged(II)V

    :cond_2
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsHiding:Z

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iput-boolean v5, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsHiding:Z

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/manually/FragmentManually$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/manually/FragmentManually$1;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return v5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const-wide/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideTips()V

    new-instance v2, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-direct {v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget-object v4, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v4}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a0055

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/manually/FragmentManually$2;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/manually/FragmentManually$2;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/16 v3, 0xfe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    invoke-virtual {p0, v0, v4, v4, v7}, Lcom/android/camera/fragment/manually/FragmentManually;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateOut()V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideTips()V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v2, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0053
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0f0227
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xae

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :sswitch_0
    const-string/jumbo v2, "manual"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;)V

    :cond_2
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-interface {v1, p1, p3, p4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_1
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-interface {v1, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-interface {v1, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    iget v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentMode:I

    invoke-interface {v1, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/android/camera/fragment/manually/FragmentManually$3;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/manually/FragmentManually$3;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0f0069 -> :sswitch_0
        0x7f0f00d6 -> :sswitch_3
        0x7f0f0170 -> :sswitch_2
        0x7f0f01cf -> :sswitch_1
        0x7f0f0227 -> :sswitch_4
    .end sparse-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->reInitManuallyLayout(ILjava/util/List;)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_0
    .end packed-switch
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb5

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I
    .locals 3

    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->setManuallyLayoutViewVisible(I)V

    return v0
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v1, 0xb5

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public visibleHeight()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
