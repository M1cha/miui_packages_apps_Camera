.class public Lcom/android/camera/camera_adapter/VideoNv;
.super Lcom/android/camera/module/VideoModule;
.source "VideoNv.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/VideoNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateVideoParametersPreference()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    sget-object v0, Lcom/android/camera/camera_adapter/VideoNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method
