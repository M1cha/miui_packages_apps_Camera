.class public Lcom/android/camera/ui/ManualFocusPositionPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualFocusPositionPopup.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I


# instance fields
.field private mCurrentIndex:I

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineColorDefault:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ManualFocusPositionPopup;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineHalfHeight:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineLineGap:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineTextGap:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineWidth:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    return v0
.end method

.method static synthetic -get7()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextActivatedColorState:[I

    return-object v0
.end method

.method static synthetic -get8()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextDefaultColorState:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->TAG:Ljava/lang/String;

    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextActivatedColorState:[I

    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextDefaultColorState:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

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

    iget v4, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineHalfHeight:F

    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineWidth:I

    const v3, 0x7f09002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineLineGap:I

    const v3, 0x7f09002b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineTextGap:I

    const v3, 0x7f0d0018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineColorDefault:I

    return-void
.end method

.method private getDisplayedFocusValue(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mapFocusToIndex(I)I
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {p1, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    const/16 v0, 0xa

    div-int/lit8 v1, p1, 0xa

    rsub-int/lit8 v1, v1, 0x64

    return v1
.end method

.method private mapIndexToFocus(I)I
    .locals 1

    mul-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v0, v0, 0x64

    rsub-int v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    const/16 v4, 0xb

    new-array v0, v4, [Ljava/lang/CharSequence;

    const/16 v1, 0xa

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0xa

    if-gt v2, v4, :cond_0

    mul-int/lit8 v4, v2, 0xa

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getDisplayedFocusValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;-><init>(Lcom/android/camera/ui/ManualFocusPositionPopup;[Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v4, v3}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a008c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V

    return-void
.end method

.method public onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/android/camera/ui/ManualFocusPositionPopup;->mapIndexToFocus(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusPosition(I)V

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    if-eq p2, v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    if-eqz v0, :cond_0

    if-nez p2, :cond_4

    :cond_0
    const/4 v6, 0x1

    :goto_0
    iput p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v6, :cond_5

    const-string/jumbo v4, "pref_camera_focus_mode_key"

    :goto_1
    const/4 v1, 0x7

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_3
    return-void

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "pref_focus_position_key"

    goto :goto_1
.end method

.method public reloadPreference()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->mapFocusToIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget v2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
