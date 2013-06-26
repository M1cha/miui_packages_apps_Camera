.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01AndOtherAIs.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0
    .parameter "information"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 42
    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v0, buff:Ljava/lang/StringBuffer;
    const-string v3, "(01)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 49
    .local v2, initialGtinPosition:I
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    invoke-virtual {v3, v4, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 50
    .local v1, firstGtinDigit:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    const/16 v3, 0x8

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;->encodeCompressedGtinWithoutAI(Ljava/lang/StringBuffer;II)V

    .line 54
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    const/16 v4, 0x30

    invoke-virtual {v3, v0, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAllCodes(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
