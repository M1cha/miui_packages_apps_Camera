.class public abstract Lcom/android/camera/ActivityWithAudioCapture;
.super Lcom/android/camera/ActivityBase;
.source "ActivityWithAudioCapture.java"

# interfaces
.implements Lcom/android/camera/AudioCapture$Callback;


# static fields
.field private static final DELAY_NUMBERS:[I


# instance fields
.field private mAudioCapture:Lcom/android/camera/AudioCapture;

.field protected mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ActivityWithAudioCapture;->DELAY_NUMBERS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getShutterButton()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method protected hideDelayNumber()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    return-void
.end method

.method protected isAudioCaptureRunning()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    check-cast v0, Lcom/android/camera/ui/CameraSettingsStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateAudioOnScreenIndicator(Z)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcom/android/camera/AudioCapture;

    invoke-direct {v0, p0}, Lcom/android/camera/AudioCapture;-><init>(Lcom/android/camera/AudioCapture$Callback;)V

    iput-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    .line 33
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 103
    const-string v0, "pref_audio_capture"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    .line 106
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    check-cast v0, Lcom/android/camera/ui/CameraSettingsStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateAudioOnScreenIndicator(Z)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    check-cast v0, Lcom/android/camera/ui/CameraSettingsStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateAudioOnScreenIndicator(Z)V

    goto :goto_0

    .line 112
    :cond_2
    const v0, 0x7f0d018a

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->resetAudioCapture()V

    .line 39
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 44
    const-string v0, "pref_audio_capture"

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    .line 48
    :cond_0
    return-void
.end method

.method public releaseShutter()V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 84
    const/16 v0, 0x2bc

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityWithAudioCapture;->sendDelayedCaptureMessage(II)V

    .line 86
    :cond_0
    return-void
.end method

.method protected resetAudioCapture()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->hideDelayNumber()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    check-cast v0, Lcom/android/camera/ui/CameraSettingsStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateAudioOnScreenIndicator(Z)V

    .line 126
    return-void
.end method

.method protected abstract sendDelayedCaptureMessage(II)V
.end method

.method public setAudioCaptureICPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    const-string v2, "pref_audio_capture"

    if-eqz p1, :cond_0

    const v0, 0x7f020049

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/SettingView;->setIndicatorImage(Ljava/lang/String;I)V

    .line 99
    return-void

    .line 97
    :cond_0
    const v0, 0x7f020048

    goto :goto_0
.end method

.method protected setDelayStep(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 61
    if-ltz p1, :cond_1

    sget-object v0, Lcom/android/camera/ActivityWithAudioCapture;->DELAY_NUMBERS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/ActivityWithAudioCapture;->DELAY_NUMBERS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :cond_1
    return-void
.end method
