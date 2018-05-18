.class public Lcom/android/camera/module/loader/FunctionCameraLegacySetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraLegacySetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base",
        "<",
        "Lcom/android/camera/module/BaseModule;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 14
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder",
            "<",
            "Lcom/android/camera/module/BaseModule;",
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

    const/16 v11, 0xe1

    const/4 v13, 0x0

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v10

    if-nez v10, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v1, v11}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v10

    return-object v10

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v9

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;->mTargetMode:I

    invoke-virtual {v10, v9, v11}, Lcom/android/camera/CameraDataContainer;->getActualOpenCameraId(II)I

    move-result v0

    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCurrentCameraId()I

    move-result v10

    if-eq v10, v0, :cond_4

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/android/camera/CameraHolder;->release(Z)V

    :cond_2
    :goto_0
    const/4 v2, 0x0

    if-eqz v7, :cond_5

    iget v10, p0, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;->mTargetMode:I

    sparse-switch v10, :sswitch_data_0

    :goto_1
    iget v10, p0, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;->mTargetMode:I

    invoke-static {v9, v10}, Lcom/android/camera/Util;->openCamera(II)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v10

    if-nez v10, :cond_6

    :cond_3
    const-string/jumbo v10, "CameraSetup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fail to open camera "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/16 v11, 0xe6

    invoke-static {v10, v11}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v10

    return-object v10

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getCameraState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v10, "CameraSetup"

    invoke-virtual {v6}, Lcom/android/camera/CameraHardwareException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v10, 0xe2

    invoke-static {v13, v10}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v10

    return-object v10

    :sswitch_0
    :try_start_1
    iget v10, p0, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;->mTargetMode:I

    invoke-virtual {v1, v9, v10}, Lcom/android/camera/module/BaseModule;->prepareOpenCamera(II)V
    :try_end_1
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    const-string/jumbo v10, "CameraSetup"

    invoke-virtual {v5}, Lcom/android/camera/CameraDisabledException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v10, 0xe3

    invoke-static {v13, v10}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v10

    return-object v10

    :cond_5
    :try_start_2
    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v2}, Lcom/android/camera/module/BaseModule;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/CameraHolder;->injectDummyParameters(Lcom/android/camera/CameraManager$CameraProxy;I)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    if-nez v8, :cond_7

    const-string/jumbo v10, "CameraSetup"

    const-string/jumbo v11, "null parameters"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/16 v11, 0xe7

    invoke-static {v10, v11}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v10

    return-object v10

    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0xe1

    invoke-static {v1, v10}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v10

    return-object v10

    :cond_8
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/camera/CameraManager;->setStashParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v1, v8}, Lcom/android/camera/module/BaseModule;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const-string/jumbo v10, "CameraSetup"

    const-string/jumbo v11, "CameraStartUpThread done"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa3 -> :sswitch_0
        0xab -> :sswitch_0
    .end sparse-switch
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v0

    return-object v0
.end method
