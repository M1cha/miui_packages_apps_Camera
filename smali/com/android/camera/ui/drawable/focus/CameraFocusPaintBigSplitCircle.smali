.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintBigSplitCircle.java"


# instance fields
.field private mDownPaint:Landroid/graphics/Paint;

.field private mUpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x40a00000    # 5.0f

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mCurrentAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mBaseRadius:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleY:F

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mBaseRadius:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleX:F

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mBaseRadius:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleY:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleY:F

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mBaseRadius:F

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mCurrentWidthPercent:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mCurrentAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mBaseRadius:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleY:F

    add-float/2addr v2, v5

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleX:F

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mBaseRadius:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleY:F

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mBaseRadius:F

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mMiddleY:F

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mBaseRadius:F

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mCurrentWidthPercent:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->BASE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
