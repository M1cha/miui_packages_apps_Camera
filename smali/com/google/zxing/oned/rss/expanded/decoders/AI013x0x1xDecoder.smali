.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.source "AI013x0x1xDecoder.java"


# instance fields
.field private final dateCode:Ljava/lang/String;

.field private final firstAIdigits:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "information"
    .parameter "firstAIdigits"
    .parameter "dateCode"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 47
    iput-object p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->dateCode:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->firstAIdigits:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private encodeCompressedDate(Ljava/lang/StringBuffer;I)V
    .locals 7
    .parameter "buf"
    .parameter "currentPos"

    .prologue
    const/16 v6, 0x30

    .line 66
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    const/16 v5, 0x10

    invoke-virtual {v4, p2, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 67
    .local v2, numericDate:I
    const v4, 0x9600

    if-ne v2, v4, :cond_0

    .line 93
    :goto_0
    return-void

    .line 71
    :cond_0
    const/16 v4, 0x28

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->dateCode:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const/16 v4, 0x29

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    rem-int/lit8 v0, v2, 0x20

    .line 76
    .local v0, day:I
    div-int/lit8 v2, v2, 0x20

    .line 77
    rem-int/lit8 v4, v2, 0xc

    add-int/lit8 v1, v4, 0x1

    .line 78
    .local v1, month:I
    div-int/lit8 v2, v2, 0xc

    .line 79
    move v3, v2

    .line 81
    .local v3, year:I
    div-int/lit8 v4, v3, 0xa

    if-nez v4, :cond_1

    .line 82
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 85
    div-int/lit8 v4, v1, 0xa

    if-nez v4, :cond_2

    .line 86
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 89
    div-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_3

    .line 90
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuffer;I)V
    .locals 2
    .parameter "buf"
    .parameter "weight"

    .prologue
    .line 96
    const v1, 0x186a0

    div-int v0, p2, v1

    .line 97
    .local v0, lastAI:I
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->firstAIdigits:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    return-void
.end method

.method protected checkWeight(I)I
    .locals 1
    .parameter "weight"

    .prologue
    .line 104
    const v0, 0x186a0

    rem-int v0, p1, v0

    return v0
.end method

.method public parseInformation()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v1, v1, Lcom/google/zxing/common/BitArray;->size:I

    const/16 v2, 0x54

    if-eq v1, v2, :cond_0

    .line 53
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuffer;I)V

    .line 59
    const/16 v1, 0x30

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedWeight(Ljava/lang/StringBuffer;II)V

    .line 60
    const/16 v1, 0x44

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedDate(Ljava/lang/StringBuffer;I)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
