.class public Lcom/android/camera/ui/SettingPopupView;
.super Lcom/android/camera/ui/SettingView;
.source "SettingPopupView.java"

# interfaces
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;
.implements Lcom/android/camera/ui/IndicatorButton$Listener;


# instance fields
.field listener:Landroid/view/View$OnClickListener;

.field private mBackShadeWidth:I

.field private mBackTopMargin:I

.field protected mBootomView:Landroid/view/View;

.field protected mColorMargin:I

.field private mColorViewMargin:I

.field private mColumnCount:I

.field private mDisabledItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitListener:Landroid/view/View$OnClickListener;

.field protected mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

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

.field protected mLinearContent:Landroid/widget/LinearLayout;

.field private mMarginHorizon:I

.field private mNeedReinstall:Z

.field protected mPopupGridView:Lcom/android/camera/ui/PopupGridView;

.field private mPopupMenuMargin:I

.field private mRowCount:I

.field private mRowHeight:I

.field protected mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

.field protected mTopView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mDisabledItems:Ljava/util/Set;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    .line 202
    new-instance v0, Lcom/android/camera/ui/SettingPopupView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingPopupView$1;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->listener:Landroid/view/View$OnClickListener;

    .line 228
    new-instance v0, Lcom/android/camera/ui/SettingPopupView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingPopupView$2;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitListener:Landroid/view/View$OnClickListener;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mDisabledItems:Ljava/util/Set;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    .line 202
    new-instance v0, Lcom/android/camera/ui/SettingPopupView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingPopupView$1;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->listener:Landroid/view/View$OnClickListener;

    .line 228
    new-instance v0, Lcom/android/camera/ui/SettingPopupView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingPopupView$2;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitListener:Landroid/view/View$OnClickListener;

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/SettingPopupView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SettingPopupView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SettingPopupView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SettingPopupView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->popupColorEffectView()V

    return-void
.end method

.method private getActualColumnCount()I
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/SettingPopupView;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/SettingPopupView;->mColumnCount:I

    goto :goto_0
.end method

.method private initializeSplitLine()V
    .locals 8

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 188
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 189
    .local v0, "h":I
    if-ge v4, v0, :cond_0

    move v3, v4

    .line 191
    .local v3, "viewWidth":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 192
    .local v2, "top":I
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v5}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    .local v1, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 194
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mBackTopMargin:I

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 195
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    iget v6, p0, Lcom/android/camera/ui/SettingPopupView;->mRowHeight:I

    mul-int/2addr v5, v6

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 196
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    iget v6, p0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 197
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v6, p0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 199
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 200
    return-void

    .end local v1    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "top":I
    .end local v3    # "viewWidth":I
    :cond_0
    move v3, v0

    .line 189
    goto :goto_0
.end method

.method private popupColorEffectView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const-wide/16 v9, 0x12c

    const/high16 v8, 0x3f800000

    .line 251
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 253
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040003

    iget-object v6, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/HorizontalSettingPopup;

    iput-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    .line 256
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 257
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 258
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->restoreViewProperties()V

    .line 260
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 261
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mRotatables:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v6, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v7, "pref_camera_coloreffect_key"

    invoke-virtual {v5, v7}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    check-cast v5, Lcom/android/camera/IconListPreference;

    invoke-virtual {v6, v5}, Lcom/android/camera/ui/HorizontalSettingPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 264
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    new-instance v6, Lcom/android/camera/ui/SettingPopupView$3;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/SettingPopupView$3;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/HorizontalSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V

    .line 271
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v5, v11}, Lcom/android/camera/ui/HorizontalSettingPopup;->setVisibility(I)V

    .line 273
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mOrientation:I

    invoke-virtual {p0, v5, v11}, Lcom/android/camera/ui/SettingPopupView;->setOrientation(IZ)V

    .line 275
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupMenuMargin:I

    iget v6, p0, Lcom/android/camera/ui/SettingPopupView;->mColorMargin:I

    sub-int v0, v5, v6

    .line 276
    .local v0, "diffW":I
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v5}, Lcom/android/camera/ui/HorizontalSettingPopup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v5

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 277
    .local v2, "layout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v5}, Lcom/android/camera/ui/PopupGridView;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 278
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mColorViewMargin:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 279
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mColorViewMargin:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 281
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/HorizontalSettingPopup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v5}, Lcom/android/camera/ui/HorizontalSettingPopup;->scrollToChecked()V

    .line 283
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/HorizontalSettingPopup;->setAlpha(F)V

    .line 284
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    iget-object v6, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v6}, Lcom/android/camera/ui/PopupGridView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/HorizontalSettingPopup;->setScaleX(F)V

    .line 286
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 287
    .local v3, "layoutAnchor":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 289
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v5}, Lcom/android/camera/ui/PopupGridView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v6}, Lcom/android/camera/ui/PopupGridView;->getWidth()I

    move-result v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 292
    .local v4, "sx":F
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleX(F)V

    .line 293
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 294
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mBootomView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleX(F)V

    .line 295
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 296
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 297
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mBootomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 298
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v5}, Lcom/android/camera/ui/HorizontalSettingPopup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 299
    return-void
.end method

.method private restoreViewProperties()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupGridView;->setAlpha(F)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 306
    return-void
.end method


# virtual methods
.method public initColorEffectView()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x12c

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 310
    .local v1, "margin":I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 311
    .local v0, "drawableHeigh":I
    mul-int/lit8 v4, v1, 0x2

    add-int v2, v4, v0

    .line 312
    .local v2, "newH":I
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopupGridView;->getHeight()I

    move-result v3

    .line 313
    .local v3, "oldH":I
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sub-int v5, v3, v2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/camera/ui/SettingPopupView$4;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/SettingPopupView$4;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 327
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mExitArea:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mExitView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 328
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mExitArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sub-int v5, v3, v2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 330
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopupGridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 331
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sub-int v5, v3, v2

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 333
    return-void
.end method

.method public initializeSettingScreen(Lcom/android/camera/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V
    .locals 19
    .param p1, "preferenceGroup"    # Lcom/android/camera/PreferenceGroup;
    .param p3, "indicatorClickListener"    # Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;
    .param p4, "columns"    # I
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
    .line 91
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/SettingButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    .line 93
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/SettingPopupView;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 94
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/SettingPopupView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    .line 95
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/SettingPopupView;->mKeys:Ljava/util/List;

    .line 97
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/SettingPopupView;->mColumnCount:I

    .line 98
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v3

    div-int v3, v2, v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v4

    rem-int/2addr v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    .line 100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupMenuMargin:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    .local v13, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/ui/SettingPopupView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 107
    .local v18, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    .local v8, "h":I
    move/from16 v0, v18

    if-ge v0, v8, :cond_2

    move/from16 v17, v18

    .line 110
    .local v17, "viewWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v17, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v3

    div-int v6, v2, v3

    .line 111
    .local v6, "childWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v17, v2

    div-int v2, v2, p4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/SettingPopupView;->mRowHeight:I

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    if-nez v2, :cond_3

    .line 114
    new-instance v2, Lcom/android/camera/ui/PopupGridView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/SettingPopupView;->mRowHeight:I

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/PopupGridView;-><init>(Landroid/content/Context;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    .line 120
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 122
    .local v11, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 123
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_4

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingPopupView;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    check-cast v15, Lcom/android/camera/IconListPreference;

    .line 126
    .local v15, "pref":Lcom/android/camera/IconListPreference;
    if-eqz v15, :cond_0

    .line 127
    const v2, 0x7f040014

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ui/PopupMenuItem;

    .line 129
    .local v12, "item":Lcom/android/camera/ui/PopupMenuItem;
    const v2, 0x7f0c0038

    invoke-virtual {v12, v2}, Lcom/android/camera/ui/PopupMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 130
    .local v10, "image":Landroid/widget/ImageView;
    const v2, 0x7f0c0039

    invoke-virtual {v12, v2}, Lcom/android/camera/ui/PopupMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 132
    .local v16, "text":Landroid/widget/TextView;
    invoke-virtual {v15}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    invoke-virtual {v15}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v2}, Lcom/android/camera/ui/PopupMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v15}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/camera/ui/PopupMenuItem;->setTag(Ljava/lang/Object;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v2, v12}, Lcom/android/camera/ui/PopupGridView;->addView(Landroid/view/View;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v10    # "image":Landroid/widget/ImageView;
    .end local v12    # "item":Lcom/android/camera/ui/PopupMenuItem;
    .end local v16    # "text":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 98
    .end local v6    # "childWidth":I
    .end local v8    # "h":I
    .end local v9    # "i":I
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "pref":Lcom/android/camera/IconListPreference;
    .end local v17    # "viewWidth":I
    .end local v18    # "w":I
    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .restart local v8    # "h":I
    .restart local v13    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v18    # "w":I
    :cond_2
    move/from16 v17, v8

    .line 108
    goto/16 :goto_1

    .line 117
    .restart local v6    # "childWidth":I
    .restart local v17    # "viewWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/SettingPopupView;->mRowHeight:I

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/android/camera/ui/PopupGridView;->set(IIII)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupGridView;->removeAllViews()V

    goto/16 :goto_2

    .line 140
    .restart local v9    # "i":I
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingPopupView;->mOrientation:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/SettingPopupView;->setOrientation(IZ)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->initializeSplitLine()V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 146
    .local v14, "layoutAnchor":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/camera/ui/SettingView;->onFinishInflate()V

    .line 76
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    .line 77
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    .line 78
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    .line 79
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mBootomView:Landroid/view/View;

    .line 80
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mAnchor:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mBackTopMargin:I

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mColorViewMargin:I

    .line 85
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupMenuMargin:I

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mColorMargin:I

    .line 87
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 375
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/SettingView;->onLayout(ZIIII)V

    .line 376
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 370
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/SettingView;->onMeasure(II)V

    .line 371
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 71
    :cond_0
    return-void
.end method

.method public resetSettings(Lcom/android/camera/ComboPreferences;)V
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_camera_coloreffect_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_video_speed_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    .line 383
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :cond_1
    return-void
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 163
    .local v1, "r":Lcom/android/camera/ui/Rotatable;
    instance-of v2, v1, Lcom/android/camera/ui/PopupMenuItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/camera/ui/PopupMenuItem;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .end local v1    # "r":Lcom/android/camera/ui/Rotatable;
    invoke-virtual {v1, p2}, Lcom/android/camera/ui/PopupMenuItem;->setEnabled(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mDisabledItems:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 154
    .local v1, "r":Lcom/android/camera/ui/Rotatable;
    instance-of v2, v1, Lcom/android/camera/ui/PopupMenuItem;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mDisabledItems:Ljava/util/Set;

    move-object v2, v1

    check-cast v2, Lcom/android/camera/ui/PopupMenuItem;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .end local v1    # "r":Lcom/android/camera/ui/Rotatable;
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/PopupMenuItem;->setEnabled(Z)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 159
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/camera/ui/SettingView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingButton;->updateImageResource()V

    .line 175
    return-void
.end method

.method protected tryReinstall()V
    .locals 4

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mKeys:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    iget v3, p0, Lcom/android/camera/ui/SettingPopupView;->mColumnCount:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/SettingPopupView;->initializeSettingScreen(Lcom/android/camera/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V

    .line 248
    :cond_0
    return-void
.end method

.method public updateExitLayout(Z)V
    .locals 3
    .param p1, "isMenuShow"    # Z

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mExitView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mExitArea:Landroid/view/View;

    if-nez v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mExitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 360
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    if-eqz p1, :cond_2

    const v1, 0x7f0c000f

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 362
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mExitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v2, "mode_none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mExitView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 360
    :cond_2
    const v1, 0x7f0c0010

    goto :goto_1
.end method

.method public updateExitView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_camera_coloreffect_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_camera_hand_night_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_audio_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_video_speed_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_camera_panoramamode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_video_hdr_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iput-object p1, p0, Lcom/android/camera/ui/SettingPopupView;->mExitView:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitArea:Landroid/view/View;

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentMode:Ljava/lang/String;

    .line 353
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
