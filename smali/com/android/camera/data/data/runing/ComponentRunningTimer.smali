.class public Lcom/android/camera/data/data/runing/ComponentRunningTimer;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningTimer.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const v5, 0x7f02009a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "0"

    const v3, 0x7f0f01f5

    invoke-direct {v1, v5, v5, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "3"

    const v3, 0x7f02009b

    const v4, 0x7f0f01f9

    invoke-direct {v1, v5, v3, v4, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "5"

    const v3, 0x7f02009c

    const v4, 0x7f0f01fa

    invoke-direct {v1, v5, v3, v4, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f0f01f5

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

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->mItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_delay_capture_mode"

    return-object v0
.end method

.method public getNextValue()Ljava/lang/String;
    .locals 2

    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "3"

    return-object v1

    :cond_0
    const-string/jumbo v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "5"

    return-object v1

    :cond_1
    const-string/jumbo v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "0"

    return-object v1

    :cond_2
    const-string/jumbo v1, "0"

    return-object v1
.end method

.method public getTimer()I
    .locals 1

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSwitchOn()Z
    .locals 2

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public switchOff()V
    .locals 2

    const-string/jumbo v0, "0"

    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
