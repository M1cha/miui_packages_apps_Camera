.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintCircle.java"


# instance fields
.field private arcRectF:Landroid/graphics/RectF;

.field private beautyColor:I

.field public isInBeautyMode:Z

.field private needRing:Z

.field private noNeedArc:Z

.field private ringWidth:F

.field private spaceAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const v0, -0x3967c

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->beautyColor:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->needRing:Z

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->noNeedArc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isRecording:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isRecording:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mCurrentWidthPercent:F

    mul-float v8, v0, v1

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mMiddleX:F

    sub-float v7, v0, v8

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mMiddleY:F

    sub-float v10, v0, v8

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mMiddleX:F

    add-float v9, v0, v8

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mMiddleY:F

    add-float v6, v0, v8

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isInBeautyMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mCurrentAlpha:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->arcRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v7, v10, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->arcRectF:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isClockwise:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->timeAngle:F

    :goto_1
    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    add-float/2addr v2, v0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isClockwise:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->timeAngle:F

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v0, v3, v0

    :goto_2
    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->ALPHA_OPAQUE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isInBeautyMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->beautyColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->arcRectF:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isClockwise:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_3
    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isClockwise:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->timeAngle:F

    :goto_4
    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    return-void

    :cond_2
    sget v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->ALPHA_HINT:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->timeAngle:F

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->timeAngle:F

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->timeAngle:F

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v0, v4, v0

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->needRing:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->ALPHA_OUTSTANDING:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->ringWidth:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->arcRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    return-void
.end method

.method public setNeedSplit(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->noNeedArc:Z

    if-eqz p1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRingVisible(I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->needRing:Z

    return-void
.end method

.method public updateValue(F)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mCurrentWidthPercent:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mCurrentWidthPercent:F

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->ringWidth:F

    return-void
.end method
