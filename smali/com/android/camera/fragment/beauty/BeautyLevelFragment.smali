.class public Lcom/android/camera/fragment/beauty/BeautyLevelFragment;
.super Landroid/support/v4/app/Fragment;
.source "BeautyLevelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;
    }
.end annotation


# instance fields
.field private mLevelItemList:Landroid/support/v7/widget/RecyclerView;

.field private mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0a0033

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    iput-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;-><init>(Lcom/android/camera/fragment/beauty/BeautyLevelFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$MyLayoutManager;->setOrientation(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initItems()Ljava/util/List;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->provideItemHorizontalMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900b0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v7, v0, 0x2

    add-int v1, v6, v7

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    new-instance v6, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v2, v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    iget-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/BeautyParameters;->getCurrentLevel()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->beautyLevelToPosition(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {v6, v5}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->setSelectedPosition(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v6, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {v6}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected beautyLevelToPosition(II)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    return v0
.end method

.method protected initItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v2, 0x7f020056

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v2, 0x7f020050

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v2, 0x7f020051

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v2, 0x7f020052

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v2, 0x7f020053

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v2, 0x7f020054

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BeautyLevelFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method protected provideItemHorizontalMargin()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected setBeautyLevel(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    if-lez p1, :cond_1

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;->refreshBottomBeauty(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/effect/BeautyParameters;->setLevel(I)V

    return-void

    :cond_1
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;->refreshBottomBeauty(Z)V

    goto :goto_0
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->setEnableClick(Z)V

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->setEnableClick(Z)V

    goto :goto_0
.end method
