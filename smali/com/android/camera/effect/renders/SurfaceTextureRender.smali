.class public Lcom/android/camera/effect/renders/SurfaceTextureRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "SurfaceTextureRender.java"


# static fields
.field private static final TEXTURES:[F

.field private static final VERTICES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->VERTICES:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->TEXTURES:[F

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
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/ExtTexture;[FFFFF)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v2, 0x84c0

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SurfaceTextureRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail bind texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->initAttributePointer()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->updateViewport()V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mBlendEnabled:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ExtTexture;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x3f733333    # 0.95f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->setBlendEnabled(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2, p3, p4, v5}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, p5, p6, v5}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    iget v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformMVPMatrixH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformSTMatrixH:I

    invoke-static {v2, v3, v4, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformTextureH:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformAlphaH:I

    iget-object v3, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformBlendAlphaH:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void

    :cond_2
    cmpl-float v2, v1, v5

    if-gez v2, :cond_1

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private initAttributePointer()V
    .locals 6

    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mAttributePositionH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mAttributeTexCoorH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v7, p1

    check-cast v7, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    int-to-float v3, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    int-to-float v4, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    int-to-float v5, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    int-to-float v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->drawTexture(Lcom/android/gallery3d/ui/ExtTexture;[FFFFF)V

    const/4 v0, 0x1

    return v0
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require  \nprecision mediump float; \nuniform float uAlpha; \nuniform float uMixAlpha; \nuniform samplerExternalOES sTexture; \nvarying vec2 vTexCoord; \nvoid main() \n{ \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n    if (uMixAlpha >= 0.0) { \n       gl_FragColor.a = uMixAlpha; \n    } \n}"

    return-object v0
.end method

.method protected initShader()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->getFragShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformMVPMatrixH:I

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformSTMatrixH:I

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformTextureH:I

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    const-string/jumbo v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformAlphaH:I

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    const-string/jumbo v1, "uMixAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mUniformBlendAlphaH:I

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mAttributePositionH:I

    iget v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mProgram:I

    const-string/jumbo v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mAttributeTexCoorH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->getClass()Ljava/lang/Class;

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

    iget-object v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected initVertexData()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;->TEXTURES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SurfaceTextureRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
