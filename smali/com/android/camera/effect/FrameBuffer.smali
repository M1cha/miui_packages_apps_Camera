.class public Lcom/android/camera/effect/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# instance fields
.field private mFrameBufferID:[I

.field private mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mTexture:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 5

    const v4, 0x8d40

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {v0, p2, p3, v1}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    aget v0, v0, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getId()I

    move-result v0

    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v4, v1, v2, v0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v4, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iput-object p1, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V
    .locals 5

    const/4 v1, 0x1

    const v4, 0x8d40

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    aget v0, v0, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getId()I

    move-result v0

    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v4, v1, v2, v0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v4, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iput-object p2, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    iput-object p1, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FrameBuffer"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "Camera delete framebuffer thread=%d id=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteFrameBuffer(I)V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/RawTexture;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v0

    return v0
.end method
