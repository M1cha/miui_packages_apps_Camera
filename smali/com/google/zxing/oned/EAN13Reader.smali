.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 69
    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuffer;I)V
    .locals 3
    .parameter "resultString"
    .parameter "lgPatternFound"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, d:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 127
    sget-object v1, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 128
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 129
    return-void

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
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
    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 73
    iget-object v1, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 74
    .local v1, counters:[I
    aput v9, v1, v9

    .line 75
    aput v9, v1, v10

    .line 76
    const/4 v8, 0x2

    aput v9, v1, v8

    .line 77
    const/4 v8, 0x3

    aput v9, v1, v8

    .line 78
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 79
    .local v2, end:I
    aget v6, p2, v10

    .line 81
    .local v6, rowOffset:I
    const/4 v4, 0x0

    .line 83
    .local v4, lgPatternFound:I
    const/4 v7, 0x0

    .local v7, x:I
    :goto_0
    if-ge v7, v11, :cond_2

    if-ge v6, v2, :cond_2

    .line 84
    sget-object v8, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v1, v6, v8}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 85
    .local v0, bestMatch:I
    rem-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v1

    if-ge v3, v8, :cond_0

    .line 87
    aget v8, v1, v3

    add-int/2addr v6, v8

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_0
    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    .line 90
    rsub-int/lit8 v8, v7, 0x5

    shl-int v8, v10, v8

    or-int/2addr v4, v8

    .line 83
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 94
    .end local v0           #bestMatch:I
    .end local v3           #i:I
    :cond_2
    invoke-static {p3, v4}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuffer;I)V

    .line 96
    sget-object v8, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v6, v10, v8}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v5

    .line 97
    .local v5, middleRange:[I
    aget v6, v5, v10

    .line 99
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v11, :cond_4

    if-ge v6, v2, :cond_4

    .line 100
    sget-object v8, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static {p1, v1, v6, v8}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 101
    .restart local v0       #bestMatch:I
    add-int/lit8 v8, v0, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    array-length v8, v1

    if-ge v3, v8, :cond_3

    .line 103
    aget v8, v1, v3

    add-int/2addr v6, v8

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 99
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 107
    .end local v0           #bestMatch:I
    .end local v3           #i:I
    :cond_4
    return v6
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
