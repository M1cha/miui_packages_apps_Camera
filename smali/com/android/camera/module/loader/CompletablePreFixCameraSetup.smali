.class public Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;
.super Ljava/lang/Object;
.source "CompletablePreFixCameraSetup.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mCurrentMode:Lcom/android/camera/module/Module;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mLastMode:Lcom/android/camera/module/Module;

.field private mNeedBlur:Z

.field private mStartFromKeyguard:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/Module;ZLcom/android/camera/CameraScreenNail;Landroid/content/Intent;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mCurrentMode:Lcom/android/camera/module/Module;

    iput-object p1, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    iput-boolean p3, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mNeedBlur:Z

    iput-object p4, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iput-object p5, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mHandler:Landroid/os/Handler;

    iput-boolean p7, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mStartFromKeyguard:Z

    return-void
.end method

.method private closeLastModule()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->unRegisterProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPause()V

    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/Module;->setActivity(Lcom/android/camera/Camera;)V

    return-void
.end method

.method private isLastModuleAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needEnterStereoMode(II)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xab

    if-ne p2, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private reopenForStereo(Lcom/android/camera/CameraHolder;II)Z
    .locals 3

    const/16 v2, 0xab

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p3, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/CameraHolder;->getLastMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/CameraHolder;->getLastMode()I

    move-result v1

    if-eq p3, v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private sendError(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private shouldReopenCamera(Lcom/android/camera/CameraHolder;II)Z
    .locals 3

    const/16 v2, 0xab

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p3, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/CameraHolder;->getLastMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->reopenForStereo(Lcom/android/camera/CameraHolder;II)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/CameraHolder;->getCurrentCameraId()I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/camera/CameraDataContainer;->getActualOpenCameraId(II)I

    move-result v2

    if-eq v1, v2, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->isLastModuleAlive()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v10

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v12}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v12

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v13

    const/4 v14, 0x1

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/android/camera/data/backup/DataBackUp;->backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V

    invoke-direct {p0}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->closeLastModule()V

    :cond_0
    iget-boolean v10, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mNeedBlur:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v10}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeBefore()V

    :cond_1
    iget-object v10, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mIntent:Landroid/content/Intent;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mIntent:Landroid/content/Intent;

    iget-boolean v11, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mStartFromKeyguard:Z

    const/4 v12, 0x1

    invoke-virtual {v1, v10, v11, v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;ZZ)Landroid/support/v4/util/Pair;

    move-result-object v6

    iget-object v10, v6, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v6, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_0
    const/4 v5, 0x1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getLastMode()I

    move-result v10

    const/16 v11, 0xa0

    if-eq v10, v11, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-direct {p0, v0, v7, v8}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->shouldReopenCamera(Lcom/android/camera/CameraHolder;II)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/camera/CameraHolder;->release(Z)V

    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    :try_start_0
    iget-object v10, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mCurrentMode:Lcom/android/camera/module/Module;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mCurrentMode:Lcom/android/camera/module/Module;

    invoke-interface {v10, v7, v8}, Lcom/android/camera/module/Module;->prepareOpenCamera(II)V

    :cond_3
    :goto_2
    invoke-static {v7, v8}, Lcom/android/camera/Util;->openCamera(II)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_3
    invoke-interface/range {p1 .. p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void

    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v8

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getCameraState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    goto :goto_1

    :cond_7
    :try_start_1
    invoke-direct {p0, v7, v8}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->needEnterStereoMode(II)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "CompletablePreFixCameraSetup"

    const-string/jumbo v11, "[stereo_setup_process]. enableStereoMode.invoke MtkStereo"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v9

    check-cast v9, Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v9}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V
    :try_end_1
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    const/16 v10, 0xe2

    invoke-direct {p0, v10}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->sendError(I)V

    goto :goto_3

    :catch_1
    move-exception v4

    const/16 v10, 0xe4

    invoke-direct {p0, v10}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->sendError(I)V

    goto :goto_3

    :catch_2
    move-exception v3

    const/16 v10, 0xe3

    invoke-direct {p0, v10}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->sendError(I)V

    goto :goto_3
.end method
