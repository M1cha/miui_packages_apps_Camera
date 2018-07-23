.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


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


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 210
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 212
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    if-eqz p1, :cond_0

    .line 222
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 224
    :goto_0
    iput v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 225
    return-void

    .line 219
    :cond_0
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 220
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Landroid/support/v4/util/SimpleArrayMap;

    .prologue
    .line 231
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 232
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    goto :goto_0
.end method

.method private allocArrays(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    .line 138
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/16 v4, 0x8

    if-eq p1, v4, :cond_0

    .line 152
    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    .line 168
    :goto_0
    new-array v4, p1, [I

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 169
    shl-int/lit8 v4, p1, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 170
    return-void

    .line 139
    :cond_0
    const-class v0, Landroid/support/v4/util/ArrayMap;

    .local v0, "-l_2_R":Ljava/lang/Object;
    const-class v4, Landroid/support/v4/util/ArrayMap;

    monitor-enter v4

    .line 140
    :try_start_0
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 151
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 141
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    :cond_1
    :try_start_1
    sget-object v3, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 142
    .local v3, "array":[Ljava/lang/Object;
    iput-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 143
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 144
    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 145
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 146
    sget v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 149
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 153
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    .end local v3    # "array":[Ljava/lang/Object;
    :cond_2
    const-class v0, Landroid/support/v4/util/ArrayMap;

    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    const-class v4, Landroid/support/v4/util/ArrayMap;

    monitor-enter v4

    .line 154
    :try_start_2
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 165
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v2

    .local v2, "-l_5_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 155
    .end local v2    # "-l_5_R":Ljava/lang/Object;
    :cond_3
    :try_start_3
    sget-object v3, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 156
    .restart local v3    # "array":[Ljava/lang/Object;
    iput-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 157
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 158
    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 159
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 160
    sget v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 163
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 8
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    .line 173
    array-length v4, p0

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 187
    array-length v4, p0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 202
    :goto_0
    return-void

    .line 174
    :cond_0
    const-class v0, Landroid/support/v4/util/ArrayMap;

    .local v0, "-l_3_R":Ljava/lang/Object;
    const-class v4, Landroid/support/v4/util/ArrayMap;

    monitor-enter v4

    .line 175
    :try_start_0
    sget v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-lt v4, v7, :cond_1

    .line 186
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .local v1, "-l_5_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 176
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    :cond_1
    :try_start_1
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    .line 177
    const/4 v4, 0x1

    aput-object p0, p1, v4

    .line 178
    shl-int/lit8 v4, p2, 0x1

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_2

    .line 181
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 182
    sget v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    goto :goto_1

    .line 179
    :cond_2
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 188
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_3
    const-class v0, Landroid/support/v4/util/ArrayMap;

    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    const-class v4, Landroid/support/v4/util/ArrayMap;

    monitor-enter v4

    .line 189
    :try_start_2
    sget v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    if-lt v4, v7, :cond_4

    .line 200
    :goto_3
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v2

    .local v2, "-l_6_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 190
    .end local v2    # "-l_6_R":Ljava/lang/Object;
    :cond_4
    :try_start_3
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    .line 191
    const/4 v4, 0x1

    aput-object p0, p1, v4

    .line 192
    shl-int/lit8 v4, p2, 0x1

    add-int/lit8 v3, v4, -0x1

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v6, :cond_5

    .line 195
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 196
    sget v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    goto :goto_3

    .line 193
    :cond_5
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 241
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 243
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 244
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 245
    iput v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 254
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v2, v2

    if-lt v2, p1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 256
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 257
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 258
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gtz v2, :cond_1

    .line 262
    :goto_1
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 532
    if-eq p0, p1, :cond_0

    .line 535
    instance-of v7, p1, Ljava/util/Map;

    if-nez v7, :cond_1

    .line 561
    return v9

    .line 533
    :cond_0
    return v10

    :cond_1
    move-object v4, p1

    .line 536
    check-cast v4, Ljava/util/Map;

    .line 537
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 542
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lt v0, v7, :cond_3

    .line 559
    return v10

    .line 538
    .end local v0    # "i":I
    :cond_2
    return v9

    .line 543
    .restart local v0    # "i":I
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 544
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 545
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 546
    .local v6, "theirs":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 550
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 542
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_4
    if-eqz v6, :cond_6

    .line 548
    :cond_5
    return v9

    .line 547
    :cond_6
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 551
    :cond_7
    return v9

    .line 554
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 555
    .local v2, "ignored":Ljava/lang/NullPointerException;
    return v9

    .line 556
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 557
    .local v1, "ignored":Ljava/lang/ClassCastException;
    return v9
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 324
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 569
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 570
    .local v1, "hashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 571
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 572
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .local v4, "s":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 576
    return v3

    .line 573
    :cond_0
    aget-object v6, v0, v5

    .line 574
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 572
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 574
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 62
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 65
    .local v0, "N":I
    if-eqz v0, :cond_2

    .line 69
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 72
    .local v3, "index":I
    if-ltz v3, :cond_3

    .line 77
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 83
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_0
    if-lt v1, v0, :cond_5

    .line 88
    :cond_0
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_7

    .line 96
    :cond_1
    xor-int/lit8 v4, v1, -0x1

    return v4

    .line 66
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    :cond_2
    const/4 v4, -0x1

    return v4

    .line 73
    .restart local v3    # "index":I
    :cond_3
    return v3

    .line 78
    :cond_4
    return v3

    .line 83
    .restart local v1    # "end":I
    :cond_5
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_0

    .line 84
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_6
    return v1

    .line 88
    .restart local v2    # "i":I
    :cond_7
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_1

    .line 89
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 88
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 89
    :cond_8
    return v2
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 283
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 6

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 100
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 103
    .local v0, "N":I
    if-eqz v0, :cond_2

    .line 107
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, v5}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 110
    .local v3, "index":I
    if-ltz v3, :cond_3

    .line 115
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 121
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_0
    if-lt v1, v0, :cond_5

    .line 126
    :cond_0
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_7

    .line 134
    :cond_1
    xor-int/lit8 v4, v1, -0x1

    return v4

    .line 104
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    :cond_2
    const/4 v4, -0x1

    return v4

    .line 111
    .restart local v3    # "index":I
    :cond_3
    return v3

    .line 116
    :cond_4
    return v3

    .line 121
    .restart local v1    # "end":I
    :cond_5
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_0

    .line 122
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_6

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_6
    return v1

    .line 126
    .restart local v2    # "i":I
    :cond_7
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_1

    .line 127
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_8

    .line 126
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 127
    :cond_8
    return v2
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 287
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 288
    .local v0, "N":I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 289
    .local v1, "array":[Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 296
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_3

    .line 302
    :cond_0
    const/4 v3, -0x1

    return v3

    .line 290
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 291
    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    .line 290
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 292
    :cond_2
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 297
    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 296
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 298
    :cond_4
    shr-int/lit8 v3, v2, 0x1

    return v3
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 362
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v11, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x4

    const/4 v9, 0x0

    .line 376
    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 381
    .local v0, "hash":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .line 383
    .local v1, "index":I
    :goto_0
    if-gez v1, :cond_1

    .line 390
    xor-int/lit8 v1, v1, -0x1

    .line 391
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 410
    :goto_1
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lt v1, v6, :cond_6

    .line 417
    :goto_2
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aput v0, v6, v1

    .line 418
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object p1, v6, v7

    .line 419
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object p2, v6, v7

    .line 420
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 421
    return-object v11

    .line 377
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    const/4 v0, 0x0

    .line 378
    .restart local v0    # "hash":I
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 384
    :cond_1
    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v6, 0x1

    .line 385
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v6, v1

    .line 386
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 387
    return-object v5

    .line 392
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :cond_2
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v7, v6, :cond_3

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v7, v2, :cond_4

    .line 397
    .local v2, "n":I
    :goto_3
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 398
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 399
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 401
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-gtz v6, :cond_5

    .line 407
    :goto_4
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v4, v3, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_1

    .line 392
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_3
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v6, v7

    goto :goto_3

    :cond_4
    move v2, v6

    goto :goto_3

    .line 403
    .restart local v2    # "n":I
    .restart local v3    # "oarray":[Ljava/lang/Object;
    .restart local v4    # "ohashes":[I
    :cond_5
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 413
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_6
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v9, v1

    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    shl-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 429
    iget v0, p1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 430
    .local v0, "N":I
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    .line 431
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eqz v2, :cond_1

    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 442
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 432
    :cond_1
    if-lez v0, :cond_0

    .line 433
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    goto :goto_1

    .line 439
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 452
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 456
    const/4 v1, 0x0

    return-object v1

    .line 453
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 465
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v4, v5

    .line 466
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 474
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v4, v4

    if-gt v4, v0, :cond_3

    .line 500
    :cond_0
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 501
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lt p1, v4, :cond_6

    .line 508
    :goto_0
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    .line 509
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    .line 512
    :cond_1
    :goto_1
    return-object v3

    .line 469
    :cond_2
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 470
    sget-object v4, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 471
    sget-object v4, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 472
    iput v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    goto :goto_1

    .line 474
    :cond_3
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_0

    .line 478
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gt v4, v0, :cond_4

    .line 482
    .local v0, "n":I
    :goto_2
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 483
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 484
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 486
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 487
    if-gtz p1, :cond_5

    .line 492
    :goto_3
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge p1, v4, :cond_1

    .line 495
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 478
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_4
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    goto :goto_2

    .line 489
    .restart local v0    # "n":I
    .restart local v1    # "oarray":[Ljava/lang/Object;
    .restart local v2    # "ohashes":[I
    :cond_5
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 504
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_6
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    iget v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 353
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 354
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 355
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 519
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 588
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 593
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lt v1, v4, :cond_1

    .line 612
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 589
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_0
    const-string/jumbo v4, "{}"

    return-object v4

    .line 595
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    :cond_1
    if-gtz v1, :cond_2

    .line 598
    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 599
    .local v2, "key":Ljava/lang/Object;
    if-ne v2, p0, :cond_3

    .line 602
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :goto_2
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 606
    .local v3, "value":Ljava/lang/Object;
    if-ne v3, p0, :cond_4

    .line 609
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 600
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 607
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
