.class public abstract Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "ConvolutionEffectRender.java"


# instance fields
.field protected mStepX:F

.field protected mStepY:F

.field protected mUniformStepH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method


# virtual methods
.method protected initShader()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mProgram:I

    const-string/jumbo v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mUniformStepH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mUniformStepH:I

    iget v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    iget v2, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;->setPreviewSize(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mPreviewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->setStep(II)V

    return-void
.end method

.method public setStep(II)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, p1

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    int-to-float v0, p2

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    return-void
.end method
