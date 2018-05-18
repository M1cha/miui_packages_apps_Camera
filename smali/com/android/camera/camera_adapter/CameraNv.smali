.class public Lcom/android/camera/camera_adapter/CameraNv;
.super Lcom/android/camera/module/CameraModule;
.source "CameraNv.java"


# static fields
.field private static RAW_META_DATA:I

.field private static sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNSLBurstCount:I

.field private mPreviewPausedDisabled:Z

.field private mRawBuffer:[B

.field private mRawBufferSize:I

.field private mSetAohdrLater:Z

.field private mSkipSetNSLAfterMultiShot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xf4240

    sput v0, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const-string/jumbo v0, "CameraNv"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    return-void
.end method

.method private allocRawBufferIfNeeded()V
    .locals 5

    const/4 v4, 0x0

    sget v2, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    const v3, 0x190aa00

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    if-ge v2, v1, :cond_1

    :cond_0
    :try_start_0
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    const-string/jumbo v2, "CameraNv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Raw OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNSLBuffersNeededCount()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getZSL()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0141

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v3

    :cond_3
    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00de

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    return v4
.end method

.method private getPreviewPausedDisabled()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    const-string/jumbo v0, "CameraNv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreviewPausedDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    return v0

    :cond_2
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00de

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "on"

    return-object v0
.end method

.method private updateNvCameraParametersPreference()V
    .locals 15

    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v11, -0x64

    if-lt v6, v11, :cond_0

    const/16 v11, 0x64

    if-gt v6, v11, :cond_0

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v6}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    :cond_0
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saturation="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "contrast="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v11, -0x64

    if-lt v8, v11, :cond_1

    const/16 v11, 0x64

    if-gt v8, v11, :cond_1

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v8}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setEdgeEnhancement(Landroid/hardware/Camera$Parameters;I)V

    :cond_1
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sharpness="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAutoRotation(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAutoRotation(Landroid/hardware/Camera$Parameters;Z)V

    :cond_2
    const v11, 0x7f0f00d5

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "pref_qc_camera_iso_key"

    invoke-virtual {p0, v11, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const v11, 0x7f0b002d

    invoke-static {v5, v11}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invalid iso "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    :cond_3
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pictureISO="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "pref_qc_camera_exposuretime_key"

    const v12, 0x7f0f0171

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "exposureTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v11

    if-eqz v11, :cond_a

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "handNight=true"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    :cond_5
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v11

    iput v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getNSLBuffersNeededCount()I

    move-result v0

    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v11, :cond_7

    iget v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eq v11, v0, :cond_7

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    if-nez v0, :cond_6

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "normal"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    :cond_6
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v11

    iput v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "NSLNumBuffers="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v11, :cond_11

    iget v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v11, :cond_10

    if-lez v0, :cond_10

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "shot2shot"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    :goto_1
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v13, Lcom/android/camera/camera_adapter/CameraNv;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    :goto_2
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v11, "off"

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "off"

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_8
    :goto_3
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_9
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getPreviewPausedDisabled()Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;Z)V

    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "previewDisabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v14, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13, v14}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v11

    :goto_4
    if-nez v11, :cond_15

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v11

    if-eqz v11, :cond_15

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setTimeWatermark="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v14, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13, v14}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->setBeautyParams()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v10

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v11, v10}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setShowGenderAndAge="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "setMultiFaceBeautify=on"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v11

    if-eqz v11, :cond_b

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v13, 0xd

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "rawData=true"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->allocRawBufferIfNeeded()V

    goto/16 :goto_0

    :cond_b
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v11

    if-eqz v11, :cond_c

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "aoHDR=true"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "morphoHDR=true"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v11, :cond_e

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    :cond_e
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-eqz v11, :cond_f

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_f
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    :cond_10
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "normal"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_11
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v11, :cond_12

    iget v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v11, :cond_12

    if-lez v0, :cond_12

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v11

    if-eqz v11, :cond_12

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    :goto_6
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "normal"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_12
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_6

    :cond_13
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_3

    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_15
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "off"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_5
.end method


# virtual methods
.method protected isLongShotMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected needSetupPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v3, :cond_2

    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->resetMutexModeManually()V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onPause()V

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "pref_focus_position_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setColorTemperature(Landroid/hardware/Camera$Parameters;I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "horizontal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "CameraNv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "jpegHorizontalFlip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->updateNvCameraParametersPreference()V

    return-void
.end method
