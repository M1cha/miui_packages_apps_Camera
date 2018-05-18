.class public Lcom/android/camera/data/data/global/DataItemGlobal;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/global/DataItemGlobal$IntentType;
    }
.end annotation


# instance fields
.field private mIntentType:I

.field private mIsTimeOut:Ljava/lang/Boolean;

.field private mLastCameraId:I

.field private mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

.field private mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mStartFromKeyguard:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    new-instance v1, Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-direct {v1, p0}, Lcom/android/camera/data/data/global/ComponentModuleList;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    iput-object v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-void
.end method

.method private determineTimeOut()Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v3, "pref_camera_open_time"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7530

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->retainCameraMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurrentCameraId(I)I
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "pref_camera_id_key"

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_camera_id_key"

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v1

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentMode(I)I
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pref_camera_mode_key_intent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa4

    if-ne v1, v0, :cond_0

    const/16 v0, 0xa3

    :cond_0
    return v0
.end method

.method private getDefaultCameraId(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCTACanCollect()Z
    .locals 2

    const-string/jumbo v0, "can_connect_network"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-object v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    return v0
.end method

.method public getCurrentMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v0

    return v0
.end method

.method public getDataBackUpKey(I)I
    .locals 2

    iget v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    add-int/lit8 v1, v1, 0x2

    shl-int/lit8 v1, v1, 0x8

    or-int v0, v1, p1

    iget-boolean v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDefaultMode(I)I
    .locals 1

    const/16 v0, 0xa3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0xa2

    return v0

    :pswitch_3
    const/16 v0, 0xab

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/global/ComponentGlobalRaw;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    return-object v0
.end method

.method public getIntentType()I
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    return v0
.end method

.method public getLastCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    return v0
.end method

.method public getPortraitZoom()I
    .locals 2

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_camera_portrait_zoom"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public initAfterCameraOpen()V
    .locals 6

    iget-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    const-string/jumbo v2, "pref_camera_open_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v2, "open_camera_fail_key"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    const-string/jumbo v2, "pref_camera_id_key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public isGlobalSwitchOn(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isIntentAction()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTimeOut()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parseIntent(Landroid/content/Intent;ZZ)Landroid/support/v4/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "ZZ)",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "<unknown>"

    :cond_0
    const-string/jumbo v9, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {p1}, Lcom/android/camera/Util;->isPortraitIntent(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v5, 0x5

    :goto_0
    if-eqz v5, :cond_1

    const/4 v9, -0x1

    invoke-static {p1, v9}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/content/Intent;I)I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    :cond_1
    if-nez v5, :cond_14

    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v8

    :goto_1
    iget v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-ne v9, v5, :cond_2

    iget-boolean v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eq v9, p2, :cond_15

    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_16

    const-string/jumbo v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/16 v7, 0xa3

    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v6

    :goto_3
    if-nez p3, :cond_5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iput v5, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    iput-boolean p2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    iget-object v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v10, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v9, v10}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v9

    if-eq v7, v9, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-static {v7}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v9

    if-eq v6, v9, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    :cond_5
    new-instance v9, Landroid/support/v4/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    :cond_6
    const-string/jumbo v9, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v5, 0x2

    goto :goto_0

    :cond_7
    const-string/jumbo v9, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    const/4 v5, 0x3

    goto :goto_0

    :cond_9
    const-string/jumbo v9, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "android.media.action.XIAOAI_CONTROL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v5, 0x0

    const-string/jumbo v9, "android.intent.extras.CAMERA_MODULE"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v9, "android.intent.extras.MIUI_CAMERA_FACING"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v9, "DataItemGlobal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "intent from xiaoai voice assist :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_a

    const/4 v9, 0x1

    if-eq v6, v9, :cond_a

    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v6

    :cond_a
    :goto_4
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/constant/ModeConstant;->getAllModes()[I

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_5
    if-ge v9, v11, :cond_e

    aget v4, v10, v9

    if-ne v4, v7, :cond_b

    const/4 v1, 0x1

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v6

    goto :goto_4

    :cond_e
    if-nez v1, :cond_f

    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {p0, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v7

    :cond_f
    :goto_6
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    iput-boolean p2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    iget-object v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v10, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v9, v10}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v9

    if-eq v7, v9, :cond_10

    invoke-virtual {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-static {v7}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v9

    if-eq v6, v9, :cond_11

    invoke-virtual {p0, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    :cond_11
    new-instance v9, Landroid/support/v4/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    :cond_12
    invoke-direct {p0, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v7

    goto :goto_6

    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_16
    if-eqz v3, :cond_17

    const-string/jumbo v9, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    const/16 v7, 0xa2

    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v6

    goto/16 :goto_3

    :cond_17
    if-eqz v8, :cond_18

    invoke-virtual {p0, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v6

    goto/16 :goto_3

    :cond_18
    invoke-direct {p0, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v6

    goto/16 :goto_3
.end method

.method public provideKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "camera_settings_global"

    return-object v0
.end method

.method public resetTimeOut()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_open_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCTACanCollect(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "can_connect_network"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCameraId(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCameraIdTransient(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    const-string/jumbo v0, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pref_camera_mode_key_intent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setPortraitZoom(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_portrait_zoom"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method public setStartFromKeyguard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    return-void
.end method
