.class public final Lcom/google/zxing/pdf417/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static correctErrors([I[II)I
    .locals 4
    .parameter "codewords"
    .parameter "erasures"
    .parameter "numECCodewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 129
    if-eqz p1, :cond_0

    array-length v2, p1

    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x3

    if-gt v2, v3, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    const/16 v2, 0x200

    if-le p2, v2, :cond_2

    .line 132
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 136
    :cond_2
    const/4 v1, 0x0

    .line 137
    .local v1, result:I
    if-eqz p1, :cond_4

    .line 138
    array-length v0, p1

    .line 139
    .local v0, numErasures:I
    if-lez v1, :cond_3

    .line 140
    sub-int/2addr v0, v1

    .line 142
    :cond_3
    const/4 v2, 0x3

    if-le v0, v2, :cond_4

    .line 144
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 147
    .end local v0           #numErasures:I
    :cond_4
    return v1
.end method

.method private static verifyCodewordCount([II)V
    .locals 4
    .parameter "codewords"
    .parameter "numECCodewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 102
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 107
    :cond_0
    aget v0, p0, v3

    .line 108
    .local v0, numberOfCodewords:I
    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 109
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 111
    :cond_1
    if-nez v0, :cond_2

    .line 113
    array-length v1, p0

    if-ge p1, v1, :cond_3

    .line 114
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v3

    .line 119
    :cond_2
    return-void

    .line 116
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;

    invoke-direct {v4, p1}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 75
    .local v4, parser:Lcom/google/zxing/pdf417/decoder/BitMatrixParser;
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->readCodewords()[I

    move-result-object v0

    .line 76
    .local v0, codewords:[I
    if-eqz v0, :cond_0

    array-length v5, v0

    if-nez v5, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 80
    :cond_1
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getECLevel()I

    move-result v1

    .line 81
    .local v1, ecLevel:I
    const/4 v5, 0x1

    add-int/lit8 v6, v1, 0x1

    shl-int v3, v5, v6

    .line 82
    .local v3, numECCodewords:I
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getErasures()[I

    move-result-object v2

    .line 84
    .local v2, erasures:[I
    invoke-static {v0, v2, v3}, Lcom/google/zxing/pdf417/decoder/Decoder;->correctErrors([I[II)I

    .line 85
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/Decoder;->verifyCodewordCount([II)V

    .line 88
    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5

    return-object v5
.end method
