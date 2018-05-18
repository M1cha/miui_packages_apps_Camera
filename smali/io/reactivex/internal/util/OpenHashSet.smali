.class public final Lio/reactivex/internal/util/OpenHashSet;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field mask:I

.field maxSize:I

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    invoke-static {p1}, Lio/reactivex/internal/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-void
.end method

.method static mix(I)I
    .locals 2

    const v1, -0x61c88647

    mul-int v0, p0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v4

    and-int v3, v4, v2

    aget-object v1, v0, v3

    if-nez v1, :cond_1

    :cond_0
    aput-object p1, v0, v3

    iget v4, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    iget v5, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    if-ge v4, v5, :cond_4

    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v4, v3, 0x1

    and-int v3, v4, v2

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_3
    return v5

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/util/OpenHashSet;->rehash()V

    goto :goto_0
.end method

.method public keys()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method rehash()V
    .locals 10

    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    array-length v2, v0

    shl-int/lit8 v6, v2, 0x1

    add-int/lit8 v5, v6, -0x1

    new-array v1, v6, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget v3, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    move v4, v3

    :goto_0
    add-int/lit8 v3, v4, -0x1

    if-nez v4, :cond_0

    iput v5, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    int-to-float v8, v6

    iget v9, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    iput-object v1, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v2, v2, -0x1

    aget-object v8, v0, v2

    if-eqz v8, :cond_0

    aget-object v8, v0, v2

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v8

    and-int v7, v8, v5

    aget-object v8, v1, v7

    if-nez v8, :cond_2

    :cond_1
    aget-object v8, v0, v2

    aput-object v8, v1, v7

    move v4, v3

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v8, v7, 0x1

    and-int v7, v8, v5

    aget-object v8, v1, v7

    if-eqz v8, :cond_1

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v4

    and-int v3, v4, v2

    aget-object v1, v0, v3

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    add-int/lit8 v4, v3, 0x1

    and-int v3, v4, v2

    aget-object v1, v0, v3

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v0, v2}, Lio/reactivex/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result v4

    return v4

    :cond_1
    return v5

    :cond_2
    invoke-virtual {p0, v3, v0, v2}, Lio/reactivex/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result v4

    return v4

    :cond_3
    return v5
.end method

.method removeEntry(I[Ljava/lang/Object;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    const/4 v4, 0x0

    iget v3, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    :goto_0
    move v1, p1

    add-int/lit8 v3, p1, 0x1

    and-int p1, v3, p3

    :goto_1
    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v3

    and-int v2, v3, p3

    if-le v1, p1, :cond_1

    if-ge v1, v2, :cond_4

    :goto_2
    add-int/lit8 v3, p1, 0x1

    and-int p1, v3, p3

    goto :goto_1

    :cond_0
    aput-object v4, p2, v1

    const/4 v3, 0x1

    return v3

    :cond_1
    if-lt v1, v2, :cond_3

    :cond_2
    aput-object v0, p2, v1

    goto :goto_0

    :cond_3
    if-gt v2, p1, :cond_2

    goto :goto_2

    :cond_4
    if-gt v2, p1, :cond_2

    goto :goto_2
.end method
