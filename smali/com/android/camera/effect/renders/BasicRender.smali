.class public Lcom/android/camera/effect/renders/BasicRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "BasicRender.java"


# static fields
.field private static final TEXTURES:[F

.field private static final VERTICES:[F


# instance fields
.field private mUniformBlendFactorH:I

.field private mUniformPaintColorH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method private convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 9

    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    iget v6, p1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->left:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    iget v6, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->right:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->bottom:F

    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    invoke-direct {p0, p5}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(Lcom/android/gallery3d/ui/GLPaint;)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    invoke-static {v0, v6, v4, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v1

    invoke-static {v0, v6, v4, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {v0, v3, v3, v3, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawMesh(Lcom/android/gallery3d/ui/BasicTexture;FFIIII)V
    .locals 6

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/BasicRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->setBlendEnabled(Z)V

    const v0, 0x8892

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x8892

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformTextureH:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x8893

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v0, 0x5

    const/16 v1, 0x1401

    const/4 v2, 0x0

    invoke-static {v0, p7, v1, v2}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    const v0, 0x8893

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFFFFF)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/BasicRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    invoke-direct {p0, p2}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(I)V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mBlendEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    const v3, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->setBlendEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p4, p5, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p6, p7, v5}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    sub-float v1, v5, p3

    invoke-static {v0, v1, v4, v4, p3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformTextureH:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    invoke-direct {p0, p5}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(Lcom/android/gallery3d/ui/GLPaint;)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p3, p4, v4}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    invoke-static {v0, v5, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v1

    invoke-static {v0, v5, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {v0, v2, v2, v2, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v0, 0x2

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->identityTexM()V

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/renders/BasicRender;->drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p2, p3, p1}, Lcom/android/camera/effect/renders/BasicRender;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix(FFFF)V

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    cmpg-float v3, p4, v6

    if-lez v3, :cond_0

    cmpg-float v3, p5, v6

    if-gtz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v3, 0x84c0

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/effect/renders/BasicRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {v3, v7, v6, v6, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformTextureH:I

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result v1

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/android/gallery3d/ui/UploadedTexture;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/android/gallery3d/ui/UploadedTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/UploadedTexture;->isPremultiplied()Z

    move-result v2

    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mBlendEnabled:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x3f733333    # 0.95f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    :cond_4
    move v3, v4

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/android/camera/effect/renders/BasicRender;->setBlendEnabled(ZZ)V

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3, p2, p3, v6}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3, p4, p5, v7}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    iget v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v6, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v6, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendAlphaH:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void

    :cond_5
    cmpl-float v3, v1, v6

    if-gez v3, :cond_4

    :cond_6
    move v3, v5

    goto :goto_0
.end method

.method private fillRect(FFFFI)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    invoke-direct {p0, p5}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(I)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p3, p4, v4}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    invoke-static {v0, v5, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v1

    invoke-static {v0, v5, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {v0, v3, v3, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private initAttribPointer()V
    .locals 6

    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/BasicRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/BasicRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method private initGLPaint(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v4, 0x3f733333    # 0.95f

    const v5, 0x3b808081

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v3, v5

    iget-boolean v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mBlendEnabled:Z

    if-eqz v3, :cond_2

    cmpg-float v3, v0, v4

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/BasicRender;->setBlendEnabled(Z)V

    iget v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformPaintColorH:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private initGLPaint(Lcom/android/gallery3d/ui/GLPaint;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLPaint;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLPaint;->getLineWidth()F

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    move-object/from16 v8, p1

    check-cast v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;

    iget v1, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mX1:F

    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mY1:F

    iget v3, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mX2:F

    iget v4, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mY2:F

    iget-object v5, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v11, p1

    check-cast v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    iget v1, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mX:F

    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mY:F

    iget v3, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mWidth:F

    iget v4, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mHeight:F

    iget-object v5, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v9, p1

    check-cast v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;

    iget-object v1, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mX:F

    iget v3, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mY:F

    iget v4, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mXYBuffer:I

    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mUVBuffer:I

    iget v6, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mIndexBuffer:I

    iget v7, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mIndexCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/BasicRender;->drawMesh(Lcom/android/gallery3d/ui/BasicTexture;FFIIII)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v10, p1

    check-cast v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;

    iget-object v1, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v2, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mToColor:I

    iget v3, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mRatio:F

    iget v4, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mX:F

    iget v5, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mY:F

    iget v6, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mWidth:F

    iget v7, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/BasicRender;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFFFFF)V

    goto :goto_0

    :pswitch_5
    move-object/from16 v12, p1

    check-cast v12, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    iget v1, v12, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mX:F

    iget v2, v12, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mY:F

    iget v3, v12, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mWidth:F

    iget v4, v12, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mHeight:F

    iget v5, v12, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mColor:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->fillRect(FFFFI)V

    goto :goto_0

    :pswitch_6
    move-object/from16 v13, p1

    check-cast v13, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, v13, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v0, v13, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    int-to-float v2, v0

    iget v0, v13, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    int-to-float v3, v0

    iget v0, v13, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    int-to-float v4, v0

    iget v0, v13, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V

    goto :goto_0

    :pswitch_7
    move-object/from16 v14, p1

    check-cast v14, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;

    iget-object v0, v14, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v1, v14, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mSourceRectF:Landroid/graphics/RectF;

    iget-object v2, v14, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mTargetRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/effect/renders/BasicRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "frag_normal.txt"

    invoke-static {v0}, Lcom/android/camera/effect/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initShader()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->getFragShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformTextureH:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "uMixAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendAlphaH:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "uBlendFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "uPaintColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformPaintColorH:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string/jumbo v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": mProgram = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initSupportAttriList()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected initVertexData()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/BasicRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/BasicRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
