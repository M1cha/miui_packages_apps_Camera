.class public final Lcom/google/zxing/pdf417/PDF417Reader;
.super Ljava/lang/Object;
.source "PDF417Reader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/pdf417/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/pdf417/PDF417Reader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/zxing/pdf417/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 8
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p2, :cond_0

    sget-object v4, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/QRCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 64
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    iget-object v4, p0, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

    invoke-virtual {v4, v0}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 65
    .local v1, decoderResult:Lcom/google/zxing/common/DecoderResult;
    sget-object v3, Lcom/google/zxing/pdf417/PDF417Reader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 71
    .end local v0           #bits:Lcom/google/zxing/common/BitMatrix;
    .local v3, points:[Lcom/google/zxing/ResultPoint;
    :goto_0
    new-instance v4, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v6

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->PDF417:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v4

    .line 67
    .end local v1           #decoderResult:Lcom/google/zxing/common/DecoderResult;
    .end local v3           #points:[Lcom/google/zxing/ResultPoint;
    :cond_0
    new-instance v4, Lcom/google/zxing/pdf417/detector/Detector;

    invoke-direct {v4, p1}, Lcom/google/zxing/pdf417/detector/Detector;-><init>(Lcom/google/zxing/BinaryBitmap;)V

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    .line 68
    .local v2, detectorResult:Lcom/google/zxing/common/DetectorResult;
    iget-object v4, p0, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 69
    .restart local v1       #decoderResult:Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .restart local v3       #points:[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
