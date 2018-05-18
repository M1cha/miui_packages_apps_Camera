.class public Lcom/android/camera/module/loader/FunctionCameraPrepare;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraPrepare.java"


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
.field private baseModule:Lcom/android/camera/module/BaseModule;

.field private mLastMode:I

.field private mResetType:I


# direct methods
.method public constructor <init>(IIILcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    iput p2, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    iput p3, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    iput-object p4, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    return-void
.end method

.method private reconfigureData()V
    .locals 17

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v11

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v12

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v10

    invoke-virtual {v12}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v9

    const-string/jumbo v15, "pref_camera_zoom_key"

    invoke-interface {v6, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v15

    const-string/jumbo v16, "pref_camera_exposure_key"

    invoke-interface/range {v15 .. v16}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "torch"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v15

    if-nez v15, :cond_1

    const-string/jumbo v15, "pref_focus_position_key"

    invoke-interface {v6, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v15, "pref_qc_camera_exposuretime_key"

    invoke-interface {v6, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    const-string/jumbo v15, "pref_camera_lab_option_key_visible"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    const-string/jumbo v15, "pref_camera_facedetection_key"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_2

    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v15

    const-string/jumbo v16, "pref_camera_facedetection_key"

    invoke-interface/range {v15 .. v16}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    packed-switch v15, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    :pswitch_1
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    packed-switch v15, :pswitch_data_1

    :pswitch_2
    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v11, v15}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v15

    invoke-interface {v9, v12, v15, v1}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    packed-switch v15, :pswitch_data_2

    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    :goto_2
    invoke-virtual {v11, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_2

    :pswitch_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    if-ne v1, v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_2

    :pswitch_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    :cond_6
    if-nez v1, :cond_b

    const-string/jumbo v15, "pref_camera_hand_night_key"

    invoke-virtual {v12, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string/jumbo v15, "pref_camera_groupshot_mode_key"

    invoke-virtual {v12, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v15

    const/16 v16, 0xc2

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v5, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isLastOn(I)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v15

    const/16 v16, 0xef

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isLastOn(I)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    const-string/jumbo v15, "pref_camera_hand_night_key"

    invoke-virtual {v12, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string/jumbo v15, "pref_camera_groupshot_mode_key"

    invoke-virtual {v12, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v15

    if-eqz v15, :cond_e

    const-string/jumbo v15, "pref_camera_face_beauty_key"

    invoke-interface {v6, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/effect/BeautyParameters;->resetBeautyLevel()V

    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v15, "auto"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_f
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v5, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "auto"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string/jumbo v15, "off"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v5, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_10
    invoke-virtual {v3, v6}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->clearFilterSelected(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v12}, Lcom/android/camera/data/data/runing/DataItemRunning;->resetAll()V

    invoke-interface {v9}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v11, v15}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v15

    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v12, v15, v0}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v15, "torch"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0xab

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0xa7

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    :cond_12
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0xab

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "use switch prepare"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa6
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa3
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 3
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

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xe8

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xe5

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe9

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    const/16 v2, 0xe1

    invoke-static {v1, v2}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->reconfigureData()V

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-static {v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v0

    return-object v0
.end method
