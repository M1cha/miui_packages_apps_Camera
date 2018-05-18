.class public Lcom/android/camera/module/loader/FunctionDataSetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionDataSetup.java"


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
    .locals 9
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

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v6

    if-nez v6, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xe1

    invoke-static {v0, v6}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v6

    return-object v6

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v6

    if-nez v6, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-nez v4, :cond_3

    return-object p1

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/module/loader/FunctionDataSetup;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/camera/data/data/config/DataItemConfig;->initAfterCameraOpen(ILandroid/hardware/Camera$Parameters;)V

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->resetTimeOut()V

    iget v6, p0, Lcom/android/camera/module/loader/FunctionDataSetup;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->initAfterCameraOpen(ILandroid/hardware/Camera$Parameters;)V

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->initAfterCameraOpen()V

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7, v8}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->setUiStyle(I)V

    return-object p1
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionDataSetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v0

    return-object v0
.end method
