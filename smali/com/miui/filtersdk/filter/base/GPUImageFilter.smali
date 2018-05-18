.class public Lcom/miui/filtersdk/filter/base/GPUImageFilter;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"


# instance fields
.field private final mFragmentShader:Ljava/lang/String;

.field protected mFrameBufferTextures:[I

.field protected mFrameBuffers:[I

.field protected mFrameHeight:I

.field protected mFrameWidth:I

.field protected mGLAttribPosition:I

.field protected mGLAttribTextureCoordinate:I

.field protected mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field protected mGLProgId:I

.field protected mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mGLUniformTexture:I

.field protected mIsInitialized:Z

.field protected mOutputHeight:I

.field protected mOutputWidth:I

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextureId:I

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    iput-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    iput-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    iput v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameWidth:I

    iput v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameHeight:I

    if-eqz p1, :cond_0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mVertexShader:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFragmentShader:Ljava/lang/String;

    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->getRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    const-string/jumbo p1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    goto :goto_1
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDestroy()V

    return-void
.end method

.method public destroyFrameBuffers()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    if-nez v0, :cond_1

    :goto_1
    iput v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameWidth:I

    iput v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameHeight:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    goto :goto_1
.end method

.method public getProgram()I
    .locals 1

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    return v0
.end method

.method protected hasPendingDrawTasks()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v0

    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInitialized()V

    return-void
.end method

.method public initFrameBuffers(II)V
    .locals 10

    const/4 v8, 0x0

    const v9, 0x8d40

    const/4 v3, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    if-eqz v2, :cond_3

    :goto_1
    return-void

    :cond_0
    iget v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameWidth:I

    if-eq v2, p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->destroyFrameBuffers()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameHeight:I

    if-ne v2, p2, :cond_1

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameWidth:I

    iput p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameHeight:I

    new-array v2, v3, [I

    iput-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    new-array v2, v3, [I

    iput-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x1908

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v3, p1

    move v4, p2

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    aget v2, v2, v1

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    aget v2, v2, v1

    const v3, 0x8ce0

    invoke-static {v9, v3, v0, v2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->destroyFrameBuffers()V

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mOutputWidth:I

    iput p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mOutputHeight:I

    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 0

    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 0

    return-void
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 8

    const/16 v2, 0x1406

    const/16 v7, 0xde1

    const/4 v1, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runPendingOnDrawTasks()V

    iget-boolean v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    if-ne p1, v6, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysPre()V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysAfter()V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v6

    :cond_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v7, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0
.end method

.method public onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 8

    const/16 v2, 0x1406

    const/16 v7, 0xde1

    const/4 v1, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runPendingOnDrawTasks()V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameWidth:I

    iget v4, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameHeight:I

    invoke-static {v3, v3, v0, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    aget v0, v0, v3

    const v4, 0x8d40

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    if-ne p1, v6, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysPre()V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysAfter()V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mOutputWidth:I

    iget v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mOutputHeight:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    aget v0, v0, v3

    return v0

    :cond_0
    return v6

    :cond_1
    return v6

    :cond_2
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v7, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0
.end method

.method protected onInit()V
    .locals 2

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string/jumbo v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string/jumbo v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string/jumbo v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    return-void
.end method

.method protected onInitialized()V
    .locals 0

    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected runPendingOnDrawTasks()V
    .locals 3

    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
