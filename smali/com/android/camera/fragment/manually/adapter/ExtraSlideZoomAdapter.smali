.class public Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;
.super Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
.source "ExtraSlideZoomAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;


# static fields
.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I

.field private static sX:[F

.field private static sY:[F


# instance fields
.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mEnable:Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryLayouts:[Landroid/text/StaticLayout;

.field private mEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomMax:I

.field private mZoomRatioMax:I

.field private mZoomRatioMin:I

.field private mZoomRatioTele:I

.field private mZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mZoomRatioWide:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextDefaultColorState:[I

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sX:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sY:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41a00000    # 20.0f
        0x41c80000    # 25.0f
        0x41d80000    # 27.0f
        0x41e80000    # 29.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_1
    .array-data 4
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x435c0000    # 220.0f
        0x43b90000    # 370.0f
        0x43ff0000    # 510.0f
        0x44110000    # 580.0f
        0x44250000    # 660.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;-><init>()V

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMin:I

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    move/from16 v0, p3

    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/BaseModule;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioWide:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    invoke-virtual {v11}, Lcom/android/camera/module/BaseModule;->getZoomMax()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomMax:I

    invoke-virtual {v11}, Lcom/android/camera/module/BaseModule;->getZoomMaxRatio()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    sget-object v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sX:[F

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->convertSplineXToEntryX([F)[F

    move-result-object v12

    sget-object v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sY:[F

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->convertSplineYToZoomRatioY([F)[F

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-static {v13, v12}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->initStyle(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v9, v1, [Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioWide:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v9, v2

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v9, v2

    iput-object v9, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    new-array v1, v1, [Landroid/text/StaticLayout;

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    const/4 v10, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v10, v1, :cond_0

    iget-object v14, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v1, v14, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private convertSplineXToEntryX([F)[F
    .locals 6

    const/high16 v5, 0x41200000    # 10.0f

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    sub-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    array-length v3, p1

    new-array v1, v3, [F

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget v3, p1, v2

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p1, v2

    aput v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget v3, p1, v2

    sub-float/2addr v3, v5

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42140000    # 37.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    aput v3, v1, v2

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private convertSplineYToZoomRatioY([F)[F
    .locals 6

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    float-to-int v0, v3

    array-length v3, p1

    new-array v2, v3, [F

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget v3, p1, v1

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    aget v3, p1, v1

    aput v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget v3, p1, v1

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    iget v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private drawText(ILandroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getDisplayedZoomRatio(I)Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/16 v3, 0x21

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "X"

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private indexToSection(I)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

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

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineHalfHeight:F

    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    const v3, 0x7f09002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineLineGap:I

    const v3, 0x7f09002b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineTextGap:I

    const v3, 0x7f0d0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineColorDefault:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v3, Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f11002e

    invoke-direct {v3, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f11002f

    invoke-direct {v3, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    return-void
.end method

.method private mapPositionToZoomRatio(F)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    if-eqz p3, :cond_2

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    :goto_0
    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->indexToSection(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->drawText(ILandroid/graphics/Canvas;)V

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineHalfHeight:F

    neg-float v2, v0

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineHalfHeight:F

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextDefaultColorState:[I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineColorDefault:I

    goto :goto_2
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public mapZoomRatioToPosition(I)F
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioToEntrySpline:Landroid/util/Spline;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public measureGap(I)F
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineTextGap:I

    int-to-float v0, v0

    return v0

    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineLineGap:I

    int-to-float v0, v0

    return v0
.end method

.method public measureWidth(I)F
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->indexToSection(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public onPositionSelect(Lcom/android/camera/ui/HorizontalSlideView;F)V
    .locals 7

    iget-boolean v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEnable:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v1, p2, v3

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mapPositionToZoomRatio(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v0, v6}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEnable:Z

    return-void
.end method
