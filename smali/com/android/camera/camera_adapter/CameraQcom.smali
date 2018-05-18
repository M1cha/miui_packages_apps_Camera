.class public Lcom/android/camera/camera_adapter/CameraQcom;
.super Lcom/android/camera/module/CameraModule;
.source "CameraQcom.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/QcomCameraProxy;


# instance fields
.field protected mEnableMetaData:Z

.field private mIsLongShotMode:Z

.field private mParallelProcessingTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParallelProcessingTitle:Ljava/lang/String;

    return-void
.end method

.method private couldEnableChromaFlash()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "af-bracket-on"

    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->getUbiFocus(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_qc_camera_iso_key"

    const v1, 0x7f0f00d5

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    const v1, 0x7f0f0171

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "on"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isBokehOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "on"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "on"

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "off"

    return-object v0

    :cond_3
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isDefaultManualExposure()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v0, "off"

    return-object v0

    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isFrontRemosicSensor()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "off"

    return-object v0

    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->isZSLHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    :cond_6
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    const-string/jumbo v0, "off"

    return-object v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method private isSupportParallelProcess()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sget-boolean v1, Lcom/android/camera/Device;->IS_C8:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->getMorphoHHT(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    :cond_4
    return v0

    :cond_5
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isBokehOn()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    :cond_8
    return v0
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v19

    if-eqz v19, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v19

    :goto_0
    if-nez v19, :cond_1b

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "disable meta data"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    :goto_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v19

    if-eqz v19, :cond_3

    const-string/jumbo v19, "pref_qc_camera_exposuretime_key"

    const v20, 0x7f0f0171

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sget-object v20, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ltz v8, :cond_3

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/hardware/QcomCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "exposureTime="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/hardware/QcomCameraProxy;->getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result v19

    if-eqz v19, :cond_2

    div-int/lit16 v8, v8, 0x3e8

    :cond_2
    const/16 v19, 0x3e8

    move/from16 v0, v19

    if-lt v8, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v19

    if-eqz v19, :cond_1d

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "on"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setPortraitMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "portrait mode on"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFaceInfoWaterMark()Z

    move-result v19

    if-eqz v19, :cond_4

    sget-object v20, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v19

    if-nez v19, :cond_1f

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v19

    if-nez v19, :cond_1e

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v19

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setBeautyParams()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setShowGenderAndAge="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v19

    if-nez v19, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "xiaomi-preview-rotation"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    move/from16 v19, v0

    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_7
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isSupportBurstDenoise()Z

    move-result v19

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21

    const-string/jumbo v7, "denoise-off"

    :goto_5
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "denoise="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/hardware/QcomCameraProxy;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraState:I

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const-string/jumbo v19, "pref_qc_camera_iso_key"

    const v20, 0x7f0f00d5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_9

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ISO="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/android/camera/hardware/QcomCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sget-object v20, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ltz v12, :cond_a

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "saturation="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/hardware/QcomCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sget-object v20, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ltz v5, :cond_b

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "contrast="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/hardware/QcomCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;I)V

    :cond_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sget-object v20, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ltz v14, :cond_c

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "sharpness="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/android/camera/hardware/QcomCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;I)V

    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v19

    const-string/jumbo v20, "pref_camera_touchafaec_key"

    const v21, 0x7f0f00b4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_d

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "touchAfAec="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_d
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v19

    if-eqz v19, :cond_e

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setBeautyRank(Landroid/hardware/Camera$Parameters;Z)V

    :cond_e
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setAnalyzeAgeGender(Landroid/hardware/Camera$Parameters;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setPictureFlipIfNeed()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mFaceDetectionEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "on"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_6
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string/jumbo v20, "ae-bracket-hdr"

    const-string/jumbo v21, "Off"

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->disableHandNight(Landroid/hardware/Camera$Parameters;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "af-bracket-off"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setUbiFocus(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "off"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setAoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "false"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v19

    if-nez v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->enableHandNight(Landroid/hardware/Camera$Parameters;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "handNight=true"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getZSL()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ZSL="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "on"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    invoke-static {}, Lcom/android/camera/Device;->shouldRestartPreviewAfterZslSwitch()Z

    move-result v19

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraState:I

    move/from16 v19, v0

    if-eqz v19, :cond_27

    const/16 v19, 0x1

    :goto_8
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mRestartPreview:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "on"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_2d

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    sget-boolean v19, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v19, :cond_12

    sget-boolean v19, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v19, :cond_2c

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string/jumbo v20, "num-snaps-per-shutter"

    sget v21, Lcom/android/camera/camera_adapter/CameraQcom;->BURST_SHOOTING_COUNT:I

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setTimeWatermarkIfNeed()V

    :cond_13
    :goto_b
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "longShotMode="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isLongShotMode()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30

    const-string/jumbo v19, "torch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    :goto_c
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedChromaFlash()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->couldEnableChromaFlash()Z

    move-result v19

    if-eqz v19, :cond_31

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v19

    const-string/jumbo v20, "pref_auto_chroma_flash_key"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0003

    invoke-static/range {v22 .. v22}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_31

    const-string/jumbo v4, "chroma-flash-on"

    :goto_d
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setChromaFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_14
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "chromaFlash="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/hardware/QcomCameraProxy;->getChromaFlash(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedMetadata()Z

    move-result v19

    if-eqz v19, :cond_18

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isBackCamera()Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v19

    if-nez v19, :cond_15

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v19

    if-eqz v19, :cond_16

    :cond_15
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v19

    if-eqz v19, :cond_16

    const/4 v11, 0x5

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/camera/Device;->isSupportedASD(Z)Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    move/from16 v19, v0

    if-eqz v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_32

    if-nez v11, :cond_32

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_32

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_32

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v19

    xor-int/lit8 v3, v19, 0x1

    :goto_e
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "asdEnable="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "scene-detect"

    if-eqz v3, :cond_33

    const-string/jumbo v19, "on"

    :goto_f
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_17

    const/4 v11, 0x3

    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/camera/camera_adapter/CameraQcom;->setMetaCallback(I)V

    :cond_18
    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result v19

    if-eqz v19, :cond_19

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupportParallelProcess()Z

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V

    :cond_19
    return-void

    :cond_1a
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_1b
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    goto/16 :goto_1

    :cond_1c
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    goto/16 :goto_1

    :cond_1d
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "off"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setPortraitMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "portrait mode off"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1e
    const/16 v19, 0x1

    goto/16 :goto_3

    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    move/from16 v19, v0

    goto/16 :goto_4

    :cond_21
    const-string/jumbo v7, "denoise-on"

    goto/16 :goto_5

    :cond_22
    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "off"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v19

    if-eqz v19, :cond_24

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "rawData=true"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v19

    if-eqz v19, :cond_25

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "on"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setAoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "aoHDR=true"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v19

    if-eqz v19, :cond_26

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "true"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "morphoHDR=true"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v19

    if-eqz v19, :cond_10

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "af-bracket-on"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setUbiFocus(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "ubiFocus=true"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_27
    const/16 v19, 0x0

    goto/16 :goto_8

    :cond_28
    const/16 v19, 0x0

    goto/16 :goto_8

    :cond_29
    const-string/jumbo v19, "off"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-static {}, Lcom/android/camera/Device;->shouldRestartPreviewAfterZslSwitch()Z

    move-result v19

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraState:I

    move/from16 v19, v0

    if-eqz v19, :cond_2a

    const/16 v19, 0x1

    :goto_10
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mRestartPreview:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "off"

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v19, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/hardware/QcomCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    goto/16 :goto_9

    :cond_2a
    const/16 v19, 0x0

    goto :goto_10

    :cond_2b
    const/16 v19, 0x0

    goto :goto_10

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto/16 :goto_a

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    sget-boolean v19, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v19, :cond_2e

    sget-boolean v19, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v19, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string/jumbo v20, "num-snaps-per-shutter"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_b

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto/16 :goto_b

    :cond_30
    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_31
    const-string/jumbo v4, "chroma-flash-off"

    goto/16 :goto_d

    :cond_32
    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_33
    const-string/jumbo v19, "off"

    goto/16 :goto_f
.end method

.method private setPictureFlipIfNeed()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "flip-h"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pictureFlip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "flip-v"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 3

    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setParallelProcessFilePath(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longShotMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isLongShotMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected disableHandNight(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableHandNight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method protected enableHandNight(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enableHandNight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isSceneMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->getMaxPictureSizeSafely(Ljava/util/List;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getSupportedPortraitPictureSizes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBurstDelayTime()I
    .locals 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    return v0

    :cond_0
    const/16 v0, 0xc8

    return v0
.end method

.method protected getParallelProcessingFileTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParallelProcessingTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getSupportedPortraitPictureSizes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v4, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedPortraitPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v4, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getSupportedPortraitPictureSizes return null"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom$1;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraQcom$1;-><init>(Lcom/android/camera/camera_adapter/CameraQcom;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getPortraitZoom()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-static {v2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    return-object v2
.end method

.method protected isAutoRestartInNonZSL()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isFrontRemosicSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLongShotMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    return v0
.end method

.method protected isParallelProcessing()Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->isParallelProcess(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_HONGMI:Z

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected needSetupPreview()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "persist.camera.feature.restart"

    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->getInternalPreviewSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "jpeg"

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "picture-format"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public onCameraStartPreview()V
    .locals 3

    const/16 v2, 0x2c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isBokehOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onResume()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setEdgeTouchEnabled(Z)V

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "pref_focus_position_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setPictureFlipIfNeed()V

    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setBeautyParams()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setTimeWatermarkIfNeed()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setParallelProcessPath()V

    :cond_2
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/hardware/QcomCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setBeautyParams()V
    .locals 8

    sget-boolean v4, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/camera/Device;->IS_MI2A:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v3

    const-string/jumbo v4, "pref_beautify_skin_color_ratio_key"

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v4

    shl-int/lit8 v4, v4, 0x1c

    or-int/2addr v1, v4

    const-string/jumbo v4, "pref_beautify_slim_face_ratio_key"

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v1, v4

    const-string/jumbo v4, "pref_beautify_skin_smooth_ratio_key"

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    const-string/jumbo v4, "pref_beautify_enlarge_eye_ratio_key"

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v4

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v4, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v4, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStillBeautify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/QcomCameraProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "check beautify detail values in strings.xml of aries"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->setBeautyParams()V

    goto :goto_1
.end method

.method protected setManualParameters()V
    .locals 7

    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v5}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/hardware/QcomCameraProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v3, "pref_qc_camera_exposuretime_key"

    const v4, 0x7f0f0171

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/camera_adapter/CameraQcom;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exposureTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "pref_qc_camera_iso_key"

    const v4, 0x7f0f00d5

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/camera_adapter/CameraQcom;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setParallelProcessPath()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupportParallelProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable parallel process path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setParallelProcessFilePath(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParallelProcessingTitle:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "disable parallel process"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setParallelProcessFilePath(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParallelProcessingTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateCameraParametersInitialize()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_X5:Z

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_1
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->qcomUpdateCameraParametersPreference()V

    return-void
.end method
