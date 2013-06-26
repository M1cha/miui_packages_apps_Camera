.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 49
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 60
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 61
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 66
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    .line 49
    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .parameter "counters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 330
    const/16 v1, 0x6b

    .line 331
    .local v1, bestVariance:I
    const/4 v0, -0x1

    .line 332
    .local v0, bestMatch:I
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v3, v6

    .line 333
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 334
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v6, v2

    .line 335
    .local v4, pattern:[I
    const/16 v6, 0xcc

    invoke-static {p0, v4, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v5

    .line 336
    .local v5, variance:I
    if-ge v5, v1, :cond_0

    .line 337
    move v1, v5

    .line 338
    move v0, v2

    .line 333
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v4           #pattern:[I
    .end local v5           #variance:I
    :cond_1
    if-ltz v0, :cond_2

    .line 342
    return v0

    .line 344
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuffer;)V
    .locals 9
    .parameter "row"
    .parameter "payloadStart"
    .parameter "payloadEnd"
    .parameter "resultString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    .line 135
    const/16 v7, 0xa

    new-array v2, v7, [I

    .line 136
    .local v2, counterDigitPair:[I
    new-array v1, v8, [I

    .line 137
    .local v1, counterBlack:[I
    new-array v3, v8, [I

    .line 139
    .local v3, counterWhite:[I
    :cond_0
    if-ge p1, p2, :cond_2

    .line 142
    invoke-static {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 144
    const/4 v5, 0x0

    .local v5, k:I
    :goto_0
    if-ge v5, v8, :cond_1

    .line 145
    shl-int/lit8 v6, v5, 0x1

    .line 146
    .local v6, twoK:I
    aget v7, v2, v6

    aput v7, v1, v5

    .line 147
    add-int/lit8 v7, v6, 0x1

    aget v7, v2, v7

    aput v7, v3, v5

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    .end local v6           #twoK:I
    :cond_1
    invoke-static {v1}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    .line 151
    .local v0, bestMatch:I
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    .line 153
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 156
    aget v7, v2, v4

    add-int/2addr p1, v7

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 159
    .end local v0           #bestMatch:I
    .end local v4           #i:I
    .end local v5           #k:I
    :cond_2
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 13
    .parameter "row"
    .parameter "rowOffset"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 287
    array-length v3, p2

    .line 288
    .local v3, patternLength:I
    new-array v1, v3, [I

    .line 289
    .local v1, counters:[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 290
    .local v6, width:I
    const/4 v2, 0x0

    .line 292
    .local v2, isWhite:Z
    const/4 v0, 0x0

    .line 293
    .local v0, counterPosition:I
    move v4, p1

    .line 294
    .local v4, patternStart:I
    move v7, p1

    .local v7, x:I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 295
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    .line 296
    .local v5, pixel:Z
    xor-int v11, v5, v2

    if-eqz v11, :cond_0

    .line 297
    aget v11, v1, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v1, v0

    .line 294
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 299
    :cond_0
    add-int/lit8 v11, v3, -0x1

    if-ne v0, v11, :cond_3

    .line 300
    const/16 v11, 0xcc

    invoke-static {v1, p2, v11}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v11

    const/16 v12, 0x6b

    if-ge v11, v12, :cond_1

    .line 301
    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v4, v11, v10

    aput v7, v11, v9

    return-object v11

    .line 303
    :cond_1
    aget v11, v1, v10

    aget v12, v1, v9

    add-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 304
    const/4 v8, 0x2

    .local v8, y:I
    :goto_2
    if-ge v8, v3, :cond_2

    .line 305
    add-int/lit8 v11, v8, -0x2

    aget v12, v1, v8

    aput v12, v1, v11

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 307
    :cond_2
    add-int/lit8 v11, v3, -0x2

    aput v10, v1, v11

    .line 308
    add-int/lit8 v11, v3, -0x1

    aput v10, v1, v11

    .line 309
    add-int/lit8 v0, v0, -0x1

    .line 313
    .end local v8           #y:I
    :goto_3
    aput v9, v1, v0

    .line 314
    if-nez v2, :cond_4

    move v2, v9

    :goto_4
    goto :goto_1

    .line 311
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v2, v10

    .line 314
    goto :goto_4

    .line 317
    .end local v5           #pixel:Z
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 223
    .local v1, width:I
    const/4 v0, 0x0

    .line 224
    .local v0, endStart:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    if-ne v0, v1, :cond_2

    .line 231
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 228
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_2
    return v0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 3
    .parameter "row"
    .parameter "startPattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 200
    iget v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v1, v2, 0xa

    .line 202
    .local v1, quietCount:I
    add-int/lit8 v0, p2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v1, :cond_0

    if-ltz v0, :cond_0

    .line 203
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    if-eqz v1, :cond_2

    .line 210
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 206
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 202
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_2
    return-void
.end method


# virtual methods
.method decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 6
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 252
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v1

    .line 253
    .local v1, endStart:I
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    .line 258
    .local v0, endPattern:[I
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 263
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 264
    .local v2, temp:I
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v5, v0, v5

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 265
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    return-object v0

    .end local v0           #endPattern:[I
    .end local v1           #endStart:I
    .end local v2           #temp:I
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v3
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 17
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v9

    .line 83
    .local v9, startRange:[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v3

    .line 85
    .local v3, endRange:[I
    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v10, 0x14

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 86
    .local v7, result:Ljava/lang/StringBuffer;
    const/4 v10, 0x1

    aget v10, v9, v10

    const/4 v11, 0x0

    aget v11, v3, v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v7}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuffer;)V

    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, resultString:Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .local v2, allowedLengths:[I
    if-eqz p3, :cond_0

    .line 91
    sget-object v10, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    move-object v2, v10

    check-cast v2, [I

    .line 94
    :cond_0
    if-nez v2, :cond_1

    .line 95
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 100
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 101
    .local v5, length:I
    const/4 v6, 0x0

    .line 102
    .local v6, lengthOK:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, v2

    if-ge v4, v10, :cond_2

    .line 103
    aget v10, v2, v4

    if-ne v5, v10, :cond_3

    .line 104
    const/4 v6, 0x1

    .line 109
    :cond_2
    if-nez v6, :cond_4

    .line 110
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v10

    throw v10

    .line 102
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_4
    new-instance v10, Lcom/google/zxing/Result;

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    const/4 v13, 0x0

    new-instance v14, Lcom/google/zxing/ResultPoint;

    const/4 v15, 0x1

    aget v15, v9, v15

    int-to-float v15, v15

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/google/zxing/ResultPoint;

    const/4 v15, 0x0

    aget v15, v3, v15

    int-to-float v15, v15

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v10, v8, v11, v12, v13}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v10
.end method

.method decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 171
    .local v0, endStart:I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 176
    .local v1, startPattern:[I
    const/4 v2, 0x1

    aget v2, v1, v2

    aget v3, v1, v4

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 178
    aget v2, v1, v4

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 180
    return-object v1
.end method
