.class public Lcom/android/camera/fragment/top/FragmentTopConfig;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;
.implements Lcom/android/camera/protocol/ModeProtocol$TopAlert;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

.field private mBeforeMode:I

.field private mConfigViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledFunctionMenu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayRectTopMargin:I

.field private mExpandView:Landroid/support/v7/widget/RecyclerView;

.field private mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field private mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

.field private mIsRTL:Z

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTopConfigMenu:Landroid/view/View;

.field private mTopExtraParent:Landroid/view/ViewGroup;

.field private mTotalWidth:I

.field private mViewPadding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    return-void
.end method

.method private expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v15, 0x1

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    move-result v14

    if-eqz v14, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/camera/fragment/top/ExpandAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/android/camera/fragment/top/ExpandAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09002f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    mul-int v6, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iput v6, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090043

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v3, v5, 0x3

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImagePosition(I)I

    move-result v7

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-nez v7, :cond_4

    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v14, :cond_1

    rsub-int/lit8 v9, v9, 0x4

    :cond_1
    packed-switch v9, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    iput-object v15, v14, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    iput v15, v14, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iput v8, v14, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    const/4 v12, -0x1

    const/16 v14, 0xc1

    move/from16 v0, p3

    if-ne v0, v14, :cond_8

    const/4 v12, 0x1

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    move/from16 v0, p3

    invoke-virtual {v14, v0, v15, v12}, Lcom/android/camera/fragment/top/LastAnimationComponent;->hideOtherViews(ILjava/util/List;I)V

    if-eq v7, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    move-object/from16 v0, p2

    iput-object v0, v14, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    invoke-static/range {p2 .. p2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v13, v15

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    sget-object v15, Lcom/android/camera/fragment/top/LastAnimationComponent;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int v4, v14, v6

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    sub-int v15, v8, v4

    int-to-float v15, v15

    invoke-static {v14, v15}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    sub-int v15, v11, v4

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    sget-object v15, Lcom/android/camera/fragment/top/LastAnimationComponent;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void

    :cond_4
    const/4 v14, 0x6

    if-ne v7, v14, :cond_5

    const/4 v10, 0x6

    const/4 v9, 0x4

    goto/16 :goto_0

    :cond_5
    const/4 v14, 0x4

    if-eq v7, v14, :cond_6

    const/4 v14, 0x5

    if-ne v7, v14, :cond_7

    :cond_6
    const/4 v10, 0x3

    const/4 v9, 0x2

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :pswitch_0
    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    sub-int v8, v14, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/lit8 v11, v14, 0x0

    goto/16 :goto_1

    :pswitch_1
    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    add-int v8, v14, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/lit8 v11, v14, 0x0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int v13, v14, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v6

    sub-int v8, v14, v3

    sub-int v11, v13, v6

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int v13, v14, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v6

    sub-int v8, v14, v3

    sub-int v11, v13, v6

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int v13, v14, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v6

    add-int v8, v14, v3

    sub-int v11, v13, v6

    goto/16 :goto_1

    :cond_8
    const/16 v14, 0xc2

    move/from16 v0, p3

    if-ne v0, v14, :cond_2

    const/4 v12, 0x2

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAlertTopMargin()I
    .locals 5

    const v4, 0x7f090043

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v0

    const/high16 v3, 0x3f400000    # 0.75f

    div-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    sub-int v1, v2, v3

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getFocusPeakImageResource()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_peak_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const v1, 0x7f020084

    return v1

    :cond_0
    const v1, 0x7f020087

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const v1, 0x7f020086

    return v1

    :cond_2
    const v1, 0x7f020085

    return v1
.end method

.method private getInitialMargin(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x3

    return v0

    :pswitch_2
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_3
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_4
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0xf5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    return-object v0
.end method

.method private reConfigTipImage()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v6, v6, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    return-void

    :cond_0
    const-string/jumbo v5, "torch"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v6, v7, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "normal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, v6, v6, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    return-void

    :cond_3
    const-string/jumbo v5, "live"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v6, v7, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    return-void

    :cond_4
    return-void
.end method

.method private resetImages()V
    .locals 7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v1

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z
    .locals 21

    const/4 v15, 0x0

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    if-lez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getInitialMargin(I)I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v13, v18

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_1
    :goto_1
    if-nez p2, :cond_f

    const-string/jumbo v18, "FragmentTopConfig"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "newMode = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", newType = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const/16 v18, 0x1

    return v18

    :sswitch_0
    const/16 v18, 0x0

    return v18

    :sswitch_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v15

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v7

    if-nez p6, :cond_0

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v18, "torch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v15

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v7

    if-nez p6, :cond_0

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string/jumbo v18, "normal"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v18, "live"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto/16 :goto_0

    :sswitch_3
    if-eqz p6, :cond_9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v18

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/backup/DataBackUp;->getBackupFilter(II)Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget v18, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    move/from16 v0, v18

    if-eq v8, v0, :cond_8

    if-gtz v8, :cond_a

    :cond_8
    const v15, 0x7f02009e

    :goto_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v18

    const/16 v19, 0xa2

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v16

    check-cast v16, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v18

    if-eqz v18, :cond_b

    const v7, 0x7f0f011d

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_a
    const v15, 0x7f0200a0

    goto :goto_4

    :cond_b
    const v7, 0x7f0f011c

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "on"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const v15, 0x7f020112

    :goto_5
    const-string/jumbo v18, "on"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const v7, 0x7f0f011f

    goto/16 :goto_0

    :cond_c
    const v15, 0x7f020111

    goto :goto_5

    :cond_d
    const v7, 0x7f0f011e

    goto/16 :goto_0

    :sswitch_5
    const v15, 0x7f020104

    const v7, 0x7f0f0120

    goto/16 :goto_0

    :sswitch_6
    const v15, 0x7f020093

    const v7, 0x7f0f0121

    goto/16 :goto_0

    :sswitch_7
    const v15, 0x7f020111

    const v7, 0x7f0f0122

    goto/16 :goto_0

    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFocusPeakImageResource()I

    move-result v15

    const v7, 0x7f0f0123

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v13, v18

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_10

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto/16 :goto_2

    :cond_10
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_3
        0xc5 -> :sswitch_5
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_8
        0xc8 -> :sswitch_4
        0xe1 -> :sswitch_6
    .end sparse-switch
.end method

.method private showMenu()V
    .locals 6

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    :cond_0
    new-instance v2, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-direct {v2}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDegree:I

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->setDegree(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v4}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a0078

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method private trackBokehChanged(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "BOKEH"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "bokeh_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackFlashChanged(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "\u95ea\u5149\u706f"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "flash_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackHdrChanged(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "HDR"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "hdr_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public alertFlash(IZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    const/16 v1, 0xc1

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFlash(IIZ)V

    return-void
.end method

.method public alertHDR(IZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    const/16 v1, 0xc2

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertHDR(IIZ)V

    return-void
.end method

.method public alertUpdateValue(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertUpdateValue(II)V

    return-void
.end method

.method public varargs disableMenuItem([I)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs enableMenuItem([I)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_1
    return-void

    :cond_2
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p1, v1

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf4

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f040020

    return v0
.end method

.method public getTopImage(I)Landroid/widget/ImageView;
    .locals 4

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getTopImagePosition(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hideConfigMenu()V
    .locals 2

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    new-instance v8, Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-direct {v8}, Lcom/android/camera/fragment/top/LastAnimationComponent;-><init>()V

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    const v8, 0x7f0a0078

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraParent:Landroid/view/ViewGroup;

    const v8, 0x7f0a006f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0070

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0071

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0072

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0073

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0075

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0076

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v8, 0x7f0a0077

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    iget v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {v8}, Lcom/android/camera/fragment/top/FragmentTopAlert;-><init>()V

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget-object v10, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v10}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getFragmentTag()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0a0079

    invoke-static {v8, v11, v9, v10}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public insertConfigItem(I)V
    .locals 10

    const/16 v9, 0xc4

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v7, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->hasConfig(I)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v2, v7, v8

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetImages()V

    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    sub-int v0, v1, v2

    iget-boolean v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v7, :cond_1

    neg-int v0, v0

    :cond_1
    new-instance v7, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {v7, v6, v0}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v7

    new-instance v8, Lcom/android/camera/fragment/top/FragmentTopConfig$1;

    invoke-direct {v8, p0, v6, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig$1;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v4

    new-instance v7, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v7, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v7

    invoke-virtual {v7}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    :try_start_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa4

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMutexConfigs()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "FragmentTopConfig"

    const-string/jumbo v3, "Unexpected exceptions "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyDataChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 9

    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    if-eq p1, v8, :cond_0

    move v3, v4

    :goto_0
    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->animateOut()V

    new-instance v3, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v3, v5}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v5, 0xc8

    invoke-virtual {v3, v5}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-virtual {v3}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_2
    if-eq p1, v8, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipImage()V

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertUpdateValue(I)V

    :cond_2
    return v4

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/16 v6, 0xf5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/16 v10, 0xc4

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isEnableClick()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string/jumbo v6, "FragmentTopConfig"

    const-string/jumbo v7, "onClick: ignore click event, because module isn\'t ready"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xa4

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xa1

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-void

    :cond_5
    sparse-switch v5, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v6

    invoke-direct {p0, v6, p1, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    invoke-direct {p0, v6, p1, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_0

    :sswitch_2
    invoke-interface {v1, v10}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    new-array v6, v9, [I

    aput v10, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showMenu()V

    goto :goto_0

    :sswitch_4
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showSetting()V

    goto :goto_0

    :sswitch_5
    const/16 v6, 0xc3

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    :sswitch_6
    const/16 v6, 0xc7

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFocusPeakImageResource()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-direct {p0, v6, v4}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackBokehChanged(ILjava/lang/String;)V

    new-array v6, v9, [I

    const/16 v7, 0xc8

    aput v7, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    iget v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v2, v6, v4}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfBokehChanged(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-array v6, v9, [I

    const/16 v7, 0xc2

    aput v7, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_6
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configBokeh(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_3
        0xc7 -> :sswitch_6
        0xc8 -> :sswitch_7
        0xe1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0xc1

    const/16 v6, 0xc2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa4

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v3, -0x1

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    return-void

    :sswitch_0
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-direct {p0, v2, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackFlashChanged(ILjava/lang/String;)V

    new-array v2, v5, [I

    aput v7, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfFlashChanged(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v5, [I

    aput v6, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_1
    invoke-interface {v0, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFlash(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-direct {p0, v2, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackHdrChanged(ILjava/lang/String;)V

    new-array v2, v5, [I

    aput v6, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v5, [I

    aput v7, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_2
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigBokehIfHdrChanged(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v5, [I

    const/16 v3, 0xc8

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/16 v3, 0xa5

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_5

    :cond_4
    const-string/jumbo v2, "off"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->updateComponentBeauty(Z)V

    :cond_5
    :goto_1
    invoke-interface {v0, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configHdr(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v2

    if-ne v2, v6, :cond_7

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    :cond_7
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->updateComponentBeauty(Z)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f0f0060 -> :sswitch_0
        0x7f0f016a -> :sswitch_1
    .end sparse-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    :cond_0
    iget v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 v10, 0x1

    sparse-switch v9, :sswitch_data_0

    :goto_0
    if-eqz v10, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideAnimateElement(ILjava/util/List;)V

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v1

    if-eqz p2, :cond_3

    const/4 v6, 0x1

    :goto_2
    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    move-result v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v1, :cond_4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez p2, :cond_6

    if-eqz v8, :cond_5

    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    new-instance v7, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v7, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v0, 0x96

    invoke-virtual {v7, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    const/16 v3, 0x96

    invoke-virtual {v0, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/16 v0, 0xa5

    if-eq v9, v0, :cond_8

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/16 v3, 0xa5

    if-ne v0, v3, :cond_9

    :cond_8
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v3, 0x96

    invoke-virtual {v0, v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa2 -> :sswitch_1
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_1
    .end sparse-switch
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->provideRotateItem(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public refreshExtraMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->reFresh()V

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const-string/jumbo v0, "FragmentTopConfig"

    const-string/jumbo v1, "register-->attachProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xac

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public removeConfigItem(I)V
    .locals 9

    const/16 v8, 0xc4

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v7, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->hasConfig(I)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetImages()V

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v2, v7, v8

    :goto_0
    sub-int v1, v2, v3

    iget-boolean v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v7, :cond_1

    neg-int v1, v1

    :cond_1
    new-instance v7, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {v7, v6, v1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v7

    new-instance v8, Lcom/android/camera/fragment/top/FragmentTopConfig$2;

    invoke-direct {v8, p0, v6, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig$2;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    new-instance v7, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v7, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v7

    invoke-virtual {v7}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_0
.end method

.method public removeExtraMenu()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setClickEnable(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_1
    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/camera/fragment/top/FragmentTopConfig$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig$3;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/fragment/top/FragmentTopAlert;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const-string/jumbo v1, "FragmentTopConfig"

    const-string/jumbo v2, "unRegister-->detachProtocol"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xac

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public varargs updateConfigItem([I)V
    .locals 9

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_0

    aget v1, p1, v7

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImagePosition(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateRecordingTime(Ljava/lang/String;)V

    return-void
.end method
