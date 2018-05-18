.class public Lcom/android/camera/data/data/config/ComponentConfigHdr;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHdr.java"


# instance fields
.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 5

    const v4, 0x7f02008d

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "off"

    const v3, 0x7f0f01ef

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getDefaultFromConfig()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->getHDRDefaultValue(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "off"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "on"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "auto"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "live"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static initForBackCaptureMode(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    const v6, 0x7f02008d

    const v5, 0x7f02008b

    const v4, 0x7f02008a

    const v3, 0x7f02008c

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v1, "off"

    const v2, 0x7f0f01ef

    invoke-direct {v0, v6, v6, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v1, "auto"

    const v2, 0x7f0f01ee

    invoke-direct {v0, v4, v4, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01f4

    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01f0

    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v1, "live"

    const v2, 0x7f0f01f1

    invoke-direct {v0, v5, v5, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static initForCaptureMode(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForFrontCaptureMode(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForBackCaptureMode(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static initForFrontCaptureMode(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    const v5, 0x7f02008d

    const v4, 0x7f02008c

    const v3, 0x7f02008a

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v1, "off"

    const v2, 0x7f0f01ef

    invoke-direct {v0, v5, v5, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v1, "auto"

    const v2, 0x7f0f01ee

    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01f4

    invoke-direct {v0, v4, v4, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static isFrontCamera(I)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

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
    .locals 4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultFromConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_1
    const-string/jumbo v3, "off"

    return-object v3

    :pswitch_1
    const-string/jumbo v3, "off"

    return-object v3

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f0f016a

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

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "pref_camera_hdr_key"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "pref_video_hdr_key"

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unspecified hdr"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_2
        :pswitch_0
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

    const v2, 0x7f02008c

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f02008d

    return v1

    :cond_0
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f02008a

    return v1

    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f02008b

    return v1

    :cond_3
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f0117

    return v1

    :cond_0
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0118

    return v1

    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f0119

    return v1

    :cond_2
    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0f011a

    return v1

    :cond_3
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0f011b

    return v1

    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public isClosed(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isLastOn(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reInit(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const v5, 0x7f02008d

    const v4, 0x7f02008c

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForCaptureMode(Ljava/util/List;I)V

    :cond_0
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "off"

    const v3, 0x7f0f01f3

    invoke-direct {v1, v5, v5, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "on"

    const v3, 0x7f0f01f4

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setClosed(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
