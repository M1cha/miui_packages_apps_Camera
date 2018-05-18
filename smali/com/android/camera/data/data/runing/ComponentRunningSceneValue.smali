.class public Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningSceneValue.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    return-void
.end method

.method private filterUnsupportItems(Landroid/hardware/Camera$Parameters;)V
    .locals 5

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedSceneModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v4, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initItems()V
    .locals 10

    const v9, 0x7f020120

    const v8, 0x7f02011e

    const v7, 0x7f02011c

    const v6, 0x7f02011a

    const v4, 0x7f020118

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "auto"

    const v3, 0x7f0f00c8

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "portrait"

    const v3, 0x7f020128

    const v4, 0x7f020128

    const v5, 0x7f0f00c9

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "landscape"

    const v3, 0x7f020122

    const v4, 0x7f020122

    const v5, 0x7f0f00ca

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "sports"

    const v3, 0x7f02012c

    const v4, 0x7f02012c

    const v5, 0x7f0f00d1

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "night"

    const v3, 0x7f020124

    const v4, 0x7f020124

    const v5, 0x7f0f00cb

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "night-portrait"

    const v3, 0x7f020125

    const v4, 0x7f020125

    const v5, 0x7f0f00cc

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "beach"

    const v3, 0x7f0f00cd

    invoke-direct {v1, v7, v7, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "snow"

    const v3, 0x7f02012a

    const v4, 0x7f02012a

    const v5, 0x7f0f00ce

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "sunset"

    const v3, 0x7f02012e

    const v4, 0x7f02012e

    const v5, 0x7f0f00cf

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "fireworks"

    const v3, 0x7f0f00d0

    invoke-direct {v1, v8, v8, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "backlight"

    const v3, 0x7f0f00d2

    invoke-direct {v1, v6, v6, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "flowers"

    const v3, 0x7f0f00d3

    invoke-direct {v1, v9, v9, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "auto"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f0f00c6

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

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_camera_scenemode_key"

    return-object v0
.end method

.method public init(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->initItems()V

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->filterUnsupportItems(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
