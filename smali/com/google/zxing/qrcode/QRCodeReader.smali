.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method

.method public static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 15
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 101
    .local v3, height:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    .line 102
    .local v11, width:I
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 106
    .local v8, minDimension:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v7

    .line 107
    .local v7, leftTopBlack:[I
    if-nez v7, :cond_0

    .line 108
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 110
    :cond_0
    const/4 v14, 0x0

    aget v12, v7, v14

    .line 111
    .local v12, x:I
    const/4 v14, 0x1

    aget v13, v7, v14

    .line 112
    .local v13, y:I
    :goto_0
    if-ge v12, v8, :cond_1

    if-ge v13, v8, :cond_1

    invoke-virtual {p0, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 113
    add-int/lit8 v12, v12, 0x1

    .line 114
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 116
    :cond_1
    if-eq v12, v8, :cond_2

    if-ne v13, v8, :cond_3

    .line 117
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 120
    :cond_3
    const/4 v14, 0x0

    aget v14, v7, v14

    sub-int v9, v12, v14

    .line 121
    .local v9, moduleSize:I
    if-nez v9, :cond_4

    .line 122
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 126
    :cond_4
    add-int/lit8 v10, v11, -0x1

    .line 127
    .local v10, rowEndOfSymbol:I
    :goto_1
    if-le v10, v12, :cond_5

    invoke-virtual {p0, v10, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-nez v14, :cond_5

    .line 128
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 130
    :cond_5
    if-gt v10, v12, :cond_6

    .line 131
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 133
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 136
    sub-int v14, v10, v12

    rem-int/2addr v14, v9

    if-eqz v14, :cond_7

    .line 137
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 139
    :cond_7
    sub-int v14, v10, v12

    div-int/2addr v14, v9

    add-int/lit8 v2, v14, 0x1

    .line 144
    .local v2, dimension:I
    const/4 v14, 0x1

    if-ne v9, v14, :cond_9

    const/4 v0, 0x1

    .line 145
    .local v0, backOffAmount:I
    :goto_2
    sub-int/2addr v12, v0

    .line 146
    sub-int/2addr v13, v0

    .line 148
    add-int/lit8 v14, v2, -0x1

    mul-int/2addr v14, v9

    add-int/2addr v14, v12

    if-ge v14, v11, :cond_8

    add-int/lit8 v14, v2, -0x1

    mul-int/2addr v14, v9

    add-int/2addr v14, v13

    if-lt v14, v3, :cond_a

    .line 150
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 144
    .end local v0           #backOffAmount:I
    :cond_9
    shr-int/lit8 v0, v9, 0x1

    goto :goto_2

    .line 154
    .restart local v0       #backOffAmount:I
    :cond_a
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 155
    .local v1, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v2, :cond_d

    .line 156
    mul-int v14, v4, v9

    add-int v5, v13, v14

    .line 157
    .local v5, iOffset:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_4
    if-ge v6, v2, :cond_c

    .line 158
    mul-int v14, v6, v9

    add-int/2addr v14, v12

    invoke-virtual {p0, v14, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 159
    invoke-virtual {v1, v6, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 157
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 155
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 163
    .end local v5           #iOffset:I
    .end local v6           #j:I
    :cond_d
    return-object v1
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
    .line 68
    if-eqz p2, :cond_2

    sget-object v5, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/qrcode/QRCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 70
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    iget-object v5, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v5, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 71
    .local v1, decoderResult:Lcom/google/zxing/common/DecoderResult;
    sget-object v3, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 78
    .end local v0           #bits:Lcom/google/zxing/common/BitMatrix;
    .local v3, points:[Lcom/google/zxing/ResultPoint;
    :goto_0
    new-instance v4, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v6

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 79
    .local v4, result:Lcom/google/zxing/Result;
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 80
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 83
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 85
    :cond_1
    return-object v4

    .line 73
    .end local v1           #decoderResult:Lcom/google/zxing/common/DecoderResult;
    .end local v3           #points:[Lcom/google/zxing/ResultPoint;
    .end local v4           #result:Lcom/google/zxing/Result;
    :cond_2
    new-instance v5, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v5, p2}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    .line 74
    .local v2, detectorResult:Lcom/google/zxing/common/DetectorResult;
    iget-object v5, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 75
    .restart local v1       #decoderResult:Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .restart local v3       #points:[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
