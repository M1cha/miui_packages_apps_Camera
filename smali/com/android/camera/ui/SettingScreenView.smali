.class public Lcom/android/camera/ui/SettingScreenView;
.super Lcom/android/camera/ui/SettingView;
.source "SettingScreenView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;
.implements Lcom/android/camera/ui/IndicatorButton$Listener;


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

.field private mParent:Landroid/view/View;

.field private mRowCount:I

.field private mRowHeight:I

.field private mScreenHeight:I

.field private mSettingScreen:Lcom/android/camera/ui/ScreenView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 47
    return-void
.end method

.method private dissmissAllPopup()V
    .locals 3

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 169
    .local v1, indicator:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    goto :goto_0

    .line 173
    .end local v1           #indicator:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    return-void
.end method

.method private initScreenView()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mRowHeight:I

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    .line 90
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingButton;->updateImageResource()V

    .line 199
    :cond_0
    return-void
.end method

.method public enableIndicator(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 241
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    if-eqz p2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 250
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/AbstractIndicatorButton;->enableFilter(Z)V

    .line 252
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/AbstractIndicatorButton;->setEnabled(Z)V

    goto :goto_0

    .line 247
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected initIndicators(Ljava/util/List;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int v14, v2, v3

    .line 94
    .local v14, screenGridCount:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v14

    add-int/lit8 v13, v2, 0x1

    .line 95
    .local v13, screenCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mPaddingRight:I

    sub-int v16, v2, v3

    .line 98
    .local v16, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 99
    .local v9, h:I
    move/from16 v0, v16

    if-ge v0, v9, :cond_1

    .end local v16           #w:I
    :goto_0
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v5, v2

    .line 101
    .local v5, viewWidth:I
    const/4 v15, 0x0

    .local v15, screenIndex:I
    :goto_1
    if-ge v15, v13, :cond_5

    .line 102
    new-instance v1, Lcom/android/camera/ui/StaticGridView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/SettingScreenView;->mRowHeight:I

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    .line 105
    .local v1, gridView:Lcom/android/camera/ui/StaticGridView;
    const/4 v8, 0x0

    .local v8, gridIndex:I
    :goto_2
    if-ge v8, v14, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int/2addr v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    mul-int/2addr v2, v3

    add-int v11, v8, v2

    .line 107
    .local v11, listIndex:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v11, v2, :cond_2

    .line 131
    .end local v11           #listIndex:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ScreenView;->addView(Landroid/view/View;)V

    .line 101
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v1           #gridView:Lcom/android/camera/ui/StaticGridView;
    .end local v5           #viewWidth:I
    .end local v8           #gridIndex:I
    .end local v15           #screenIndex:I
    .restart local v16       #w:I
    :cond_1
    move/from16 v16, v9

    .line 99
    goto :goto_0

    .line 110
    .end local v16           #w:I
    .restart local v1       #gridView:Lcom/android/camera/ui/StaticGridView;
    .restart local v5       #viewWidth:I
    .restart local v8       #gridIndex:I
    .restart local v11       #listIndex:I
    .restart local v15       #screenIndex:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    check-cast v12, Lcom/android/camera/IconListPreference;

    .line 112
    .local v12, pref:Lcom/android/camera/IconListPreference;
    if-eqz v12, :cond_3

    .line 115
    invoke-virtual {v12}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_whitebalance_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    new-instance v7, Lcom/android/camera/ui/IndicatorButtonWhiteBalance;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2, v12}, Lcom/android/camera/ui/IndicatorButtonWhiteBalance;-><init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V

    .line 121
    .local v7, b:Lcom/android/camera/ui/IndicatorButton;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/camera/ui/IndicatorButton;->setSettingChangedListener(Lcom/android/camera/ui/IndicatorButton$Listener;)V

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/camera/ui/IndicatorButton;->setIndicatorClickListener(Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;)V

    .line 123
    invoke-virtual {v12}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/camera/ui/IndicatorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v10, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 126
    .local v10, layout:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v10}, Lcom/android/camera/ui/IndicatorButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v1, v7}, Lcom/android/camera/ui/StaticGridView;->addView(Landroid/view/View;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v7           #b:Lcom/android/camera/ui/IndicatorButton;
    .end local v10           #layout:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 118
    :cond_4
    new-instance v7, Lcom/android/camera/ui/IndicatorButton;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2, v12}, Lcom/android/camera/ui/IndicatorButton;-><init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V

    .restart local v7       #b:Lcom/android/camera/ui/IndicatorButton;
    goto :goto_3

    .line 133
    .end local v1           #gridView:Lcom/android/camera/ui/StaticGridView;
    .end local v7           #b:Lcom/android/camera/ui/IndicatorButton;
    .end local v8           #gridIndex:I
    .end local v11           #listIndex:I
    .end local v12           #pref:Lcom/android/camera/IconListPreference;
    :cond_5
    return-void
.end method

.method public initializeSettingScreen(Lcom/android/camera/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V
    .locals 7
    .parameter "preferenceGroup"
    .parameter
    .parameter "indicatorClickListener"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mContext:Landroid/content/Context;

    const v2, 0x7f050006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mContext:Landroid/content/Context;

    const v2, 0x7f050007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    .line 57
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingButton;

    iput-object v1, p0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 63
    iput-object p3, p0, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    .line 64
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->initScreenView()V

    .line 66
    const v1, 0x7f0c0033

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ScreenView;

    iput-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    .line 67
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ScreenView;->setSeekPointResource(I)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v6, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 74
    .local v0, seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/SettingScreenView;->mRowHeight:I

    iget v2, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 78
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->dissmissAllPopup()V

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 80
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/SettingScreenView;->initIndicators(Ljava/util/List;)V

    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 83
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->dissmissAllPopup()V

    .line 155
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 179
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 148
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "key"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 223
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 138
    .local v0, i:Lcom/android/camera/ui/AbstractIndicatorButton;
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;->setEnabled(Z)V

    goto :goto_0

    .line 142
    .end local v0           #i:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 143
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 238
    :cond_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 236
    .local v1, view:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;->setOrientation(I)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->show()V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingButton;->updateImageResource()V

    .line 189
    :cond_0
    return-void
.end method

.method public showPopup(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 159
    if-nez p1, :cond_1

    .line 165
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 161
    .local v0, i:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/AbstractIndicatorButton;->showPopup(Z)V

    goto :goto_0
.end method
