.class final Lcom/google/zxing/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final CHECK_DIGIT_ENCODINGS:[I

.field private static final EXTENSION_START_PATTERN:[I


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->CHECK_DIGIT_ENCODINGS:[I

    return-void

    .line 30
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddleCounters:[I

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRowStringBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private static determineCheckDigit(I)I
    .locals 2
    .parameter "lgPatternFound"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, d:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 123
    sget-object v1, Lcom/google/zxing/oned/UPCEANExtensionSupport;->CHECK_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 124
    return v0

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static extensionChecksum(Ljava/lang/String;)I
    .locals 4
    .parameter "s"

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 108
    .local v1, length:I
    const/4 v2, 0x0

    .line 109
    .local v2, sum:I
    add-int/lit8 v0, v1, -0x2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 109
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 112
    :cond_0
    mul-int/lit8 v2, v2, 0x3

    .line 113
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 113
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 116
    :cond_1
    mul-int/lit8 v2, v2, 0x3

    .line 117
    rem-int/lit8 v3, v2, 0xa

    return v3
.end method

.method private static parseExtension2String(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "raw"

    .prologue
    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static parseExtension5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "raw"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, currency:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 179
    const-string v0, ""

    .line 182
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, rawAmount:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    div-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    rem-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #rawAmount:I
    :goto_1
    return-object v2

    .line 166
    :sswitch_0
    const-string v0, "\u62e2"

    .line 167
    goto :goto_0

    .line 169
    :sswitch_1
    const-string v0, "$"

    .line 170
    goto :goto_0

    .line 172
    :sswitch_2
    const-string v2, "99991"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    const-string v2, "0.00"

    goto :goto_1

    .line 174
    :cond_1
    const-string v2, "99990"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const-string v2, "Used"

    goto :goto_1

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
        0x39 -> :sswitch_2
    .end sparse-switch
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 4
    .parameter "raw"

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 140
    :pswitch_1
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    .line 141
    .local v1, type:Lcom/google/zxing/ResultMetadataType;
    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->parseExtension2String(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 150
    :goto_1
    if-eqz v2, :cond_0

    .line 153
    new-instance v0, Ljava/util/Hashtable;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 154
    .local v0, result:Ljava/util/Hashtable;
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    .end local v0           #result:Ljava/util/Hashtable;
    .end local v1           #type:Lcom/google/zxing/ResultMetadataType;
    :pswitch_2
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    .line 145
    .restart local v1       #type:Lcom/google/zxing/ResultMetadataType;
    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->parseExtension5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, value:Ljava/lang/String;
    goto :goto_1

    .line 138
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
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
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 64
    iget-object v2, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddleCounters:[I

    .line 65
    .local v2, counters:[I
    aput v9, v2, v9

    .line 66
    aput v9, v2, v10

    .line 67
    const/4 v8, 0x2

    aput v9, v2, v8

    .line 68
    const/4 v8, 0x3

    aput v9, v2, v8

    .line 69
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 70
    .local v3, end:I
    aget v6, p2, v10

    .line 72
    .local v6, rowOffset:I
    const/4 v5, 0x0

    .line 74
    .local v5, lgPatternFound:I
    const/4 v7, 0x0

    .local v7, x:I
    :goto_0
    if-ge v7, v11, :cond_4

    if-ge v6, v3, :cond_4

    .line 75
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v2, v6, v8}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 76
    .local v0, bestMatch:I
    rem-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v2

    if-ge v4, v8, :cond_0

    .line 78
    aget v8, v2, v4

    add-int/2addr v6, v8

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_0
    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    .line 81
    rsub-int/lit8 v8, v7, 0x4

    shl-int v8, v10, v8

    or-int/2addr v5, v8

    .line 83
    :cond_1
    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    .line 85
    :goto_2
    if-ge v6, v3, :cond_2

    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 88
    :cond_2
    :goto_3
    if-ge v6, v3, :cond_3

    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 74
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 94
    .end local v0           #bestMatch:I
    .end local v4           #i:I
    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v8, v11, :cond_5

    .line 95
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 98
    :cond_5
    invoke-static {v5}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->determineCheckDigit(I)I

    move-result v1

    .line 99
    .local v1, checkDigit:I
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->extensionChecksum(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v1, :cond_6

    .line 100
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 103
    :cond_6
    return v6
.end method

.method decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 12
    .parameter "rowNumber"
    .parameter "row"
    .parameter "rowOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v6, 0x0

    sget-object v7, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    invoke-static {p2, p3, v6, v7}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v3

    .line 42
    .local v3, extensionStartRange:[I
    iget-object v4, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRowStringBuffer:Ljava/lang/StringBuffer;

    .line 43
    .local v4, result:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 44
    invoke-virtual {p0, p2, v3, v4}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I

    move-result v0

    .line 46
    .local v0, end:I
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, resultString:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->parseExtensionString(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 49
    .local v1, extensionData:Ljava/util/Hashtable;
    new-instance v2, Lcom/google/zxing/Result;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    const/4 v8, 0x0

    new-instance v9, Lcom/google/zxing/ResultPoint;

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v3, v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    int-to-float v11, p1

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/google/zxing/ResultPoint;

    int-to-float v10, v0

    int-to-float v11, p1

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v7, v8

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 57
    .local v2, extensionResult:Lcom/google/zxing/Result;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v2, v1}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Hashtable;)V

    .line 60
    :cond_0
    return-object v2
.end method
