.class public Lcom/miui/filtersdk/filter/NewBeautificationFilter;
.super Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;
.source "NewBeautificationFilter.java"


# instance fields
.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mbGetValidTexureID:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    return-void
.end method

.method static synthetic access$002(Lcom/miui/filtersdk/filter/NewBeautificationFilter;I)I
    .locals 0

    iput p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mTextureId:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/filtersdk/filter/NewBeautificationFilter;)Lcom/miui/filtersdk/beauty/BeautyProcessor;
    .locals 1

    iget-object v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/filtersdk/filter/NewBeautificationFilter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    return p1
.end method

.method private initBeauty()V
    .locals 3

    iget-object v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    iget v1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    iget v2, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->init(II)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->onInit()V

    invoke-direct {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->initBeauty()V

    return-void
.end method

.method public initBeautyProcessor(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    iput p2, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    return-void

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->onDestroy()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mTextureId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    iget-object v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->release()V

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->onDisplaySizeChanged(II)V

    iget-object v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->onDisplaySizeChanged(II)V

    return-void
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 8

    const/16 v2, 0x1406

    const/16 v7, 0xde1

    const/4 v1, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->runPendingOnDrawTasks()V

    iget-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mTextureId:I

    if-ne v0, v6, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->onDrawArraysPre()V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->onDrawArraysAfter()V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v6

    :cond_2
    iget-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-eqz v0, :cond_0

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mTextureId:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLUniformTexture:I

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

    iget-object v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->runPendingOnDrawTasks()V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mTextureId:I

    if-ne v0, v6, :cond_3

    :cond_0
    return v6

    :cond_1
    return v6

    :cond_2
    return v6

    :cond_3
    iget-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mFrameWidth:I

    iget v4, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mFrameHeight:I

    invoke-static {v3, v3, v0, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mFrameBuffers:[I

    aget v0, v0, v3

    const v4, 0x8d40

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mTextureId:I

    if-ne v0, v6, :cond_5

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->onDrawArraysPre()V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->onDrawArraysAfter()V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mOutputWidth:I

    iget v1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mOutputHeight:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mFrameBufferTextures:[I

    aget v0, v0, v3

    return v0

    :cond_5
    iget-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-eqz v0, :cond_4

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mTextureId:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0
.end method

.method protected onInit()V
    .locals 2

    const-string/jumbo v0, "attribute vec4 a_position;                         \nattribute vec2 a_texCoord;                         \nvarying vec2 v_texCoord;                           \nvoid main(){                                       \n   gl_Position = a_position;                       \n   v_texCoord = a_texCoord;                        \n}                                                  \n"

    const-string/jumbo v1, "precision highp float;                             \nvarying vec2 v_texCoord;                           \nuniform sampler2D texture;                         \nvoid main (void){                                  \n   vec3 rgb = texture2D(texture, v_texCoord).rgb;  \n   gl_FragColor = vec4(rgb, 1.0);                  \n}                                                  \n"

    invoke-static {v0, v1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLProgId:I

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLProgId:I

    const-string/jumbo v1, "a_position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribPosition:I

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLProgId:I

    const-string/jumbo v1, "a_texCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLAttribTextureCoordinate:I

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLProgId:I

    const-string/jumbo v1, "texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mGLUniformTexture:I

    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    iget v1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->initFrameBuffers(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mIsInitialized:Z

    return-void
.end method

.method public passPreviewFrameToTexture([BII)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->hasPendingDrawTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/filtersdk/filter/NewBeautificationFilter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/filtersdk/filter/NewBeautificationFilter$1;-><init>(Lcom/miui/filtersdk/filter/NewBeautificationFilter;[BII)V

    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->runOnDraw(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
