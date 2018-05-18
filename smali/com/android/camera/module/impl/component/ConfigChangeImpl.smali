.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method private applyConfig(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showSetting()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showFilter()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerSwitch()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSoundSwitch(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configHHTSwitch(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicFocusSwitch()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGroupSwitch(I)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configScene(I)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSlow()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoFast()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicMirrorSwitch(I)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRawSwitch()V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPortraitSwitch(I)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGenderAgeSwitch(I)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualWaterMarkSwitch()V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBeautySwitch(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc3
        :pswitch_f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method private conflictWithFlashAndHdrAndBeauty()Z
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v3, "pref_camera_hand_night_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "pref_camera_hand_night_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_2
    return v1
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getState(ILjava/lang/String;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hideTipMessage(I)V
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

    if-lez p1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method private isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showTips(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const v3, 0x7f0a00ea

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v3

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v1, :cond_3

    const v3, 0x7f0f0277

    :goto_2
    invoke-interface {v2, v6, v3, v5}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    goto :goto_1

    :cond_3
    const v3, 0x7f0f0278

    goto :goto_2

    :sswitch_1
    const v3, 0x7f0f0279

    invoke-interface {v2, v6, v3, v5}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xe6 -> :sswitch_1
        0xeb -> :sswitch_0
    .end sparse-switch
.end method

.method private trackBeautyChanged(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "\u524d\u540e\u6444"

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "\u524d\u6444"

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "\u7f8e\u989c"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "beauty_changed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p5, :cond_2

    const-string/jumbo v3, "\u524d\u540e\u6444"

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "\u524d\u6444"

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_4

    const-string/jumbo v2, "on"

    :goto_1
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "counter"

    invoke-static {v2, p1, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_3
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method private trackDualWaterMarkChanged(Z)V
    .locals 3

    const-string/jumbo v1, "settings"

    const-string/jumbo v2, "pref_dualcamera_watermark"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method private trackFocusPeakChanged(Z)V
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v1, "manual_focus_peak_changed"

    const-string/jumbo v2, "\u5cf0\u503c\u5bf9\u7126"

    move-object v0, p0

    move v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackGenderAgeChanged(Z)V
    .locals 6

    const-string/jumbo v1, "gender_age_changed"

    const-string/jumbo v2, "\u5e74\u9f84\u68c0\u6d4b"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackGotoSettings()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->trackGotoSettings()V

    :cond_0
    return-void
.end method

.method private trackGradienterChanged(Z)V
    .locals 6

    const-string/jumbo v1, "gradienter_changed"

    const-string/jumbo v2, "\u6c34\u5e73\u4eea"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackGroupChanged(Z)V
    .locals 6

    const-string/jumbo v1, "group_shot_changed"

    const-string/jumbo v2, "\u5408\u5f71\u4f18\u9009"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackHHTChanged(Z)V
    .locals 6

    const-string/jumbo v1, "hht_changed"

    const-string/jumbo v2, "HHT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackMagicMirrorChanged(Z)V
    .locals 6

    const-string/jumbo v1, "magic_mirror_changed"

    const-string/jumbo v2, "\u9b54\u955c"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackTiltShiftChanged(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "\u79fb\u8f74"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "tiltshift_changed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackTimerChanged(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "\u524d\u540e\u6444"

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "\u524d\u6444"

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "\u5012\u8ba1\u65f6"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "timer_changed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackVideoModeChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "video_mode_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateComponentFilter(Z)V
    .locals 7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->isClosed(I)Z

    move-result v4

    if-ne v4, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->filterUiChange()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xc4

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method private updateComponentFlash(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v4

    if-ne v4, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xc1

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateFlashPreference()V

    return-void
.end method

.method private updateComponentHdr(Z)Z
    .locals 9

    const/16 v8, 0xc2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v4

    if-ne v4, p1, :cond_1

    :cond_0
    return v6

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "off"

    if-eq v4, v5, :cond_2

    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    new-array v4, v7, [I

    aput v8, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    return v7
.end method

.method private updateTipMessage(III)V
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

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    return-void
.end method


# virtual methods
.method public configBeautySwitch(I)V
    .locals 9

    const/16 v8, 0xef

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa3

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa5

    if-eq v4, v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/CameraModule;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getNextValue(I)Ljava/lang/String;

    move-result-object v3

    if-ne v7, p1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setComponentValue(ILjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackBeautyChanged(Ljava/lang/String;)V

    :cond_1
    sget-object v4, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_0
.end method

.method public configBokeh(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateBokehPreference()V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    return-void
.end method

.method public configDualWaterMarkSwitch()V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackDualWaterMarkChanged(Z)V

    sget-boolean v2, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v2, :cond_0

    const v0, 0x7f0f027d

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void

    :cond_0
    const v0, 0x7f0f027c

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {p0, v2, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    goto :goto_1
.end method

.method public configFlash(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateFlashPreference()V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    return-void
.end method

.method public configFocusPeakSwitch(I)V
    .locals 3

    const-string/jumbo v1, "pref_camera_peak_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackFocusPeakChanged(Z)V

    :cond_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "manual"

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_0
.end method

.method public configGenderAgeSwitch(I)V
    .locals 6

    const-string/jumbo v4, "pref_camera_show_gender_age_key"

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGenderAgeChanged(Z)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa6

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0183

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "xiaomi-face-watermark-format-string"

    invoke-virtual {v2, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method

.method public configGradienterSwitch(I)V
    .locals 2

    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGradienterChanged(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/CameraModule;->onGradienterSwitched(Z)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawGradienter(Z)V

    return-void
.end method

.method public configGroupSwitch(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v2

    if-ne v4, p1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGroupChanged(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/CameraModule;

    if-eqz v2, :cond_1

    const/16 v3, 0xeb

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showTips(I)V

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getGroupShotNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->initGroupShot(I)V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    const v3, 0x7f0f0278

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    goto :goto_0
.end method

.method public configHHTSwitch(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v2, "pref_camera_hand_night_key"

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    if-ne v3, p1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackHHTChanged(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v0

    if-eqz v1, :cond_1

    const/16 v2, 0xe6

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showTips(I)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera/MutexModeManager;->setMutexModeMandatory(I)V

    :goto_0
    return-void

    :cond_1
    const v2, 0x7f0f0279

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->clearMandatoryFlag()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_0
.end method

.method public configHdr(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    return-void
.end method

.method public configMagicFocusSwitch()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_ubifocus_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    return-void
.end method

.method public configMagicMirrorSwitch(I)V
    .locals 6

    const-string/jumbo v4, "pref_camera_magic_mirror_key"

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa6

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowMagicMirror(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0184

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "xiaomi-face-watermark-format-string"

    invoke-virtual {v1, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method

.method public configPortraitSwitch(I)V
    .locals 2

    const-string/jumbo v1, "pref_camera_portrait_mode_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public configRawSwitch()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    move-result-object v0

    return-void
.end method

.method public configScene(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x2

    const-string/jumbo v2, "pref_camera_scenemode_setting_key"

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xb5

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-interface {v0, v3, v5, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void

    :cond_0
    if-ne p1, v5, :cond_1

    move v2, v3

    :goto_1
    const/4 v4, 0x0

    invoke-interface {v0, v3, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_1
.end method

.method public configSoundSwitch(I)V
    .locals 7

    const-string/jumbo v5, "pref_audio_capture"

    invoke-direct {p0, p1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->switchOff()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa2

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingAudioCapture(Z)V

    return-void
.end method

.method public configTiltSwitch(I)V
    .locals 6

    const/16 v5, 0xa0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3, v1}, Lcom/android/camera/module/CameraModule;->onTiltShiftSwitched(Z)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    return-void

    :pswitch_1
    const/4 v1, 0x0

    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v3, "circle"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const-string/jumbo v3, "circle"

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "circle"

    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "parallel"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    const-string/jumbo v3, "parallel"

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "off"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public configTimerSwitch()V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v4, "pref_audio_capture"

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "pref_audio_capture"

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingAudioCapture(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getNextValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTimerChanged(Ljava/lang/String;)V

    const/16 v4, 0xa0

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public configVideoFast()V
    .locals 10

    const v9, 0x7f0f027a

    const/16 v8, 0xa2

    const/4 v7, 0x0

    const/16 v6, 0xa9

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    if-eq v3, v6, :cond_0

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string/jumbo v3, "fast"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v6}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    invoke-virtual {v0, v6}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {p0, v3, v9, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/module/VideoModule;->setNeedRestartPreview(Z)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void

    :cond_0
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string/jumbo v3, "normal"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public configVideoSlow()V
    .locals 10

    const v9, 0x7f0f027b

    const/16 v8, 0xa2

    const/4 v7, 0x0

    const/16 v6, 0xa8

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    if-eq v3, v6, :cond_0

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string/jumbo v3, "slow"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v6}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    invoke-virtual {v0, v6}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {p0, v3, v9, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/module/VideoModule;->setNeedRestartPreview(Z)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void

    :cond_0
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string/jumbo v3, "normal"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public conflictWithBeauty(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    :cond_1
    return-void
.end method

.method public getBaseModule()Lcom/android/camera/module/BaseModule;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    return-object v0
.end method

.method public onConfigChanged(I)V
    .locals 6

    invoke-static {p1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->isMutexConfig(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget v1, v3, v2

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    return-void
.end method

.method public reCheckMutexConfigs()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public showFilter()V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    const v2, 0x7f0a00ea

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xfb

    if-ne v2, v3, :cond_1

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    return-void
.end method

.method public showSetting()V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v3, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v2, "from_where"

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    if-ne v1, v5, :cond_0

    const-string/jumbo v2, "IsCaptureIntent"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v2, ":miui:starting_window_label"

    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2, v0}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGotoSettings()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateComponentBeauty(Z)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    return-void
.end method
