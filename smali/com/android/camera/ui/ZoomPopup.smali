.class public Lcom/android/camera/ui/ZoomPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ZoomPopup.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I


# instance fields
.field private mCurrentPosition:I

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:I

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomMax:I

.field private mZoomMaxRatio:I

.field private mZoomMinRatio:I

.field private mZoomRatio:I

.field private mZoomSections:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineColorDefault:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ZoomPopup;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineHalfHeight:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineLineGap:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineTextGap:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineWidth:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/ZoomPopup;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomSections:I

    return v0
.end method

.method static synthetic -get8()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextActivatedColorState:[I

    return-object v0
.end method

.method static synthetic -get9()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextDefaultColorState:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->TAG:Ljava/lang/String;

    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextActivatedColorState:[I

    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextDefaultColorState:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v3, 0x64

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMinRatio:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    const v3, 0x1010095

    const v4, 0x1010098

    filled-new-array {v3, v4}, [I

    move-result-object v2

    const v3, 0x7f11001f

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/ZoomPopup;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineHalfHeight:F

    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineWidth:I

    const v3, 0x7f09002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineLineGap:I

    const v3, 0x7f09002b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineTextGap:I

    const v3, 0x7f0d0018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineColorDefault:I

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f11002e

    invoke-direct {v3, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/ui/ZoomPopup;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f11002f

    invoke-direct {v3, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/ui/ZoomPopup;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    return-void
.end method

.method private getDisplayedZoomRatio(I)Ljava/lang/CharSequence;
    .locals 4

    const/16 v3, 0x21

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "X"

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private mapPositionToZoomRatio(I)I
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMinRatio:I

    mul-int/lit8 v1, p1, 0x64

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private mapZoomRatioToPosition(I)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMinRatio:I

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getZoomMax()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMax:I

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getZoomMaxRatio()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMaxRatio:I

    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMaxRatio:I

    div-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomSections:I

    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomSections:I

    new-array v0, v4, [Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMinRatio:I

    :goto_0
    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMaxRatio:I

    if-gt v1, v4, :cond_0

    div-int/lit8 v4, v1, 0x64

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ZoomPopup;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v1, v1, 0x64

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;-><init>(Lcom/android/camera/ui/ZoomPopup;[Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v4, v3}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a008c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V

    return-void
.end method

.method public onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    if-eq p2, v0, :cond_2

    iput p2, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/camera/ui/ZoomPopup;->mapPositionToZoomRatio(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v1, 0x7

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_2
    return-void
.end method

.method public passTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public reloadPreference()V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatio:I

    iget v2, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatio:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/ZoomPopup;->mapZoomRatioToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget v3, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
