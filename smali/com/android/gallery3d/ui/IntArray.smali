.class public Lcom/android/gallery3d/ui/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/IntArray;->mData:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/ui/IntArray;->mData:[I

    array-length v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    iget v2, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/gallery3d/ui/IntArray;->mData:[I

    iget v2, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/IntArray;->mData:[I

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/IntArray;->mData:[I

    iget v2, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    aput p1, v1, v2

    return-void
.end method

.method public clear()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/IntArray;->mData:[I

    array-length v0, v0

    if-eq v0, v1, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/IntArray;->mData:[I

    :cond_0
    return-void
.end method

.method public getInternalArray()[I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/ui/IntArray;->mData:[I

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/ui/IntArray;->mSize:I

    return v0
.end method
