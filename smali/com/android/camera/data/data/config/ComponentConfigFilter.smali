.class public Lcom/android/camera/data/data/config/ComponentConfigFilter;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigFilter.java"


# instance fields
.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public clearFilterSelected(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/constant/ModeConstant;->getAllModes()[I

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f0f007a

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

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_camera_shader_coloreffect_key"

    return-object v0
.end method

.method public isClosed(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public mapToItems(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    iget-object v2, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mItems:Ljava/util/List;

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getNameResId()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClosed(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method
