.class public Lcom/android/gallery3d/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DataManager$1;,
        Lcom/android/gallery3d/data/DataManager$NotifyBroker;,
        Lcom/android/gallery3d/data/DataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcom/android/camera/CameraAppImpl;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/gallery3d/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/gallery3d/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/DataManager$DateTakenComparator;-><init>(Lcom/android/gallery3d/data/DataManager$1;)V

    sput-object v0, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .locals 2
    .param p1, "application"    # Lcom/android/camera/CameraAppImpl;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/camera/CameraAppImpl;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method


# virtual methods
.method addSource(Lcom/android/gallery3d/data/MediaSource;)V
    .locals 2
    .param p1, "source"    # Lcom/android/gallery3d/data/MediaSource;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public broadcastDeletion()V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 320
    return-void
.end method

.method public delete(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 238
    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 253
    if-nez p1, :cond_0

    move-object v1, v3

    .line 258
    :goto_0
    return-object v1

    .line 254
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSource;

    .line 255
    .local v2, "source":Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 256
    .local v1, "path":Lcom/android/gallery3d/data/Path;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "path":Lcom/android/gallery3d/data/Path;
    .end local v2    # "source":Lcom/android/gallery3d/data/MediaSource;
    :cond_2
    move-object v1, v3

    .line 258
    goto :goto_0
.end method

.method public getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContentUriForExternal(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 8
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 154
    .local v0, "obj":Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 170
    .end local v0    # "obj":Lcom/android/gallery3d/data/MediaObject;
    :goto_0
    return-object v0

    .line 156
    .restart local v0    # "obj":Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSource;

    .line 157
    .local v2, "source":Lcom/android/gallery3d/data/MediaSource;
    if-nez v2, :cond_1

    .line 158
    const-string v5, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot find media source for path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 159
    goto :goto_0

    .line 163
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/data/MediaSource;->createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 164
    .local v1, "object":Lcom/android/gallery3d/data/MediaObject;
    if-nez v1, :cond_2

    .line 165
    const-string v5, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create media object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    .line 167
    goto :goto_0

    .line 168
    .end local v1    # "object":Lcom/android/gallery3d/data/MediaObject;
    :catch_0
    move-exception v3

    .line 169
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in creating media object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 170
    goto :goto_0
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;
    .locals 5
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "seq":[Ljava/lang/String;
    array-length v1, v2

    .line 189
    .local v1, "n":I
    new-array v3, v1, [Lcom/android/gallery3d/data/MediaSet;

    .line 190
    .local v3, "sets":[Lcom/android/gallery3d/data/MediaSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-object v3
.end method

.method public getMediaType(Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations(Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    return v0
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 4

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/gallery3d/data/LocalSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/LocalSource;-><init>(Lcom/android/camera/CameraAppImpl;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 117
    new-instance v2, Lcom/android/gallery3d/data/ComboSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/ComboSource;-><init>(Lcom/android/camera/CameraAppImpl;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 119
    new-instance v2, Lcom/android/gallery3d/data/FilterSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/FilterSource;-><init>(Lcom/android/camera/CameraAppImpl;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 121
    new-instance v2, Lcom/android/gallery3d/data/SnailSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/SnailSource;-><init>(Lcom/android/camera/CameraAppImpl;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 123
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    if-lez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 125
    .local v1, "source":Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/android/gallery3d/data/MediaSource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V
    .locals 11
    .param p2, "consumer"    # Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    .param p3, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 208
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 209
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 210
    .local v6, "path":Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 212
    .local v1, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    if-nez v1, :cond_0

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .restart local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    new-instance v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    add-int v10, v2, p3

    invoke-direct {v9, v6, v10}, Lcom/android/gallery3d/data/MediaSource$PathId;-><init>(Lcom/android/gallery3d/data/Path;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    .end local v6    # "path":Lcom/android/gallery3d/data/Path;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 222
    .restart local v7    # "prefix":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource;

    .line 223
    .local v8, "source":Lcom/android/gallery3d/data/MediaSource;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, p2}, Lcom/android/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    .line 225
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "source":Lcom/android/gallery3d/data/MediaSource;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 308
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    if-nez v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 310
    .local v1, "source":Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->pause()V

    goto :goto_0

    .line 313
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ChangeNotifier;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifier"    # Lcom/android/gallery3d/data/ChangeNotifier;

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 289
    if-nez v1, :cond_0

    .line 290
    new-instance v2, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v1    # "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .local v2, "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 295
    .end local v2    # "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1    # "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;->registerNotifier(Lcom/android/gallery3d/data/ChangeNotifier;)V

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1    # "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v2    # "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1    # "broker":Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 300
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 302
    .local v1, "source":Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->resume()V

    goto :goto_0

    .line 305
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public rotate(Lcom/android/gallery3d/data/Path;I)V
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "degrees"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/MediaObject;->rotate(I)V

    .line 242
    return-void
.end method
