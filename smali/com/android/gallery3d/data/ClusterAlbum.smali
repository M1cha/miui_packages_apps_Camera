.class public Lcom/android/gallery3d/data/ClusterAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mName:Ljava/lang/String;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "dataManager"    # Lcom/android/gallery3d/data/DataManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;II",
            "Lcom/android/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :cond_0
    return-object v4

    .line 79
    :cond_1
    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    .local v2, "end":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v5, "subset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    sub-int v6, v2, p1

    new-array v0, v6, [Lcom/android/gallery3d/data/MediaItem;

    .line 82
    .local v0, "buf":[Lcom/android/gallery3d/data/MediaItem;
    new-instance v1, Lcom/android/gallery3d/data/ClusterAlbum$1;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/data/ClusterAlbum$1;-><init>([Lcom/android/gallery3d/data/MediaItem;)V

    .line 87
    .local v1, "consumer":Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v1, v6}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    sub-int v6, v2, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 90
    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ClusterAlbum$2;-><init>(Lcom/android/gallery3d/data/ClusterAlbum;)V

    .line 132
    .local v0, "consumer":Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 133
    return-void
.end method

.method protected enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 2
    .param p1, "consumer"    # Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    .param p2, "startIndex"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ClusterAlbum;->notifyContentChanged()V

    .line 116
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    .line 111
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    return-wide v0
.end method
