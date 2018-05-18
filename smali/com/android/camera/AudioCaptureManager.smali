.class public Lcom/android/camera/AudioCaptureManager;
.super Ljava/lang/Object;
.source "AudioCaptureManager.java"

# interfaces
.implements Lcom/android/camera/AudioCapture$Callback;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioCapture:Lcom/android/camera/AudioCapture;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    iput-object p2, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CameraModule == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/camera/AudioCapture;

    invoke-direct {v0, p0}, Lcom/android/camera/AudioCapture;-><init>(Lcom/android/camera/AudioCapture$Callback;)V

    iput-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    :cond_0
    return-void
.end method

.method public hideDelayNumber()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideDelayNumber()V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f0154

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public readyToAudioCapture()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->readyToAudioCapture()Z

    move-result v0

    return v0
.end method

.method public releaseShutter()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    const/16 v1, 0x2bc

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    return-void
.end method

.method public setDelayStep(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showDelayNumber(I)V

    :cond_0
    return-void
.end method
