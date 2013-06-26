.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01weightDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0
    .parameter "information"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract addWeightCode(Ljava/lang/StringBuffer;I)V
.end method

.method protected abstract checkWeight(I)I
.end method

.method protected encodeCompressedWeight(Ljava/lang/StringBuffer;II)V
    .locals 5
    .parameter "buf"
    .parameter "currentPos"
    .parameter "weightSize"

    .prologue
    .line 41
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    invoke-virtual {v4, p2, p3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 42
    .local v2, originalWeightNumeric:I
    invoke-virtual {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->addWeightCode(Ljava/lang/StringBuffer;I)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->checkWeight(I)I

    move-result v3

    .line 46
    .local v3, weightNumeric:I
    const v0, 0x186a0

    .line 47
    .local v0, currentDivisor:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    .line 48
    div-int v4, v3, v0

    if-nez v4, :cond_0

    .line 49
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    :cond_0
    div-int/lit8 v0, v0, 0xa

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    return-void
.end method
