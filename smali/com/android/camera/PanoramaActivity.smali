.class public Lcom/android/camera/PanoramaActivity;
.super Lcom/android/camera/ActivityBase;
.source "PanoramaActivity.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ModeChangeManager$OnModeChangeListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaActivity$WaitProcessorTask;,
        Lcom/android/camera/PanoramaActivity$ProgressData;,
        Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;,
        Lcom/android/camera/PanoramaActivity$MosaicJpeg;,
        Lcom/android/camera/PanoramaActivity$SetupCameraThread;
    }
.end annotation


# instance fields
.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureLayout:Landroid/view/View;

.field private mCaptureState:I

.field private mCurrentRatation:I

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mHorizontalViewAngle:F

.field private mIndicator:Landroid/graphics/Bitmap;

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mIsSimpleMode:Z

.field private mLocation:Landroid/location/Location;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicHandler:Landroid/os/Handler;

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mMosaicThread:Landroid/os/HandlerThread;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressArea:Landroid/view/View;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewControlArea:Landroid/view/View;

.field private mReviewLayout:Landroid/view/View;

.field private mReviewRotate:Lcom/android/camera/ui/RotateLayout;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mStartMoveHintArea:Landroid/view/View;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    .line 131
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCurrentRatation:I

    .line 1299
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->setupCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/PanoramaActivity;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaActivity;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mProgressArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mStartMoveHintArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->switchToCameraMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PanoramaActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mUsingFrontCamera:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/PanoramaActivity;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/camera/PanoramaActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/PanoramaActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/PanoramaActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetToPreview()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    .line 1001
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1002
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1003
    monitor-exit v1

    .line 1004
    return-void

    .line 1003
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 461
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 462
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 469
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 471
    .local v0, isLandscape:Z
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 472
    :cond_0
    new-instance v1, Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 475
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 476
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetToPreview()V

    .line 479
    :cond_1
    return-void

    .line 465
    .end local v0           #isLandscape:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 466
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 467
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    goto :goto_0

    .line 469
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 437
    return-void
.end method

.method private createContentView()V
    .locals 5

    .prologue
    const v4, 0x7f0a0009

    const/4 v3, 0x0

    .line 634
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setContentView(I)V

    .line 636
    iput v3, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 638
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 640
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    .line 641
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 642
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 643
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 644
    const v0, 0x7f0a000a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    .line 645
    const v0, 0x7f0a000b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColorFast:I

    .line 646
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 647
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    .line 648
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v2, Lcom/android/camera/PanoramaActivity$5;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaActivity$5;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 670
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    .line 672
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 673
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 675
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 676
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 679
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 680
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 681
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    .line 682
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    .line 684
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    .line 687
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    .line 688
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    .line 689
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    .line 692
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    .line 693
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 695
    new-instance v0, Lcom/android/camera/ModeChangeManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ModeChangeManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    .line 696
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModeChangeManager;->setOnModeChangeListener(Lcom/android/camera/ModeChangeManager$OnModeChangeListener;)V

    .line 699
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 700
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 702
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    .line 703
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/PanoramaActivity$6;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaActivity$6;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    const v1, 0x7f0d01ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 709
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 710
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 711
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    .line 712
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mStartMoveHintArea:Landroid/view/View;

    .line 713
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mProgressArea:Landroid/view/View;

    .line 714
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewControlArea:Landroid/view/View;

    .line 716
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v1, 0x7f040028

    invoke-direct {v0, p0, v1}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 717
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->setOrientationIndicator(I)V

    .line 718
    return-void
.end method

.method private getRotables()[Lcom/android/camera/ui/Rotatable;
    .locals 3

    .prologue
    .line 742
    const/16 v0, 0xf

    new-array v1, v0, [Lcom/android/camera/ui/Rotatable;

    const/4 v2, 0x0

    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v1, v0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mStartMoveHintArea:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mProgressArea:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewControlArea:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    aput-object v2, v1, v0

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v1, v0

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    aput-object v2, v1, v0

    .line 759
    return-object v1
.end method

.method private hideTooFastIndication()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 608
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    .line 609
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 1093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private initializeSettingScreen()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/android/camera/CameraModeManager;

    invoke-direct {v0, p0, v1, p0, p0}, Lcom/android/camera/CameraModeManager;-><init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/camera/PanoramaActivity;->mIsSimpleMode:Z

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/camera/ModeManager;->initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V

    .line 353
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 354
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget v2, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 355
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    const-string v1, "pref_camera_panoramamode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setCurrentMode(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->updateExitView(Landroid/widget/TextView;)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 358
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 360
    return-void

    :cond_1
    move v0, v1

    .line 351
    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1296
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1297
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1289
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1290
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1291
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1292
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 3

    .prologue
    .line 859
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 860
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 862
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 863
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 864
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 865
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 866
    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 868
    :cond_0
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    .line 996
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 997
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 386
    .local v0, cameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 387
    :cond_0
    invoke-static {p0, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 388
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I

    .line 389
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mUsingFrontCamera:Z

    .line 390
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 373
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 374
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 375
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 378
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1022
    iput v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 1028
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 1029
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mStartMoveHintArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mProgressArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 1036
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1285
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1286
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->reset()V

    .line 1040
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->startCameraPreview()V

    .line 1041
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    .line 991
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 992
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 10

    .prologue
    .line 1059
    if-eqz p1, :cond_1

    .line 1060
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v0, v1, v2}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 1062
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    .line 1063
    iget-wide v2, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mLocation:Landroid/location/Location;

    const/4 v9, 0x0

    move-object v0, p0

    move v5, p4

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;

    move-result-object v0

    .line 1065
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1066
    if-eqz v0, :cond_0

    .line 1067
    invoke-static {v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1068
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mLocation:Landroid/location/Location;

    iget-wide v3, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v1, p4, v2, v3, v4}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    .line 1069
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/Storage;->updateImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)Z

    .line 1076
    :goto_0
    return-object v0

    .line 1072
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    goto :goto_0

    .line 1076
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 10
    .parameter "degree"

    .prologue
    const/4 v9, 0x1

    .line 721
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->getRotables()[Lcom/android/camera/ui/Rotatable;

    move-result-object v4

    .line 722
    .local v4, rotables:[Lcom/android/camera/ui/Rotatable;
    const/4 v7, 0x4

    new-array v6, v7, [Landroid/view/View;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/android/camera/PanoramaActivity;->mStartMoveHintArea:Landroid/view/View;

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/camera/PanoramaActivity;->mProgressArea:Landroid/view/View;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/camera/PanoramaActivity;->mReviewControlArea:Landroid/view/View;

    aput-object v8, v6, v7

    .line 723
    .local v6, views:[Landroid/view/View;
    move-object v0, v6

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 724
    .local v5, v:Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->getMarginValue(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/camera/ActivityBase;->updateRotateLayout(ILandroid/view/View;I)V

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    .end local v5           #v:Landroid/view/View;
    :cond_0
    move-object v0, v4

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 727
    .local v3, r:Lcom/android/camera/ui/Rotatable;
    if-eqz v3, :cond_1

    .line 728
    invoke-interface {v3, p1, v9}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 726
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 731
    .end local v3           #r:Lcom/android/camera/ui/Rotatable;
    :cond_2
    iput p1, p0, Lcom/android/camera/PanoramaActivity;->mCurrentRatation:I

    .line 732
    return-void
.end method

.method private setupCamera()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->openCamera()V

    .line 364
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 365
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 366
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 367
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 368
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x0

    .line 393
    invoke-static {}, Lcom/android/camera/Device;->panoramaPreviewSize()Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, size:Ljava/lang/String;
    const/16 v7, 0x78

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 395
    .local v1, index:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 396
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Can not find suitable preview size for panorama"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 398
    :cond_0
    invoke-virtual {v5, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    .line 399
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    .line 401
    const-string v7, "PanoramaActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preview h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v7, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p1, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 403
    iget v7, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-static {v7, v8}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Landroid/app/Activity;I)V

    .line 406
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 408
    .local v2, last:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v4, v7, v10

    .line 409
    .local v4, minFps:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v8, 0x1

    aget v3, v7, v8

    .line 410
    .local v3, maxFps:I
    invoke-virtual {p1, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 411
    const-string v7, "PanoramaActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preview fps: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    .line 414
    .local v6, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 415
    iget-object v7, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 422
    :goto_0
    invoke-virtual {p1, v10}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 424
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v7

    iput v7, p0, Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F

    .line 425
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v7

    iput v7, p0, Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F

    .line 426
    return-void

    .line 418
    :cond_1
    const-string v7, "PanoramaActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot set the focus mode to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " becuase the mode is not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/16 v4, 0x10e

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1044
    if-eqz p1, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1046
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCurrentRatation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCurrentRatation:I

    if-ne v0, v4, :cond_2

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1052
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1056
    return-void

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 601
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    .line 602
    return-void
.end method

.method private startCameraPreview()V
    .locals 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1255
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 1260
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1262
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1263
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1265
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1266
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1271
    const-string v0, "PanoramaActivity"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1274
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 1275
    return-void
.end method

.method private stopCapture(Z)V
    .locals 3
    .parameter "aborted"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 561
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 562
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideTooFastIndication()V

    .line 563
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 564
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mIsSimpleMode:Z

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 568
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 570
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 572
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 574
    new-instance v0, Lcom/android/camera/PanoramaActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$4;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setEnabled(Z)V

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraPickerButton;->setEnabled(Z)V

    .line 594
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 595
    return-void
.end method

.method private switchToCameraMode()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->switchToOtherMode(I)V

    .line 894
    return-void
.end method

.method private switchToOtherMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v1}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 442
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 444
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SecurePictureNum"

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSecureNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x41c8

    .line 613
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 618
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->showTooFastIndication()V

    .line 624
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    float-to-int v0, p3

    .line 628
    .local v0, angleInMajorDirection:I
    :goto_1
    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mCurrentRatation:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mCurrentRatation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    :cond_1
    neg-int v0, v0

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 631
    return-void

    .line 622
    .end local v0           #angleInMajorDirection:I
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideTooFastIndication()V

    goto :goto_0

    .line 624
    :cond_4
    float-to-int v0, p4

    goto :goto_1
.end method


# virtual methods
.method public generateFinalMosaic(Z)Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1201
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v0

    .line 1202
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1237
    :goto_0
    return-object v5

    .line 1204
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1205
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1209
    if-nez v1, :cond_2

    .line 1210
    const-string v0, "PanoramaActivity"

    const-string v1, "getFinalMosaicNV21() returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 1214
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 1215
    add-int/lit8 v2, v0, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 1217
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 1219
    const-string v2, "PanoramaActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", W = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1223
    :cond_3
    const-string v1, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width|height <= 0!!, len = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", W = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", H = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0

    .line 1228
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1229
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1230
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1232
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;[BII)V

    goto/16 :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    const-string v1, "PanoramaActivity"

    const-string v2, "Exception in storing final mosaic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0
.end method

.method protected getMarginValue(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewControlArea:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 429
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 430
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 432
    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method protected initializeCameraPickerButton(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 3

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-nez v0, :cond_0

    .line 873
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraPickerButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    .line 875
    :cond_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    :goto_0
    return-void

    .line 880
    :cond_1
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    invoke-direct {v0, p0}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 881
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    const v2, 0x7f060003

    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    new-instance v2, Lcom/android/camera/PanoramaActivity$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaActivity$8;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/CameraPickerButton;->initializeForPanorama(Lcom/android/camera/PreferenceGroup;Landroid/view/View$OnClickListener;)V

    .line 888
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPickerButton;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    goto :goto_0
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 899
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->switchToCameraMode()V

    goto :goto_0

    .line 904
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 1356
    return-void
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 211
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->loadCameraPreferences()V

    .line 213
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->createContentView()V

    .line 215
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 216
    invoke-virtual {p0, v4}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(Z)V

    .line 219
    new-instance v2, Lcom/android/camera/PanoramaActivity$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaActivity$1;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 241
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "panoramaAsynchronousMosaicing"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicThread:Landroid/os/HandlerThread;

    .line 242
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 243
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicHandler:Landroid/os/Handler;

    .line 244
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 245
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "Panorama"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 247
    new-instance v2, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-direct {v2, p0, p0}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;-><init>(Lcom/android/camera/PanoramaActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    .line 249
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 251
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 252
    .local v0, appRes:Landroid/content/res/Resources;
    const v2, 0x7f0d0106

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    .line 253
    const v2, 0x7f0d0109

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    .line 254
    const v2, 0x7f0d00ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    .line 255
    const v2, 0x7f0d0108

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 256
    const v2, 0x7f0d0107

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 259
    new-instance v2, Lcom/android/camera/PanoramaActivity$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaActivity$2;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    .line 328
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mIsSimpleMode:Z

    .line 329
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ed

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mIndicator:Landroid/graphics/Bitmap;

    .line 330
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initSettingButton()V

    .line 331
    iget-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mIsSimpleMode:Z

    if-nez v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 334
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 339
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 340
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 835
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 838
    :cond_1
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 839
    const-string p2, "mode_none"

    .line 843
    :cond_2
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    const-string v0, "pref_camera_coloreffect_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 846
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PanoramaActivity$7;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/PanoramaActivity$7;-><init>(Lcom/android/camera/PanoramaActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 852
    :cond_3
    invoke-static {p0, p2}, Lcom/android/camera/MenuHelper;->gotoSimpleModeCamera(Landroid/app/Activity;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 770
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 794
    :goto_0
    return v1

    .line 773
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 794
    :cond_1
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 775
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 781
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 788
    :pswitch_3
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->handleVolumeKeyEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 773
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 799
    packed-switch p1, :pswitch_data_0

    .line 804
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 801
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 802
    const/4 v0, 0x1

    goto :goto_0

    .line 799
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "oldr"
    .parameter "oldb"

    .prologue
    .line 487
    invoke-super/range {p0 .. p9}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 488
    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    goto :goto_0
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 452
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 453
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->switchToOtherMode(I)V

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1098
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1099
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1101
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1102
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1107
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    if-ne v0, v1, :cond_1

    .line 1108
    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    .line 1109
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->reset()V

    .line 1112
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->releaseCamera()V

    .line 1113
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1117
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v0, :cond_2

    .line 1118
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 1119
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 1122
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    .line 1123
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1125
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1127
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetScreenOn()V

    .line 1128
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1129
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1131
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1136
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1137
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1138
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1140
    iput v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 1142
    new-instance v0, Lcom/android/camera/PanoramaActivity$SetupCameraThread;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PanoramaActivity$SetupCameraThread;-><init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1145
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v0, :cond_1

    .line 1151
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7f0d0002

    :goto_1
    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 1190
    :goto_2
    return-void

    .line 1151
    :cond_0
    const v0, 0x7f0d0001

    goto :goto_1

    .line 1156
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_2

    .line 1157
    const v0, 0x7f0d0003

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_2

    .line 1162
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1167
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1168
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1170
    new-instance v0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;-><init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1182
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getLastThumbnail()V

    .line 1183
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1184
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/ActivityBase;->initializeCameraControls(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V

    .line 1185
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1187
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initializeSettingScreen()V

    goto :goto_2

    .line 1172
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1175
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    .line 1176
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1177
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1178
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1179
    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    goto :goto_3

    .line 1146
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    .prologue
    .line 1338
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 4

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 818
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 820
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 821
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->startCapture()V

    goto :goto_0

    .line 824
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    goto :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0
    .parameter "pressed"
    .parameter "fromWhat"

    .prologue
    .line 831
    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 1331
    const/4 v0, 0x0

    return v0
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 1015
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1279
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1280
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1281
    :cond_0
    return-void
.end method

.method protected performShutterClick()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 765
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 910
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 911
    new-instance v0, Lcom/android/camera/PanoramaActivity$9;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$9;-><init>(Lcom/android/camera/PanoramaActivity;)V

    .line 935
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 936
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 939
    new-instance v0, Lcom/android/camera/PanoramaActivity$10;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$10;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 986
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->reportProgress()V

    .line 987
    return-void
.end method

.method public startCapture()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 514
    iput-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    .line 516
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/MosaicPreviewRenderer;->setFramesUpdated(Z)V

    .line 518
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 519
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 520
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mIsSimpleMode:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLocation:Landroid/location/Location;

    .line 524
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 525
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/PanoramaActivity$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaActivity$3;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 544
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setEnabled(Z)V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraPickerButton;->setEnabled(Z)V

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 550
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mStartMoveHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mProgressArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I

    .line 557
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOn()V

    .line 558
    return-void
.end method
