.class final Lcom/google/zxing/oned/UPCEANExtension2Support;
.super Ljava/lang/Object;
.source "UPCEANExtension2Support.java"


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 108
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 12
    .parameter "row"
    .parameter "startRange"
    .parameter "resultString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v4, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    .line 62
    .local v4, counters:[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v4, v10

    .line 63
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v4, v10

    .line 64
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v4, v10

    .line 65
    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v4, v10

    .line 66
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 67
    .local v5, end:I
    const/4 v10, 0x1

    aget v8, p2, v10

    .line 69
    .local v8, rowOffset:I
    const/4 v2, 0x0

    .line 71
    .local v2, checkParity:I
    const/4 v9, 0x0

    .local v9, x:I
    :goto_0
    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    if-ge v8, v5, :cond_3

    .line 72
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v4, v8, v10}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v1

    .line 73
    .local v1, bestMatch:I
    rem-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    move-object v0, v4

    .local v0, arr$:[I
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_0

    aget v3, v0, v6

    .line 75
    .local v3, counter:I
    add-int/2addr v8, v3

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 77
    .end local v3           #counter:I
    :cond_0
    const/16 v10, 0xa

    if-lt v1, v10, :cond_1

    .line 78
    const/4 v10, 0x1

    rsub-int/lit8 v11, v9, 0x1

    shl-int/2addr v10, v11

    or-int/2addr v2, v10

    .line 80
    :cond_1
    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    .line 82
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    .line 83
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v8

    .line 71
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 87
    .end local v0           #arr$:[I
    .end local v1           #bestMatch:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    .line 88
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10

    .line 91
    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    rem-int/lit8 v10, v10, 0x4

    if-eq v10, v2, :cond_5

    .line 92
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10

    .line 95
    :cond_5
    return v8
.end method

.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .locals 12
    .parameter "rowNumber"
    .parameter "row"
    .parameter "extensionStartRange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 39
    iget-object v3, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 40
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    invoke-virtual {p0, p2, p3, v3}, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v0

    .line 43
    .local v0, end:I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, resultString:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/zxing/oned/UPCEANExtension2Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 46
    .local v1, extensionData:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    new-instance v2, Lcom/google/zxing/Result;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v8, p3, v10

    aget v9, p3, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v6, v10

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v0

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v6, v11

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 54
    .local v2, extensionResult:Lcom/google/zxing/Result;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v2, v1}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 57
    :cond_0
    return-object v2
.end method