.class public Lcom/android/camera/effect/renders/WrapperRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "WrapperRender.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERTICES:[F


# instance fields
.field private mConvertedVertex:[F

.field protected mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field private mRenderHeight:F

.field private mRenderWidth:F

.field private mRenderX:F

.field private mRenderY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/renders/WrapperRender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/WrapperRender;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/WrapperRender;->VERTICES:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mConvertedVertex:[F

    iput-object p3, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WrapperRender;->initFilter()V

    return-void
.end method

.method private checkRenderRect(FFFF)V
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderX:F

    iput p2, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderY:F

    iput p3, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderWidth:F

    iput p4, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderHeight:F

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/renders/WrapperRender;->updateVertexData(FFFF)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderWidth:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderHeight:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private updateVertexData(FFFF)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, p4, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mConvertedVertex:[F

    iget-object v2, p0, Lcom/android/camera/effect/renders/WrapperRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v2

    sget-object v4, Lcom/android/camera/effect/renders/WrapperRender;->VERTICES:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/camera/effect/renders/WrapperRender;->mConvertedVertex:[F

    mul-int/lit8 v3, v6, 0x4

    add-int/2addr v3, v7

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mConvertedVertex:[F

    iget-object v2, p0, Lcom/android/camera/effect/renders/WrapperRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v2

    sget-object v4, Lcom/android/camera/effect/renders/WrapperRender;->VERTICES:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/camera/effect/renders/WrapperRender;->mConvertedVertex:[F

    mul-int/lit8 v3, v6, 0x4

    add-int/2addr v3, v7

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/effect/renders/ShaderRender;->destroy()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WrapperRender;->releaseFilter()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/WrapperRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/renders/WrapperRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/effect/renders/WrapperRender;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "null filter!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    move-object v6, p1

    check-cast v6, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, v6, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v0, v6, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    int-to-float v2, v0

    iget v0, v6, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    int-to-float v3, v0

    iget v0, v6, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    int-to-float v4, v0

    iget v0, v6, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/renders/WrapperRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V

    goto :goto_0

    :pswitch_1
    move-object v7, p1

    check-cast v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    int-to-float v2, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    int-to-float v3, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    int-to-float v4, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/renders/WrapperRender;->drawTexture(IFFFF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawTexture(IFFFF)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mProgram:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_0
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/WrapperRender;->bindTexture(II)Z

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/WrapperRender;->setBlendEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WrapperRender;->updateViewport()V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/camera/effect/renders/WrapperRender;->checkRenderRect(FFFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget-object v1, p0, Lcom/android/camera/effect/renders/WrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/camera/effect/renders/WrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    return-void
.end method

.method protected drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mProgram:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/WrapperRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/WrapperRender;->setBlendEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WrapperRender;->updateViewport()V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/camera/effect/renders/WrapperRender;->checkRenderRect(FFFF)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/WrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/camera/effect/renders/WrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    return-void
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initFilter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->isInitialized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->init()V

    :cond_0
    return-void
.end method

.method protected initShader()V
    .locals 0

    return-void
.end method

.method protected initSupportAttriList()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected initVertexData()V
    .locals 2

    sget-object v1, Lcom/android/camera/effect/renders/WrapperRender;->VERTICES:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v0, v1, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/WrapperRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/renders/WrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0}, Lcom/android/camera/effect/renders/WrapperRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/renders/WrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public releaseFilter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->destroy()V

    :cond_0
    return-void
.end method

.method public setViewportSize(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/ShaderRender;->setViewportSize(II)V

    iput v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderWidth:F

    iput v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mRenderHeight:F

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDisplaySizeChanged(II)V

    :cond_0
    return-void
.end method
