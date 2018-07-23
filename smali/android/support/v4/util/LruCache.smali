.class public Landroid/support/v4/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-lez p1, :cond_0

    .line 51
    iput p1, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 250
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 253
    return v0

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 312
    :try_start_0
    iget v0, p0, Landroid/support/v4/util/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 272
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 326
    :try_start_0
    iget v0, p0, Landroid/support/v4/util/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v6, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 83
    move-object v0, p0

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v5, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 85
    .local v4, "mapValue":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_1

    .line 89
    iget v5, p0, Landroid/support/v4/util/LruCache;->missCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/v4/util/LruCache;->missCount:I

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p0, p1}, Landroid/support/v4/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 100
    .local v3, "createdValue":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_2

    .line 104
    move-object v1, p0

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-enter p0

    .line 105
    :try_start_1
    iget v5, p0, Landroid/support/v4/util/LruCache;->createCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/v4/util/LruCache;->createCount:I

    .line 106
    iget-object v5, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 108
    if-nez v4, :cond_3

    .line 112
    iget v5, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, p1, v3}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/support/v4/util/LruCache;->size:I

    .line 114
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-nez v4, :cond_4

    .line 120
    iget v5, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    invoke-virtual {p0, v5}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 121
    return-object v3

    .line 79
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .end local v3    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "key == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    .restart local v4    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_2
    iget v5, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    .line 87
    monitor-exit p0

    return-object v4

    .line 90
    .end local v4    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    .restart local v1    # "-l_4_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 101
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v3    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v4    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2
    return-object v6

    .line 110
    .restart local v1    # "-l_4_R":Ljava/lang/Object;
    :cond_3
    :try_start_3
    iget-object v5, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :catchall_1
    move-exception v2

    .local v2, "-l_5_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 117
    .end local v2    # "-l_5_R":Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1, v3, v4}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-object v4
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 297
    :try_start_0
    iget v0, p0, Landroid/support/v4/util/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 289
    :try_start_0
    iget v0, p0, Landroid/support/v4/util/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 305
    :try_start_0
    iget v0, p0, Landroid/support/v4/util/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    .line 133
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "key == null || value == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_1
    if-eqz p2, :cond_0

    .line 137
    move-object v0, p0

    .local v0, "-l_4_R":Ljava/lang/Object;
    monitor-enter p0

    .line 138
    :try_start_0
    iget v3, p0, Landroid/support/v4/util/LruCache;->putCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v4/util/LruCache;->putCount:I

    .line 139
    iget v3, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/util/LruCache;->size:I

    .line 140
    iget-object v3, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "previous":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2

    .line 144
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-nez v2, :cond_3

    .line 150
    :goto_1
    iget v3, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    invoke-virtual {p0, v3}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 151
    return-object v2

    .line 142
    :cond_2
    :try_start_1
    iget v3, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, p1, v2}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/util/LruCache;->size:I

    goto :goto_0

    .line 144
    .end local v2    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    .local v1, "-l_5_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 147
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .restart local v2    # "previous":Ljava/lang/Object;, "TV;"
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, v2, p2}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 319
    :try_start_0
    iget v0, p0, Landroid/support/v4/util/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 193
    if-eqz p1, :cond_0

    .line 198
    move-object v0, p0

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, "previous":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    .line 203
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-nez v2, :cond_2

    .line 209
    :goto_1
    return-object v2

    .line 194
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v2    # "previous":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "key == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    .restart local v2    # "previous":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    iget v3, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, p1, v2}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/util/LruCache;->size:I

    goto :goto_0

    .line 203
    .end local v2    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 206
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v2    # "previous":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, v2, v5}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public resize(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 61
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    if-lez p1, :cond_0

    .line 65
    move-object v0, p0

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter p0

    .line 66
    :try_start_0
    iput p1, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0, p1}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 69
    return-void

    .line 62
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "maxSize <= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 280
    :try_start_0
    iget v0, p0, Landroid/support/v4/util/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 334
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    const/4 v1, 0x0

    monitor-enter p0

    .line 338
    :try_start_0
    iget v2, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    iget v3, p0, Landroid/support/v4/util/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 339
    .local v0, "accesses":I
    if-nez v0, :cond_0

    .line 340
    .local v1, "hitPercent":I
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Landroid/support/v4/util/LruCache;->missCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 339
    .end local v1    # "hitPercent":I
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "accesses":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public trimToSize(I)V
    .locals 8
    .param p1, "maxSize"    # I

    .prologue
    .line 165
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    :goto_0
    move-object v0, p0

    .local v0, "-l_4_R":Ljava/lang/Object;
    monitor-enter p0

    .line 166
    :try_start_0
    iget v5, p0, Landroid/support/v4/util/LruCache;->size:I

    if-gez v5, :cond_1

    .line 167
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    :catchall_0
    move-exception v1

    .local v1, "-l_6_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 166
    .end local v1    # "-l_6_R":Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 171
    :goto_1
    iget v5, p0, Landroid/support/v4/util/LruCache;->size:I

    if-gt v5, p1, :cond_4

    .line 172
    :cond_2
    monitor-exit p0

    .line 185
    return-void

    .line 166
    :cond_3
    iget v5, p0, Landroid/support/v4/util/LruCache;->size:I

    if-nez v5, :cond_0

    goto :goto_1

    .line 171
    :cond_4
    iget-object v5, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    iget-object v5, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 176
    .local v3, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 178
    .local v4, "value":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget v5, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, v2, v4}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/support/v4/util/LruCache;->size:I

    .line 180
    iget v5, p0, Landroid/support/v4/util/LruCache;->evictionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/v4/util/LruCache;->evictionCount:I

    .line 181
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v2, v4, v6}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
