.class public Lcom/android/camera/data/data/config/ComponentConfigFlash;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigFlash.java"


# instance fields
.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 5

    const v4, 0x7f020081

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "off"

    const v3, 0x7f0f0063

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "off"

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentValueWithOutClose(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "off"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f0f0060

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "pref_camera_flashmode_key"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "pref_camera_video_flashmode_key"

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unspecified flash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 3

    const v1, 0x7f020082

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f020080

    return v1

    :cond_1
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f020081

    return v1

    :cond_2
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    const v1, 0x7f020083

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 3

    const v1, 0x7f0f0113

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f0f0114

    return v1

    :cond_1
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f0f0115

    return v1

    :cond_2
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    const v1, 0x7f0f0116

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public isClosed(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public reInit(IILandroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const v11, 0x7f0f0062

    const v10, 0x7f020080

    const v9, 0x7f020083

    const v8, 0x7f020082

    const v7, 0x7f020081

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    :goto_0
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    return-object v3

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v5, "off"

    const v6, 0x7f0f0063

    invoke-direct {v4, v7, v7, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v5, "auto"

    const v6, 0x7f0f0061

    invoke-direct {v4, v10, v10, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v5, "on"

    invoke-direct {v4, v8, v8, v11, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "torch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v5, "torch"

    invoke-direct {v4, v8, v8, v11, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v5, "torch"

    const v6, 0x7f0f0064

    invoke-direct {v4, v9, v9, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v5, "off"

    const v6, 0x7f0f0063

    invoke-direct {v4, v7, v7, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v5, "torch"

    const v6, 0x7f0f0064

    invoke-direct {v4, v9, v9, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mItems:Ljava/util/List;

    return-object v3

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setClosed(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
