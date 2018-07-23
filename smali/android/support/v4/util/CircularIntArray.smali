.class public final Landroid/support/v4/util/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularIntArray;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-lez p1, :cond_0

    .line 60
    move v0, p1

    .line 63
    .local v0, "arrayCapacity":I
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 66
    :goto_0
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    .line 67
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    .line 68
    return-void

    .line 58
    .end local v0    # "arrayCapacity":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "capacity must be positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
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
    const/4 v6, 0x0

    .line 29
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    array-length v1, v4

    .line 30
    .local v1, "n":I
    iget v4, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    sub-int v3, v1, v4

    .line 31
    .local v3, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 32
    .local v2, "newCapacity":I
    if-ltz v2, :cond_0

    .line 35
    new-array v0, v2, [I

    .line 36
    .local v0, "a":[I
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v5, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v5, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    .line 39
    iput v6, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 40
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 41
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    .line 42
    return-void

    .line 33
    .end local v0    # "a":[I
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Max array capacity exceeded"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public addFirst(I)V
    .locals 2
    .param p1, "e"    # I

    .prologue
    .line 75
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 76
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    aput p1, v0, v1

    .line 77
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    goto :goto_0
.end method

.method public addLast(I)V
    .locals 2
    .param p1, "e"    # I

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    aput p1, v0, v1

    .line 88
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 89
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    if-eq v0, v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 124
    return-void
.end method

.method public get(I)I
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 187
    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public getFirst()I
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    aget v0, v0, v1

    return v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLast()I
    .locals 3

    .prologue
    .line 176
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public popFirst()I
    .locals 3

    .prologue
    .line 100
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v1, v2, :cond_0

    .line 101
    iget-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    aget v0, v1, v2

    .line 102
    .local v0, "result":I
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 103
    return v0

    .line 100
    .end local v0    # "result":I
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public popLast()I
    .locals 4

    .prologue
    .line 112
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v3, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v2, v3, :cond_0

    .line 113
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int v1, v2, v3

    .line 114
    .local v1, "t":I
    iget-object v2, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    aget v0, v2, v1

    .line 115
    .local v0, "result":I
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 116
    return v0

    .line 112
    .end local v0    # "result":I
    .end local v1    # "t":I
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public removeFromEnd(I)V
    .locals 2
    .param p1, "numOfElements"    # I

    .prologue
    .line 151
    if-lez p1, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 157
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    sub-int/2addr v0, p1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 158
    return-void

    .line 152
    :cond_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeFromStart(I)V
    .locals 2
    .param p1, "numOfElements"    # I

    .prologue
    .line 134
    if-lez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 140
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 141
    return-void

    .line 135
    :cond_0
    return-void

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
