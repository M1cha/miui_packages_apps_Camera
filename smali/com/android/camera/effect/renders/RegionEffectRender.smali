.class public abstract Lcom/android/camera/effect/renders/RegionEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "RegionEffectRender.java"


# instance fields
.field private mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field private mThresholdHeight:I

.field private mThresholdWidth:I

.field protected mUniformEffectParameterH:I

.field protected mUniformEffectRectH:I

.field protected mUniformInvertRectH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->init()V

    return-void
.end method

.method private getChangeMatrix()Landroid/graphics/Matrix;
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v3, -0x41000000    # -0.5f

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mOrientation:I

    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mJpegOrientation:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method private getEffectArray(Z)[F
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->getChangeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v3, 0x5

    new-array v1, v3, [F

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v1, v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v1, v7

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v1, v5

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v1, v8

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v3, v3, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    aput v3, v1, v9

    move-object v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v6

    const/4 v3, 0x5

    new-array v3, v3, [F

    iget-object v4, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v3, v2

    iget-object v2, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v3, v7

    iget-object v2, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v3, v5

    iget-object v2, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v3, v8

    iget v2, v6, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    aput v2, v3, v9

    return-object v3
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mThresholdWidth:I

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mThresholdHeight:I

    return-void
.end method

.method private setEffectRectF(Landroid/graphics/RectF;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x3

    aput v1, v0, v2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v2, v0, v5

    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getEffectRect(Z)[F
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mMirror:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v6

    sub-float v2, v7, v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v9

    sub-float v4, v7, v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v5, v5, v10

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->getChangeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    aput v3, v2, v6

    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    aput v3, v2, v8

    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    aput v3, v2, v9

    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    aput v3, v2, v10

    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    return-object v2

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v8

    sub-float v3, v7, v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v5, v5, v10

    sub-float v5, v7, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v5, v5, v10

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEffectRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mThresholdWidth:I

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewHeight:I

    iget v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mThresholdHeight:I

    if-le v2, v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    :goto_1
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    return-object v2

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method protected getInvertFlag(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result v0

    return v0
.end method

.method protected initEffectRect(Z)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectRectH:I

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getEffectRect(Z)[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformInvertRectH:I

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getInvertFlag(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectParameterH:I

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getEffectArray(Z)[F

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    return-void
.end method

.method protected initShader()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mProgram:I

    const-string/jumbo v1, "uEffectRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectRectH:I

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mProgram:I

    const-string/jumbo v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformInvertRectH:I

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mProgram:I

    const-string/jumbo v1, "uEffectArray"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectParameterH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->initEffectRect(Z)V

    return-void
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    return-void
.end method
