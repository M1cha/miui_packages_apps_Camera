.class public final Lcom/google/zxing/datamatrix/DataMatrixReader;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 15
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 99
    .local v2, height:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 100
    .local v10, width:I
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 104
    .local v7, minDimension:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v6

    .line 105
    .local v6, leftTopBlack:[I
    if-nez v6, :cond_0

    .line 106
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 108
    :cond_0
    aget v11, v6, v14

    .line 109
    .local v11, x:I
    const/4 v13, 0x1

    aget v12, v6, v13

    .line 110
    .local v12, y:I
    :goto_0
    if-ge v11, v7, :cond_1

    if-ge v12, v7, :cond_1

    invoke-virtual {p0, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 111
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 113
    :cond_1
    if-ne v11, v7, :cond_2

    .line 114
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 117
    :cond_2
    aget v13, v6, v14

    sub-int v8, v11, v13

    .line 120
    .local v8, moduleSize:I
    add-int/lit8 v9, v10, -0x1

    .line 121
    .local v9, rowEndOfSymbol:I
    :goto_1
    if-ltz v9, :cond_3

    invoke-virtual {p0, v9, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-nez v13, :cond_3

    .line 122
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 124
    :cond_3
    if-gez v9, :cond_4

    .line 125
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 127
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 130
    sub-int v13, v9, v11

    rem-int/2addr v13, v8

    if-eqz v13, :cond_5

    .line 131
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 133
    :cond_5
    sub-int v13, v9, v11

    div-int/2addr v13, v8

    add-int/lit8 v1, v13, 0x2

    .line 135
    .local v1, dimension:I
    add-int/2addr v12, v8

    .line 140
    shr-int/lit8 v13, v8, 0x1

    sub-int/2addr v11, v13

    .line 141
    shr-int/lit8 v13, v8, 0x1

    sub-int/2addr v12, v13

    .line 143
    add-int/lit8 v13, v1, -0x1

    mul-int/2addr v13, v8

    add-int/2addr v13, v11

    if-ge v13, v10, :cond_6

    add-int/lit8 v13, v1, -0x1

    mul-int/2addr v13, v8

    add-int/2addr v13, v12

    if-lt v13, v2, :cond_7

    .line 145
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 149
    :cond_7
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 150
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_a

    .line 151
    mul-int v13, v3, v8

    add-int v4, v12, v13

    .line 152
    .local v4, iOffset:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    if-ge v5, v1, :cond_9

    .line 153
    mul-int v13, v5, v8

    add-int/2addr v13, v11

    invoke-virtual {p0, v13, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 154
    invoke-virtual {v0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 152
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 150
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 158
    .end local v4           #iOffset:I
    .end local v5           #j:I
    :cond_a
    return-object v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 8
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p2, :cond_2

    sget-object v5, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/datamatrix/DataMatrixReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 66
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    iget-object v5, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-virtual {v5, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 67
    .local v1, decoderResult:Lcom/google/zxing/common/DecoderResult;
    sget-object v3, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 73
    .end local v0           #bits:Lcom/google/zxing/common/BitMatrix;
    .local v3, points:[Lcom/google/zxing/ResultPoint;
    :goto_0
    new-instance v4, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v6

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 75
    .local v4, result:Lcom/google/zxing/Result;
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 76
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 79
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-object v4

    .line 69
    .end local v1           #decoderResult:Lcom/google/zxing/common/DecoderResult;
    .end local v3           #points:[Lcom/google/zxing/ResultPoint;
    .end local v4           #result:Lcom/google/zxing/Result;
    :cond_2
    new-instance v5, Lcom/google/zxing/datamatrix/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/zxing/datamatrix/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    .line 70
    .local v2, detectorResult:Lcom/google/zxing/common/DetectorResult;
    iget-object v5, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 71
    .restart local v1       #decoderResult:Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .restart local v3       #points:[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
