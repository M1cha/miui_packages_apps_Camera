.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
    .locals 11
    .parameter "row"
    .parameter "startRange"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 38
    iget-object v1, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 39
    .local v1, counters:[I
    aput v8, v1, v8

    .line 40
    aput v8, v1, v9

    .line 41
    const/4 v7, 0x2

    aput v8, v1, v7

    .line 42
    const/4 v7, 0x3

    aput v8, v1, v7

    .line 43
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 44
    .local v2, end:I
    aget v5, p2, v9

    .line 46
    .local v5, rowOffset:I
    const/4 v6, 0x0

    .local v6, x:I
    :goto_0
    if-ge v6, v10, :cond_1

    if-ge v5, v2, :cond_1

    .line 47
    sget-object v7, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v1, v5, v7}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 48
    .local v0, bestMatch:I
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 50
    aget v7, v1, v3

    add-int/2addr v5, v7

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    .end local v0           #bestMatch:I
    .end local v3           #i:I
    :cond_1
    sget-object v7, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v5, v9, v7}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v4

    .line 55
    .local v4, middleRange:[I
    aget v5, v4, v9

    .line 57
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v10, :cond_3

    if-ge v5, v2, :cond_3

    .line 58
    sget-object v7, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v1, v5, v7}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 59
    .restart local v0       #bestMatch:I
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    array-length v7, v1

    if-ge v3, v7, :cond_2

    .line 61
    aget v7, v1, v3

    add-int/2addr v5, v7

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 57
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 65
    .end local v0           #bestMatch:I
    .end local v3           #i:I
    :cond_3
    return v5
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
