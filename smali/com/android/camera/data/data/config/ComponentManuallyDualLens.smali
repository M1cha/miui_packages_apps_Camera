.class public Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyDualLens.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {}, Lcom/android/camera/Device;->isViceBackRemoasicCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f022a

    :goto_0
    const-string/jumbo v3, "wide"

    invoke-direct {v2, v4, v4, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {}, Lcom/android/camera/Device;->isViceBackRemoasicCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f022b

    :goto_1
    const-string/jumbo v3, "tele"

    invoke-direct {v2, v4, v4, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const v1, 0x7f0f0228

    goto :goto_0

    :cond_1
    const v1, 0x7f0f0229

    goto :goto_1
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wide"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f0f0227

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

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->mItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "pref_camera_zoom_mode_key"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "pref_camera_manually_lens"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
