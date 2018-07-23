.class public final Landroid/support/v4/util/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v2, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-lez p1, :cond_0

    .line 59
    move v0, p1

    .line 62
    .local v0, "arrayCapacity":I
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 65
    :goto_0
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    .line 66
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    .line 67
    return-void

    .line 57
    .end local v0    # "arrayCapacity":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "capacity must be positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .restart local v0    # "arrayCapacity":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    shl-int v0, v2, v1

    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 7

    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v6, 0x0

    .line 28
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v1, v4

    .line 29
    .local v1, "n":I
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int v3, v1, v4

    .line 30
    .local v3, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 31
    .local v2, "newCapacity":I
    if-ltz v2, :cond_0

    .line 34
    new-array v0, v2, [Ljava/lang/Object;

    .line 35
    .local v0, "a":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "a":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    .line 38
    iput v6, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 39
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 40
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    .line 41
    return-void

    .line 32
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Max array capacity exceeded"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 75
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aput-object p1, v0, v1

    .line 76
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    goto :goto_0
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    aput-object p1, v0, v1

    .line 87
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 88
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    if-eq v0, v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    .line 129
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    if-gez p1, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 230
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aget-object v0, v0, v1

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 249
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aget-object v0, v1, v2

    .line 103
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 104
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 105
    return-object v0

    .line 100
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public popLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v3, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v2, v3, :cond_0

    .line 117
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int v1, v2, v3

    .line 118
    .local v1, "t":I
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v0, v2, v1

    .line 119
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 120
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 121
    return-object v0

    .line 115
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    .end local v1    # "t":I
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public removeFromEnd(I)V
    .locals 6
    .param p1, "numOfElements"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v5, 0x0

    .line 172
    if-lez p1, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v4

    if-gt p1, v4, :cond_1

    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "start":I
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-lt p1, v4, :cond_2

    .line 182
    :goto_0
    move v0, v3

    .local v0, "i":I
    :goto_1
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-lt v0, v4, :cond_3

    .line 185
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int v2, v4, v3

    .line 186
    .local v2, "removed":I
    sub-int/2addr p1, v2

    .line 187
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 188
    if-gtz p1, :cond_4

    .line 197
    :goto_2
    return-void

    .line 173
    .end local v0    # "i":I
    .end local v2    # "removed":I
    .end local v3    # "start":I
    :cond_0
    return-void

    .line 176
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 180
    .restart local v3    # "start":I
    :cond_2
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int v3, v4, p1

    goto :goto_0

    .line 183
    .restart local v0    # "i":I
    :cond_3
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v5, v4, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .restart local v2    # "removed":I
    :cond_4
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v4, v4

    iput v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 191
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int v1, v4, p1

    .line 192
    .local v1, "newTail":I
    move v0, v1

    :goto_3
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-lt v0, v4, :cond_5

    .line 195
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    goto :goto_2

    .line 193
    :cond_5
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v5, v4, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public removeFromStart(I)V
    .locals 6
    .param p1, "numOfElements"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v5, 0x0

    .line 139
    if-lez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 145
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v3

    .line 146
    .local v0, "end":I
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int v3, v0, v3

    if-lt p1, v3, :cond_2

    .line 149
    :goto_0
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 152
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int v2, v0, v3

    .line 153
    .local v2, "removed":I
    sub-int/2addr p1, v2

    .line 154
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 155
    if-gtz p1, :cond_4

    .line 162
    :goto_2
    return-void

    .line 140
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "removed":I
    :cond_0
    return-void

    .line 143
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 147
    .restart local v0    # "end":I
    :cond_2
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int v0, v3, p1

    goto :goto_0

    .line 150
    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    .restart local v2    # "removed":I
    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-lt v1, p1, :cond_5

    .line 160
    iput p1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    goto :goto_2

    .line 158
    :cond_5
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public size()I
    .locals 2

    .prologue
    .line 241
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
