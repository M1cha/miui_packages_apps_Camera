.class public Lcom/android/camera/effect/renders/RenderGroup;
.super Lcom/android/camera/effect/renders/Render;
.source "RenderGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mParentFrameBufferIdOld:I

.field private mPartRenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field

.field private mRenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field

.field private mRendersMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/RenderGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    return-void
.end method

.method private initOrientation(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mJpegOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mShootRotation:F

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    :cond_0
    return-void
.end method

.method private recordRender(Lcom/android/camera/effect/renders/Render;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/effect/renders/RenderGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "already added render with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private setSize(Lcom/android/camera/effect/renders/Render;)V
    .locals 2

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPreviewWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPreviewHeight:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPreviewHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportWidth:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportHeight:I

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addPartRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->recordRender(Lcom/android/camera/effect/renders/Render;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setSize(Lcom/android/camera/effect/renders/Render;)V

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->initOrientation(Lcom/android/camera/effect/renders/Render;)V

    :cond_0
    return-void
.end method

.method public beginBindFrameBuffer(III)V
    .locals 1

    const v0, 0x8d40

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->identityAllM()V

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportWidth:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportWidth:I

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportHeight:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportHeight:I

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferId:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    return-void
.end method

.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 5

    const v4, 0x8d40

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getId()I

    move-result v0

    const v1, 0x8ce0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->identityAllM()V

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportWidth:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportWidth:I

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportHeight:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportHeight:I

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferId:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    return-void
.end method

.method public clearPartRenders()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected clearRenders()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public deleteBuffer()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/Render;->destroy()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public endBindFrameBuffer()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    return-void
.end method

.method public getPartRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    return-object v0
.end method

.method public getRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 3

    if-gez p1, :cond_0

    sget-object v0, Lcom/android/camera/effect/renders/RenderGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid render id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    return-object v0
.end method

.method public getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/effect/renders/RenderGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid render index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    return-object v0
.end method

.method protected getRenderSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRenders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isNeedInit(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isPartComplete(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeRender(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/Render;->destroy()V

    :cond_0
    return-void
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 3

    iget v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mJpegOrientation:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMirror(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    iget v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOrientation:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected setParentFrameBufferId(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreviousFrameBufferInfo(III)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/effect/renders/Render;->setPreviousFrameBufferInfo(III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setShootRotation(F)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSnapshotSize(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSticker(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setSticker(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setViewportSize(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
