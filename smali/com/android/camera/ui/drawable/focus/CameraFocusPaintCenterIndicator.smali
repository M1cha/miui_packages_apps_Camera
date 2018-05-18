.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintCenterIndicator.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapMatrix:Landroid/graphics/Matrix;

.field public indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mMinusMoonPaint:Landroid/graphics/Paint;

.field private mSunPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private drawCenterCaptureBitmap(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmapMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmapMatrix:Landroid/graphics/Matrix;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method private drawCenterCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 0
    .param p5    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCenterMoon(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    neg-int v0, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    neg-int v0, v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v4, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCenterSun(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v6, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    if-lez v6, :cond_0

    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    neg-int v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v2, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v4, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    neg-int v0, v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iget-object v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v3, v3, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMiddleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentWidthPercent:F

    mul-float v4, v0, v1

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentColor:I

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterCaptureBitmap(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterSun(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterMoon(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setCenterFlag(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput p1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    return-void
.end method

.method public setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
