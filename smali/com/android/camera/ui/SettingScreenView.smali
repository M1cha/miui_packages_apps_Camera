.class public Lcom/android/camera/ui/SettingScreenView;
.super Lcom/android/camera/ui/SettingView;
.source "SettingScreenView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mColumnCount:I

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/View;

.field private mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPopupRoot:Landroid/view/ViewGroup;

.field private mRowCount:I

.field private mScreenHeight:I

.field private mSettingScreen:Lcom/android/camera/ui/ScreenView;

.field protected mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    return-void
.end method

.method private getActualColumnCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    return v0
.end method

.method private initScreenView()V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    return-void
.end method

.method private initializeSplitLine()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v0, :cond_0

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v4}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v5, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    iget-object v4, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    return-void

    :cond_0
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method protected initIndicators(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int v20, v3, v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int v3, v3, v20

    add-int/lit8 v19, v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getPaddingRight()I

    move-result v4

    sub-int v22, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    :goto_0
    move/from16 v0, v22

    int-to-float v3, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    new-instance v2, Lcom/android/camera/ui/StaticGridView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    mul-int/2addr v3, v4

    add-int v18, v15, v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/ScreenView;->addView(Landroid/view/View;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_1
    move/from16 v22, v16

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v8

    check-cast v8, Lcom/android/camera/preferences/IconListPreference;

    if-eqz v8, :cond_3

    const v3, 0x7f040039

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/SubScreenIndicatorButton;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/ui/SettingScreenView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/ui/SettingScreenView;->mPopupRoot:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/SettingScreenView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/SettingScreenView;->mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v12, -0x2

    move v11, v6

    invoke-virtual/range {v7 .. v14}, Lcom/android/camera/ui/SubScreenIndicatorButton;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Lcom/android/camera/ui/StaticGridView;->addView(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/camera/ui/MessageDispatcher;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iput-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iput-object p4, p0, Lcom/android/camera/ui/SettingScreenView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iput-object p2, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->initScreenView()V

    iput p3, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ScreenView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    iput-object p5, p0, Lcom/android/camera/ui/SettingScreenView;->mPopupRoot:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/android/camera/ui/SettingScreenView;->mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/SettingScreenView;->initIndicators(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->initializeSplitLine()V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/SettingView;->onFinishInflate()V

    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
