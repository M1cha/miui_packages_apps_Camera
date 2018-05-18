.class public final Lcom/android/zxing/YUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "YUVLuminanceSource.java"


# instance fields
.field private final mDataHeight:I

.field private final mDataWidth:I

.field private final mLeft:I

.field private final mTop:I

.field private final mYUVData:[B


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 2

    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    iput p2, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    iput p3, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataHeight:I

    iput p4, p0, Lcom/android/zxing/YUVLuminanceSource;->mLeft:I

    iput p5, p0, Lcom/android/zxing/YUVLuminanceSource;->mTop:I

    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 10

    invoke-virtual {p0}, Lcom/android/zxing/YUVLuminanceSource;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/zxing/YUVLuminanceSource;->getHeight()I

    move-result v1

    iget v8, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    if-ne v5, v8, :cond_0

    iget v8, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataHeight:I

    if-ne v1, v8, :cond_0

    iget-object v8, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    return-object v8

    :cond_0
    mul-int v0, v5, v1

    new-array v3, v0, [B

    iget v8, p0, Lcom/android/zxing/YUVLuminanceSource;->mTop:I

    iget v9, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/android/zxing/YUVLuminanceSource;->mLeft:I

    add-int v2, v8, v9

    iget v8, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    if-ne v5, v8, :cond_1

    iget-object v8, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v9, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v3

    :cond_1
    iget-object v7, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v4, v6, v5

    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v8, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    add-int/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public getRow(I[B)[B
    .locals 5

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/zxing/YUVLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested row is outside the image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/zxing/YUVLuminanceSource;->getWidth()I

    move-result v1

    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge v2, v1, :cond_3

    :cond_2
    new-array p2, v1, [B

    :cond_3
    iget v2, p0, Lcom/android/zxing/YUVLuminanceSource;->mTop:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/android/zxing/YUVLuminanceSource;->mDataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/zxing/YUVLuminanceSource;->mLeft:I

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/android/zxing/YUVLuminanceSource;->mYUVData:[B

    invoke-static {v2, v0, p2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object p2
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
