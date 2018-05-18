.class public Lcom/android/camera/module/BeautyHandler;
.super Ljava/lang/Object;
.source "BeautyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;

.field private mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/BeautyHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iput-object p1, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    return-void
.end method

.method private resumeMakeupRender()V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->needDestroyMakeup()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v1

    sget v2, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    :cond_1
    return-void
.end method


# virtual methods
.method public onBeautyStatusChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->setPreviewCallback()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    iput-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    goto :goto_0
.end method

.method public onCameraSwitched(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/BeautyParameters;->setIsFrontCamera(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->setPreviewCallback()V

    return-void
.end method

.method public onCreate(IILcom/android/camera/Camera;)V
    .locals 2

    invoke-virtual {p3}, Lcom/android/camera/Camera;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/BeautyParameters;->setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/effect/BeautyParameters;->setIsFrontCamera(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/BeautyParameters;->setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->setBuffer([BII)V

    :goto_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/BeautyHandler;->resumeMakeupRender()V

    goto :goto_0
.end method

.method public onStop(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDestroyMakeup(Z)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    return-void
.end method

.method public releaseMakeupRender()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->destroy()V

    iput-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    :cond_0
    return-void
.end method

.method public setPreviewCallback()V
    .locals 2

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->needPreviewCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method
