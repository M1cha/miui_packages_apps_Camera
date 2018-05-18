.class public Lcom/android/camera/effect/renders/BeautificationWrapperRender;
.super Lcom/android/camera/effect/renders/WrapperRender;
.source "BeautificationWrapperRender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/renders/WrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    new-instance v0, Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {p0, p4}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->adjustSize(Z)V

    return-void
.end method

.method private drawToFrameBuffer(IFFFF)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mParentFrameBufferId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mParentFrameBufferId:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/renders/NoneEffectRender;->drawTexture(IFFFFZ)V

    return-void
.end method


# virtual methods
.method public adjustSize(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x5a

    invoke-static {v2, v4, v4, v0, v1}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->adjustSize(IZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    invoke-static {v2, v4, v3, v0, v1}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->adjustSize(IZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_0
.end method

.method protected drawTexture(IFFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget-object v2, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    move v1, p1

    :cond_0
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->drawToFrameBuffer(IFFFF)V

    return-void
.end method

.method protected drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    :cond_0
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->drawToFrameBuffer(IFFFF)V

    return-void
.end method

.method public setBuffer([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    instance-of v0, v0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    check-cast v0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->passPreviewFrameToTexture([BII)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/WrapperRender;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/NoneEffectRender;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDisplaySizeChanged(II)V

    return-void
.end method

.method public setViewportSize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/WrapperRender;->setViewportSize(II)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/NoneEffectRender;->setViewportSize(II)V

    return-void
.end method
