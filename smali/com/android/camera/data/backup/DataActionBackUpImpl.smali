.class public Lcom/android/camera/data/backup/DataActionBackUpImpl;
.super Ljava/lang/Object;
.source "DataActionBackUpImpl.java"

# interfaces
.implements Lcom/android/camera/data/backup/DataBackUp;


# instance fields
.field private mBackupArrays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/util/SimpleArrayMap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    :cond_0
    iget-object v2, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->cloneValues()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->resetAll()V

    :cond_2
    return-void
.end method

.method public clearBackUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public getBackupFilter(II)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    if-nez v2, :cond_0

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string/jumbo v3, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getBackupRunning(II)Landroid/support/v4/util/SimpleArrayMap;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/SimpleArrayMap;

    return-object v1
.end method

.method public isLastVideoFastMotion()Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    const/16 v4, 0xa9

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    if-nez v1, :cond_0

    return v5

    :cond_0
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    return v5

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method public isLastVideoSlowMotion()Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    const/16 v4, 0xa8

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    if-nez v1, :cond_0

    return v5

    :cond_0
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    return v5

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method public revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->resetAll()V

    iget-object v2, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getValues()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getValues()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method
