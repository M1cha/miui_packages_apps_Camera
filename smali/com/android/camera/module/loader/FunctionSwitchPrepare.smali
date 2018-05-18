.class public Lcom/android/camera/module/loader/FunctionSwitchPrepare;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionSwitchPrepare.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base",
        "<",
        "Lcom/android/camera/Camera;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# instance fields
.field private mResetType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    iput p2, p0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mResetType:I

    return-void
.end method

.method private reconfigureData()V
    .locals 17

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v10

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v10, v14}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v14

    invoke-virtual {v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v8, v11, v14, v15, v0}, Lcom/android/camera/data/backup/DataBackUp;->backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mResetType:I

    packed-switch v14, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/config/DataItemConfig;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v6

    invoke-virtual {v9}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    packed-switch v14, :pswitch_data_1

    :goto_1
    :pswitch_1
    invoke-virtual {v9}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v4, v14}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "torch"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v4, v14}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    invoke-virtual {v9}, Lcom/android/camera/data/data/config/DataItemConfig;->isTimeOut()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v4, v14}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "auto"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v4, v14}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_2
    invoke-virtual {v9}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v5, v14}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "auto"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string/jumbo v14, "off"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v5, v14}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v5, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_3
    invoke-virtual {v9}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v3, v14}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v14, "on"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v3, v14}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getKey(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v3, v15}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_4
    const-string/jumbo v14, "pref_camera_zoom_key"

    invoke-interface {v6, v14}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v14

    const-string/jumbo v15, "pref_camera_exposure_key"

    invoke-interface {v14, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v10, v14}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v14

    invoke-virtual {v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v15

    invoke-interface {v8, v11, v14, v15}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    const/16 v15, 0xab

    if-ne v14, v15, :cond_0

    invoke-virtual {v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v14

    if-nez v14, :cond_5

    sget-object v14, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v14}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_1

    :cond_5
    sget-object v14, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 6
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder",
            "<",
            "Lcom/android/camera/Camera;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder",
            "<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0xe8

    invoke-static {v5, v4}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xe9

    invoke-static {v5, v4}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v4

    return-object v4

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xaf

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa0

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/animation/AnimationComposite;->setClickEnable(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->reconfigureData()V

    invoke-virtual {v2}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->prepareSwitchCamera()V

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->closeCamera()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    iget v5, p0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mTargetMode:I

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/module/BaseModule;->prepareOpenCamera(II)V

    invoke-static {v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v0

    return-object v0
.end method

.method public getWorkThread()Lio/reactivex/Scheduler;
    .locals 1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
