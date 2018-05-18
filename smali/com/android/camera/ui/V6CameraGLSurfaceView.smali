.class public Lcom/android/camera/ui/V6CameraGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "V6CameraGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/camera/Camera;

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

.field private mCatchUnTapableEvent:Z

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private final mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mHeight:I

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v3, 0x2d0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCountingStart:J

    iput-boolean v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    new-instance v0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    mul-int/lit16 v1, v1, 0x2d0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v1, v2

    invoke-interface {v0, v3, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->recycledResources()V

    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->recycledResources()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->getEffectRender()Lcom/android/camera/effect/renders/EffectRenderGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->addChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    const-string/jumbo v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", gl10: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    move-object v1, p1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    iput p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mWidth:I

    iput p3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mHeight:I

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, p2, p3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    const-string/jumbo v1, "GLRootView"

    const-string/jumbo v2, "onSurfaceCreated"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-static {v1}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance v1, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setRenderMode(I)V

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_3

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6GestureRecognizer;->setScaleDetectorEnable(Z)V

    iput-boolean v5, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->setScaleDetectorEnable(Z)V

    iput-boolean v4, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/CameraScreenNail;Lcom/android/camera/module/encoder/MediaVideoEncoder;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
