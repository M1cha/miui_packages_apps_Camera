.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintRound.java"


# instance fields
.field private mCurrentRoundRectRadius:F

.field private mRectF:Landroid/graphics/RectF;

.field private mRoundingProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecording:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mMiddleX:F

    iget v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mMiddleY:F

    iget v7, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBaseRadius:F

    iget v8, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentWidthPercent:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBaseRadius:F

    iget v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    mul-float v2, v5, v6

    iget v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mMiddleX:F

    sub-float v1, v5, v2

    iget v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mMiddleX:F

    add-float v3, v5, v2

    iget v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mMiddleY:F

    sub-float v4, v5, v2

    iget v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mMiddleY:F

    add-float v0, v5, v2

    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public prepareRecord()V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentWidthPercent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    return-void
.end method

.method public updateRecordValue(FZ)V
    .locals 3

    const v0, 0x3f266666    # 0.65f

    const v2, 0x3e87ae14    # 0.265f

    if-eqz p2, :cond_0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentWidthPercent:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentWidthPercent:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    :goto_0
    return-void

    :cond_0
    mul-float/2addr v0, p1

    const v1, 0x3eb33333    # 0.35f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentWidthPercent:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    goto :goto_0
.end method
