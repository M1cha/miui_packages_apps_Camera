.class public Lcom/android/camera/camera_adapter/VideoLC;
.super Lcom/android/camera/module/VideoModule;
.source "VideoLC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateVideoParametersPreference()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoLC;->mParameters:Landroid/hardware/Camera$Parameters;

    aget v2, v0, v3

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_0
    return-void
.end method
