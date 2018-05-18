.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/camera/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$CopyReason;,
        Lcom/android/camera/CameraScreenNail$NailListener;,
        Lcom/android/camera/CameraScreenNail$RequestRenderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimState:I

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private mDisableSwitchAnimationOnce:Z

.field private mFirstFrameArrived:Z

.field private mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLock:Ljava/lang/Object;

.field private mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

.field private mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private mRequestRenderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/CameraScreenNail$RequestRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/android/camera/CameraScreenNail;->addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraScreenNail;->updateTransformMatrix([F)V

    if-nez p3, :cond_0

    new-instance p3, Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p3, p1, p2, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    :cond_0
    invoke-interface {p1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    return-void
.end method

.method private notifyFrameAvailable(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraScreenNail$NailListener;->onFrameAvailable(I)V

    return-void
.end method

.method private postRequestListener()V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraScreenNail$RequestRenderListener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$RequestRenderListener;->requestRender()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;II)[B
    .locals 10

    const/4 v3, 0x0

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraScreenNail;->updateTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {v0, p1, v1, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v5

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareBlurRenders()V

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->acquireSurfaceTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateCapture(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "animateCapture: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHoldAndSlide()V

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateHold(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "animateHold: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHold()V

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateModuleChangeAfter()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moduleChangeAfter: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ANIM_MODULE_DRAW_PREVIEW->ANIM_MODULE_WAITING_FIRST_FRAME"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x22

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x21

    if-ne v0, v2, :cond_0

    const/16 v0, 0x22

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateModuleChangeBefore()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moduleChangeBefore: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/16 v0, 0x21

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateModuleCopyTexture()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "state=MODULE_COPY_TEXTURE"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animatePortraitZoomBefore()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x25

    if-ne v0, v2, :cond_0

    const/16 v0, 0x26

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animatePortraitZoomCopyTexture()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0x24

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "state=ANIM_PORTRAIT_ZOOM_COPY_TEXTURE"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateSlide()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateSlide()V

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateSwitchCameraBefore()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x16

    if-ne v0, v2, :cond_0

    const/16 v0, 0x17

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateSwitchCopyTexture()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "state=SWITCH_COPY_TEXTURE"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public disableSwitchAnimationOnce()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_3

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v0, p4

    move/from16 v1, p5

    if-le v0, v1, :cond_2

    sub-int v4, p4, p5

    div-int/lit8 v4, v4, 0x2

    add-int v6, p2, v4

    move/from16 p4, p5

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object/from16 v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v23

    return-void

    :cond_2
    sub-int v4, p5, p4

    :try_start_1
    div-int/lit8 v4, v4, 0x2

    add-int v7, p3, v4

    move/from16 p5, p4

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    :cond_4
    sget-object v4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "draw: firstFrame="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " surface="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v23

    return-void

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x17

    if-eq v4, v5, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x18

    if-ne v4, v5, :cond_b

    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    :goto_2
    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x19

    if-eq v4, v5, :cond_d

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :goto_3
    monitor-exit v23

    return-void

    :sswitch_0
    :try_start_3
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v23

    throw v4

    :sswitch_1
    :try_start_4
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v21

    mul-int v4, p4, v21

    mul-int v5, p5, v22

    if-le v4, v5, :cond_a

    move/from16 v19, v22

    mul-int v4, p5, v22

    div-int v18, v4, p4

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraScreenNail;->readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;II)[B

    move-result-object v17

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-interface {v4, v0, v1, v2}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewPixelsRead([BII)V

    goto/16 :goto_1

    :cond_a
    mul-int v4, p4, v21

    div-int v19, v4, p5

    move/from16 v18, v21

    goto :goto_4

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    sget-object v5, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V

    const/16 v4, 0x16

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "draw: state=SWITCH_DRAW_PREVIEW"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_3
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto/16 :goto_1

    :sswitch_4
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    const/16 v4, 0xc

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "draw: state=CAPTURE_RUNNING"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    const/16 v4, 0x20

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "draw: state=MODULE_DRAW_PREVIEW"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_6
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    sget-object v5, Lcom/android/camera/CameraScreenNail$CopyReason;->PORTRAIT_ZOOM:Lcom/android/camera/CameraScreenNail$CopyReason;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V

    const/16 v4, 0x25

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "draw: state=SWITCH_DRAW_PREVIEW"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_8
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x19

    if-eq v4, v5, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p0

    invoke-virtual/range {v8 .. v15}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v16

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_3

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x21

    if-eq v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x22

    if-ne v4, v5, :cond_12

    :cond_10
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p0

    invoke-virtual/range {v8 .. v15}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v16

    if-nez v16, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x23

    if-eq v4, v5, :cond_13

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x23

    if-eq v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x26

    if-ne v4, v5, :cond_9

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraScreenNail;->mPortraitZoomAnimManager:Lcom/android/camera/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p0

    invoke-virtual/range {v8 .. v15}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto/16 :goto_3

    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_4
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x1f -> :sswitch_5
        0x20 -> :sswitch_6
        0x24 -> :sswitch_7
        0x25 -> :sswitch_8
    .end sparse-switch
.end method

.method public drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method public getRenderRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isAnimationRunning()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isModuleSwitching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFrameAvailable: surface changed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFrameAvailable first frame arrived."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraScreenNail;->notifyFrameAvailable(I)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x18

    if-ne v0, v2, :cond_4

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SWITCH_WAITING_FIRST_FRAME->SWITCH_RESUME"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startResume()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/CameraScreenNail;->notifyFrameAvailable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    return-void

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x22

    if-ne v0, v2, :cond_2

    const/16 v0, 0x23

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "MODULE_WAITING_FIRST_FRAME->MODULE_RESUME"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public releaseBitmapIfNeeded()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$NailListener;->isKeptBitmapTexture()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    :cond_0
    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release: state=NONE"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public renderBitmapToCanvas(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    return-void
.end method

.method public renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    return-void
.end method

.method public requestReadPixels()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetFrameAvailableFlag()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 8

    const/16 v0, 0x2d0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "setPreviewFrameLayoutSize: %dx%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, p1

    :cond_0
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceWidth:I

    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceHeight:I

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    mul-int/lit16 v0, p2, 0x2d0

    :try_start_1
    div-int p2, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public switchCameraDone()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchDone: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x17

    if-ne v0, v2, :cond_0

    const/16 v0, 0x18

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public switchModule()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    return-void
.end method

.method protected updateExtraTransformMatrix([F)V
    .locals 9

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v2}, Lcom/android/camera/SwitchAnimManager;->getExtScaleX()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v2}, Lcom/android/camera/SwitchAnimManager;->getExtScaleY()F

    move-result v1

    :cond_1
    cmpl-float v2, v0, v4

    if-nez v2, :cond_2

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {p1, v5, v8, v8, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p1, v5, v0, v1, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {p1, v5, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_3
    return-void

    :cond_4
    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v3, 0x19

    if-ne v2, v3, :cond_1

    goto :goto_0
.end method
