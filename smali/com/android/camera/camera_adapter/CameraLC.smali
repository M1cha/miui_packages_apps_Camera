.class public Lcom/android/camera/camera_adapter/CameraLC;
.super Lcom/android/camera/module/CameraModule;
.source "CameraLC.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/LCCameraProxy;


# instance fields
.field private mIsLongShotMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/LCCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return-void
.end method

.method private getZSL()Z
    .locals 2

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/LCCameraProxy;->getZslSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lcUpdateCameraParametersPreference()V
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->setBeautyParams()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v5, v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setShowGenderAndAge="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "on"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "xiaomi-preview-rotation"

    iget v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mOrientation:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v7, v8, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v5

    :goto_1
    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "on"

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/hardware/LCCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v5, "pref_qc_camera_iso_key"

    const v7, 0x7f0f00d5

    invoke-virtual {p0, v7}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/camera_adapter/CameraLC;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/camera_adapter/CameraLC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISO="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saturation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v2}, Lcom/android/camera/hardware/LCCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "contrast="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sharpness="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v3}, Lcom/android/camera/hardware/LCCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v5}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->getZSL()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    sget-object v7, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v8, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "true"

    :goto_3
    invoke-virtual {v7, v8, v5}, Lcom/android/camera/hardware/LCCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMultiSnapStatus:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v7, Lcom/android/camera/camera_adapter/CameraLC;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    :goto_4
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "longShotMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isLongShotMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mOrientation:I

    goto/16 :goto_0

    :cond_3
    move v5, v6

    goto/16 :goto_1

    :cond_4
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "off"

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/hardware/LCCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v5, "false"

    goto :goto_3

    :cond_6
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v5, :cond_7

    iput-boolean v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_4
.end method

.method private setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pictureFlip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v2, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 3

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_0

    sget v0, Lcom/android/camera/camera_adapter/CameraLC;->BURST_SHOOTING_COUNT:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelContinuousShot()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraLC;->applyMultiShutParameters(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method protected isLongShotMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

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

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isPreviewEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "pref_qc_camera_iso_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "pref_qc_camera_iso_key"

    const v2, 0x7f0f00d5

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/camera_adapter/CameraLC;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraLC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->setTimeWatermarkIfNeed()V

    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/hardware/LCCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->lcUpdateCameraParametersPreference()V

    return-void
.end method
