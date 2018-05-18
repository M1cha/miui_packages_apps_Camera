.class public abstract Lcom/android/camera/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;
.implements Lcom/android/camera/CameraManager$HardwareErrorListener;
.implements Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/BaseModule$CameraMode;
    }
.end annotation


# static fields
.field protected static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraDisplayOrientation:I

.field protected mCameraHardwareError:Z

.field protected mCameraId:I

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceRotation:F

.field protected mDisplayRect:Landroid/graphics/Rect;

.field protected mDisplayRotation:I

.field protected mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected mExposureCompensationStep:F

.field protected mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

.field protected mHasPendingSwitching:Z

.field protected mIgnoreFocusChanged:Z

.field private mIgnoreTouchEvent:Z

.field private mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

.field protected mMainThreadId:J

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I

.field protected mModuleIndex:I

.field protected mMutexModePicker:Lcom/android/camera/MutexModeManager;

.field protected mObjectTrackingStarted:Z

.field protected mOpenCameraFail:Z

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private mRestoring:Z

.field protected mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

.field protected mSwitchingCamera:Z

.field protected mTriggerMode:I

.field protected mUIStyle:I

.field protected mWaitForRelease:Z

.field mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

.field protected mZoomMax:I

.field protected mZoomMaxRatio:I

.field private mZoomScaled:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    iput v2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mTriggerMode:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    new-instance v0, Lcom/android/camera/preferences/SettingsOverrider;

    invoke-direct {v0}, Lcom/android/camera/preferences/SettingsOverrider;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    return-void
.end method

.method public static getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I
    .locals 1

    iget v0, p1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getTapableRectWithEdgeSlop()Landroid/graphics/Rect;
    .locals 11

    const/4 v10, -0x1

    new-instance v5, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/android/camera/module/BaseModule;->isModuleRecording(Lcom/android/camera/module/Module;)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    iget v7, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v8, 0xa5

    if-ne v7, v8, :cond_0

    sget v7, Lcom/android/camera/Util;->sWindowHeight:I

    sget v8, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    sub-int v1, v7, v8

    sget v7, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f400000    # 0.75f

    div-float/2addr v7, v8

    float-to-int v7, v7

    sget v8, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    sget v7, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int v7, v1, v7

    sub-int v6, v7, v0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Util;->calculateDefaultPreviewEdgeSlop(Landroid/content/Context;)I

    move-result v2

    const-string/jumbo v7, "camera_touch_edge_slop"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v10, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    return-object v5

    :pswitch_1
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sget v8, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    sget v9, Lcom/android/camera/Util;->sNavigationBarHeight:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sget v8, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    int-to-float v7, v4

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isCaptureMode()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isModuleRecording(Lcom/android/camera/module/Module;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/camera/module/FunModule;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/camera/module/FunModule;

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isVideoRecording()Z

    move-result v0

    return v0

    :cond_0
    instance-of v0, p0, Lcom/android/camera/module/VideoModule;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setIgnoreTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    return-void
.end method

.method private trackOpenCameraFail(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "\u524d\u540e\u6444"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "reason"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "open_camera_fail"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const-string/jumbo v0, "camera-service-mute"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected addT2TParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "t2t"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected addZoom(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    add-int v0, v1, p1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    const/4 v2, 0x1

    return v2

    :cond_1
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_0

    :cond_2
    return v3
.end method

.method public checkActivityOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public checkDisplayOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    return-void
.end method

.method protected configOisParameters(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setOIS(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method

.method protected currentIsMainThread()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableCameraControls(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/BaseModule;->setIgnoreTouchEvent(Z)V

    return-void
.end method

.method public enableFakeThumbnail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected enterMutexMode()V
    .locals 0

    return-void
.end method

.method protected exitMutexMode()V
    .locals 0

    return-void
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method public getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getModuleIndex()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    return v0
.end method

.method public getMutexModePicker()Lcom/android/camera/MutexModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method protected getPictureInfo()Lcom/android/camera/PictureInfo;
    .locals 3

    new-instance v0, Lcom/android/camera/PictureInfo;

    invoke-direct {v0}, Lcom/android/camera/PictureInfo;-><init>()V

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PictureInfo;->setSensorType(I)V

    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PictureInfo;->setMirror(Z)V

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenDelay()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x7530

    :goto_0
    return v0

    :cond_1
    const v0, 0xea60

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getTriggerMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mTriggerMode:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getZoomMax()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    return v0
.end method

.method public getZoomMaxRatio()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMaxRatio:I

    return v0
.end method

.method protected getZoomValue()I
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v0

    return v0
.end method

.method protected handleVolumeKeyEvent(ZZI)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_volumekey_function_key"

    const v4, 0x7f0f0153

    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0f0150

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p3, p2}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    return v5

    :cond_2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0f0151

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->isCaptureMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_3

    return v5

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->addZoom(I)Z

    move-result v1

    :goto_0
    if-nez p3, :cond_4

    if-eqz v1, :cond_4

    const-string/jumbo v2, "\u97f3\u91cf\u952e"

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->trackZoomAdjusted(Ljava/lang/String;)V

    :cond_4
    return v5

    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->addZoom(I)Z

    move-result v1

    goto :goto_0

    :cond_6
    return v6
.end method

.method protected hasCameraException()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hideTipMessage(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method protected initializeExposureCompensation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mExposureCompensationStep:F

    return-void
.end method

.method protected initializeMutexMode()V
    .locals 8

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v7, :cond_0

    return-void

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/android/camera/module/BaseModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$1;-><init>(Lcom/android/camera/module/BaseModule;)V

    new-instance v4, Lcom/android/camera/module/BaseModule$2;

    invoke-direct {v4, p0}, Lcom/android/camera/module/BaseModule$2;-><init>(Lcom/android/camera/module/BaseModule;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v7, "enter"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "exit"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x3

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x7

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/camera/module/BaseModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/module/BaseModule$3;-><init>(Lcom/android/camera/module/BaseModule;)V

    new-instance v5, Lcom/android/camera/module/BaseModule$4;

    invoke-direct {v5, p0}, Lcom/android/camera/module/BaseModule$4;-><init>(Lcom/android/camera/module/BaseModule;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v7, "enter"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "exit"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/camera/MutexModeManager;

    invoke-direct {v7, v6}, Lcom/android/camera/MutexModeManager;-><init>(Ljava/util/HashMap;)V

    iput-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    return-void
.end method

.method protected initializeZoom()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMaxRatio:I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    return-void
.end method

.method protected isBackCamera()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCreated()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDeparted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected isFrontCamera()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnoreTouchEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    return v0
.end method

.method public isInTapableRect(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->getTapableRectWithEdgeSlop()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isRestoring()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mRestoring:Z

    return v0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSquareModeChange()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v3

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderTargetRatio()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isSupportFocusShoot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected mapTapCoordinate(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Landroid/graphics/Point;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    check-cast p1, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    move-object v0, p1

    check-cast v0, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    move-object v0, p1

    check-cast v0, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    check-cast p1, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public notifyError()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraError()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCameraException()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->couldShowErrorDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->isInVideoCall(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f0273

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->showErrorDialog()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->couldShowErrorDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0f0006

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->showErrorDialog()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    const v0, 0x7f0f0005

    goto :goto_0

    :cond_5
    const v0, 0x7f0f0004

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->sendOpenFailMessage()V

    goto :goto_1
.end method

.method public onCameraPickerClicked(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(II)V
    .locals 3

    const-string/jumbo v0, "BaseModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate moduleIndex->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cameraId->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->setCameraId(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/CameraErrorCallback;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    new-instance v0, Lcom/android/camera/voiceassist/XiaoAiHelper;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/voiceassist/XiaoAiHelper;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeMutexMode()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mIsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "BaseModule"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEvChanged(II)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    if-ne p2, v2, :cond_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeExposure(I)V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    :cond_1
    return-void

    :cond_2
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto :goto_0
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->openSettingActivity()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(II)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const-string/jumbo v0, "BaseModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "device orientation change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const-string/jumbo v0, "BaseModule"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    return-void
.end method

.method public onPortraitZoomChanged()V
    .locals 0

    return-void
.end method

.method public onPreviewPixelsRead([BII)V
    .locals 0

    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const-string/jumbo v0, "BaseModule"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "killed-moduleIndex"

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScale(FFF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->scaleZoomValue(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 0

    return-void
.end method

.method public onSmartShutterButtonFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSmartShutterButton()Lcom/android/camera/ui/V9SmartShutterButton;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->flyin(IIII)V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    :cond_0
    return-void
.end method

.method public onZoomRatioChanged(IZ)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->binarySearchRightMost(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onZoomSwitchCamera()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->disableSwitchAnimationOnce()V

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onCameraPickerClicked(I)Z

    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(IZ)V

    return-void
.end method

.method public onZoomValueChanged(IZ)V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-lez p1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "optical-zoom-to-tele"

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->updateZoomValue()V

    :goto_2
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    goto :goto_2
.end method

.method protected openCamera()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "BaseModule"

    const-string/jumbo v3, "openCamera: start"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/module/BaseModule;->prepareOpenCamera(II)V

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(II)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BaseModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openCamera: CameraDisabledException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraDisabledException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    const-string/jumbo v3, "disabled"

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/BaseModule;->trackOpenCameraFail(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "BaseModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openCamera CameraHardwareException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/CameraHardwareException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    const-string/jumbo v3, "hardware"

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/BaseModule;->trackOpenCameraFail(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected openSettingActivity()V
    .locals 0

    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0

    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    :cond_1
    return-void
.end method

.method public portraitZoomSwitching()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public preTransferOrientation(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    return-void
.end method

.method public prepareOpenCamera(II)V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    const-string/jumbo v0, "BaseModule"

    const-string/jumbo v1, "registerProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method protected abstract removeHandlerMessages()V
.end method

.method public requestRender()V
    .locals 0

    return-void
.end method

.method public resetEvValue()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method protected resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    sget-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public resetMutexModeManually()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    return-void
.end method

.method protected restoreBottom()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    const v2, 0x7f0a00ea

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xf1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    return-void
.end method

.method public scaleZoomValue(F)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ne v1, v0, :cond_2

    return v3

    :cond_1
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    const/4 v2, 0x1

    return v2
.end method

.method protected sendOpenFailMessage()V
    .locals 0

    return-void
.end method

.method public setActivity(Lcom/android/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-void
.end method

.method public setCameraId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    return-void
.end method

.method public setDeparted()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mIsDeparted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setDisplayRectAndUIStyle(Landroid/graphics/Rect;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mDisplayRect:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    return-void
.end method

.method public setHandlerFinishEmitter(Lio/reactivex/CompletableEmitter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->removeHandlerMessages()V

    goto :goto_0
.end method

.method public setModuleIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method protected setTriggerMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/BaseModule;->mTriggerMode:I

    return-void
.end method

.method protected setZoomValue(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeZoom(I)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected trackGeneralInfo(IZ)V
    .locals 12

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const-string/jumbo v7, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "\u5408\u5f71\u4f18\u9009"

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "on"

    :goto_0
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "\u89e6\u53d1\u65b9\u5f0f"

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/CameraStatUtil;->triggerModeToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "\u5012\u8ba1\u65f6"

    if-eqz p2, :cond_2

    const-string/jumbo v7, "0"

    :goto_1
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "off"

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_0

    const-string/jumbo v7, "torch"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    const-string/jumbo v5, "off"

    :cond_0
    const-string/jumbo v7, "\u95ea\u5149\u706f"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v4

    const-string/jumbo v8, "\u6ee4\u955c"

    if-eqz p2, :cond_3

    const-string/jumbo v7, "none"

    :goto_2
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v8, "\u5e74\u9f84\u68c0\u6d4b"

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "on"

    :goto_3
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "\u9b54\u955c"

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "on"

    :goto_4
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "capture"

    const-string/jumbo v8, "front_camera_info"

    int-to-long v10, p1

    invoke-static {v7, v8, v10, v11, v6}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :goto_5
    return-void

    :cond_1
    const-string/jumbo v7, "off"

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->filterIdToName(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    const-string/jumbo v7, "off"

    goto :goto_3

    :cond_5
    const-string/jumbo v7, "off"

    goto :goto_4

    :cond_6
    const-string/jumbo v8, "\u79fb\u8f74"

    if-nez p2, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "\u6c34\u5e73\u4eea"

    if-nez p2, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "on"

    :goto_7
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "HHT"

    if-nez p2, :cond_9

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v7}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "on"

    :goto_8
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "HDR"

    if-nez p2, :cond_a

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v7}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "on"

    :goto_9
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "\u53d8\u7126"

    iget v8, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v8}, Lcom/android/camera/CameraStatUtil;->getDualZoomName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "capture"

    const-string/jumbo v8, "back_camera_info"

    int-to-long v10, p1

    invoke-static {v7, v8, v10, v11, v6}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v7, "off"

    goto :goto_6

    :cond_8
    const-string/jumbo v7, "off"

    goto :goto_7

    :cond_9
    const-string/jumbo v7, "off"

    goto :goto_8

    :cond_a
    const-string/jumbo v7, "off"

    goto :goto_9
.end method

.method public trackGotoGallery()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f"

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "goto_gallery"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackGotoSettings()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f"

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "goto_settings"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected trackModeCustomInfo(I)V
    .locals 0

    return-void
.end method

.method protected trackPictureTaken(IZZ)V
    .locals 8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    const-string/jumbo v5, "\u524d\u540e\u6444"

    if-eqz v1, :cond_2

    const-string/jumbo v4, "\u524d\u6444"

    :goto_0
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const-string/jumbo v5, "\u753b\u5e45"

    const/16 v4, 0xa5

    if-ne v4, v0, :cond_3

    const-string/jumbo v4, "1x1"

    :goto_1
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "\u753b\u8d28"

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getJpegQuality(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "\u65f6\u95f4\u6c34\u5370"

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "on"

    :goto_2
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "\u53cc\u6444\u6c34\u5370"

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "on"

    :goto_3
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "\u5730\u7406\u4f4d\u7f6e"

    if-eqz p3, :cond_6

    const-string/jumbo v4, "\u6709"

    :goto_4
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "capture"

    const-string/jumbo v5, "picture_taken"

    int-to-long v6, p1

    invoke-static {v4, v5, v6, v7, v2}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-le p1, v4, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "\u5f20\u6570"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->burstShotNumToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "capture"

    const-string/jumbo v5, "picture_taken_burst"

    int-to-long v6, p1

    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    const-string/jumbo v4, "capture"

    const-string/jumbo v5, "burst_shot_times"

    invoke-static {v4, v5, v3}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->trackModeCustomInfo(I)V

    return-void

    :cond_2
    const-string/jumbo v4, "\u540e\u6444"

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v4, "4x3"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getPictureSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "off"

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "off"

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "\u65e0"

    goto :goto_4

    :cond_7
    const-string/jumbo v4, "\u5173"

    goto :goto_4
.end method

.method public unRegisterProtocol()V
    .locals 2

    const-string/jumbo v0, "BaseModule"

    const-string/jumbo v1, "unRegisterProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateBokehPreference()V
    .locals 0

    return-void
.end method

.method protected updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V
    .locals 3

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    move v0, p1

    move p1, p2

    move p2, v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_4

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewSize(II)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSquareModeChange()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public updateFlashPreference()V
    .locals 0

    return-void
.end method

.method public updateHDRPreference()V
    .locals 0

    return-void
.end method

.method protected updateStatusBar(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(I)V

    return-void
.end method

.method protected updateTipMessage(III)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    :cond_0
    return-void
.end method
