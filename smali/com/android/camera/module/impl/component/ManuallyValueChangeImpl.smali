.class public Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;
.super Ljava/lang/Object;
.source "ManuallyValueChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private trackAwbChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u767d\u5e73\u8861"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "manual_awb_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackExposureTimeChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u5feb\u95e8"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "manual_exposure_time_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackIsoChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u611f\u5149\u5ea6"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "manual_iso_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackLensChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u955c\u5934"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "manual_lens_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getBaseModule()Lcom/android/camera/module/BaseModule;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    return-object v0
.end method

.method public onDualLensNotifyToTele()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string/jumbo v1, "optical-zoom-to-tele"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V
    .locals 4

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "tele"

    :goto_0
    invoke-virtual {p1, p2, v1}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->setComponentValue(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackLensChanged(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/module/BaseModule;->onCameraPickerClicked(I)Z

    return-void

    :cond_0
    const-string/jumbo v1, "wide"

    goto :goto_0
.end method

.method public onDualZoomValueChanged(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/BaseModule;->onZoomRatioChanged(IZ)V

    return-void
.end method

.method public onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackExposureTimeChanged(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0xc7

    const/16 v7, 0xa7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v7}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xac

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_2

    invoke-interface {v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeConfigItem(I)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa6

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFocusMode()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v5

    invoke-virtual {p1, v7}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->insertConfigItem(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    const-string/jumbo v6, "pref_camera_peak_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_0
.end method

.method public onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackIsoChanged(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_1

    const-string/jumbo v0, "pref_qc_manual_whitebalance_k_value_key"

    :goto_0
    if-eqz p3, :cond_0

    const-string/jumbo p2, "manual"

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackAwbChanged(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v1, 0xa7

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getKey(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
