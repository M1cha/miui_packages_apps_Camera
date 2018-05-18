.class public Lcom/android/camera/data/data/config/ComponentManuallyET;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyET.java"


# instance fields
.field fullItems:[Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->fullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->fullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0

    :cond_0
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "0"

    const v3, 0x7f0f0172

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "1000"

    const v3, 0x7f0f0182

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "2000"

    const v3, 0x7f0f0181

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "4000"

    const v3, 0x7f0f0180

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "8000"

    const v3, 0x7f0f017f

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "16667"

    const v3, 0x7f0f017e

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "33333"

    const v3, 0x7f0f017d

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "66667"

    const v3, 0x7f0f017c

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "125000"

    const v3, 0x7f0f017b

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "250000"

    const v3, 0x7f0f017a

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "500000"

    const v3, 0x7f0f0179

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "1000000"

    const v3, 0x7f0f0178

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "2000000"

    const v3, 0x7f0f0177

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "4000000"

    const v3, 0x7f0f0176

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "8000000"

    const v3, 0x7f0f0175

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "16000000"

    const v3, 0x7f0f0174

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "32000000"

    const v3, 0x7f0f0173

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->fullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->fullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method

.method private initItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v7, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v7, :cond_1

    const v4, 0x1e8480

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMinExposureTimes()I

    move-result v5

    const/4 v3, 0x0

    :goto_1
    array-length v7, v2

    if-ge v3, v7, :cond_3

    aget-object v0, v2, v3

    iget-object v7, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt v5, v1, :cond_2

    if-gt v1, v4, :cond_2

    :goto_2
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMaxExposureTimes()I

    move-result v4

    goto :goto_0

    :cond_2
    if-nez v3, :cond_0

    goto :goto_2

    :cond_3
    return-object v6
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->setComponentValue(ILjava/lang/String;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f0f0170

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

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    return-object v0
.end method

.method public getValueDisplayString(I)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    iget-object v5, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v3, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "invalid value"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
