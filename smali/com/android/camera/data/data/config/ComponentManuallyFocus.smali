.class public Lcom/android/camera/data/data/config/ComponentManuallyFocus;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyFocus.java"


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

    const v4, 0x7f0f0053

    const/4 v3, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "1000"

    invoke-direct {v1, v3, v3, v4, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v2, "manual"

    invoke-direct {v1, v3, v3, v4, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "1000"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f0f01cf

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

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_focus_position_key"

    return-object v0
.end method

.method public getValueDisplayString(I)I
    .locals 3
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    const v2, 0x7f0f0053

    return v2

    :cond_0
    const/4 v2, -0x2

    return v2
.end method

.method public getValueSelectedDrawable(I)I
    .locals 6
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    int-to-double v2, v0

    const-wide v4, 0x4082c00000000000L    # 600.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    const v2, 0x7f0200ac

    return v2

    :cond_1
    int-to-double v2, v0

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    const v2, 0x7f0200ad

    return v2

    :cond_2
    const v2, 0x7f0200ab

    return v2
.end method
