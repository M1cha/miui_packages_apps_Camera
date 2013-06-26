.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final CHARACTER_ENCODINGS:[I

.field private static final STARTEND_ENCODING:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "0123456789-$:/.+ABCDTN"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 42
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    .line 42
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_1
    .array-data 0x2
        0x45t 0x0t
        0x2at 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x54t 0x0t
        0x4et 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static arrayContains([CC)Z
    .locals 2
    .parameter "array"
    .parameter "key"

    .prologue
    .line 212
    if-eqz p0, :cond_1

    .line 213
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 214
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 215
    const/4 v1, 0x1

    .line 219
    .end local v0           #i:I
    :goto_1
    return v1

    .line 213
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 14
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    .line 164
    .local v8, width:I
    const/4 v7, 0x0

    .line 165
    .local v7, rowOffset:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 166
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 173
    .local v0, counterPosition:I
    const/4 v10, 0x7

    new-array v1, v10, [I

    .line 174
    .local v1, counters:[I
    move v5, v7

    .line 175
    .local v5, patternStart:I
    const/4 v3, 0x0

    .line 176
    .local v3, isWhite:Z
    array-length v4, v1

    .line 178
    .local v4, patternLength:I
    move v2, v7

    .local v2, i:I
    :goto_1
    if-ge v2, v8, :cond_6

    .line 179
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    .line 180
    .local v6, pixel:Z
    xor-int v10, v6, v3

    if-eqz v10, :cond_2

    .line 181
    aget v10, v1, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v1, v0

    .line 178
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    .end local v0           #counterPosition:I
    .end local v1           #counters:[I
    .end local v2           #i:I
    .end local v3           #isWhite:Z
    .end local v4           #patternLength:I
    .end local v5           #patternStart:I
    .end local v6           #pixel:Z
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 183
    .restart local v0       #counterPosition:I
    .restart local v1       #counters:[I
    .restart local v2       #i:I
    .restart local v3       #isWhite:Z
    .restart local v4       #patternLength:I
    .restart local v5       #patternStart:I
    .restart local v6       #pixel:Z
    :cond_2
    add-int/lit8 v10, v4, -0x1

    if-ne v0, v10, :cond_5

    .line 185
    :try_start_0
    sget-object v10, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern([I)C

    move-result v11

    invoke-static {v10, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 187
    const/4 v10, 0x0

    sub-int v11, v2, v5

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v5, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v5, v11}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 188
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v11, 0x1

    aput v2, v10, v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 191
    :catch_0
    move-exception v10

    .line 194
    :cond_3
    aget v10, v1, v12

    aget v11, v1, v13

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 195
    const/4 v9, 0x2

    .local v9, y:I
    :goto_3
    if-ge v9, v4, :cond_4

    .line 196
    add-int/lit8 v10, v9, -0x2

    aget v11, v1, v9

    aput v11, v1, v10

    .line 195
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 198
    :cond_4
    add-int/lit8 v10, v4, -0x2

    aput v12, v1, v10

    .line 199
    add-int/lit8 v10, v4, -0x1

    aput v12, v1, v10

    .line 200
    add-int/lit8 v0, v0, -0x1

    .line 204
    .end local v9           #y:I
    :goto_4
    aput v13, v1, v0

    .line 205
    xor-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 202
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 208
    .end local v6           #pixel:Z
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method

.method private static toNarrowWidePattern([I)C
    .locals 8
    .parameter "counters"

    .prologue
    .line 226
    array-length v3, p0

    .line 227
    .local v3, numCounters:I
    const/4 v1, 0x0

    .line 229
    .local v1, maxNarrowCounter:I
    const v2, 0x7fffffff

    .line 230
    .local v2, minCounter:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 231
    aget v6, p0, v0

    if-ge v6, v2, :cond_0

    .line 232
    aget v2, p0, v0

    .line 234
    :cond_0
    aget v6, p0, v0

    if-le v6, v1, :cond_1

    .line 235
    aget v1, p0, v0

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    const/4 v5, 0x0

    .line 243
    .local v5, wideCounters:I
    const/4 v4, 0x0

    .line 244
    .local v4, pattern:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 245
    aget v6, p0, v0

    if-le v6, v1, :cond_3

    .line 246
    const/4 v6, 0x1

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v0

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    .line 247
    add-int/lit8 v5, v5, 0x1

    .line 244
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_4
    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 252
    :cond_5
    const/4 v0, 0x0

    :goto_2
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 253
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v6, v6, v0

    if-ne v6, v4, :cond_6

    .line 254
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v6, v6, v0

    .line 260
    :goto_3
    return v6

    .line 252
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 258
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 259
    if-gt v1, v2, :cond_2

    .line 260
    const/16 v6, 0x21

    goto :goto_3
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 23
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/CodaBarReader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v13

    .line 65
    .local v13, start:[I
    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v13, v16

    .line 66
    const/16 v16, 0x1

    aget v10, v13, v16

    .line 67
    .local v10, nextStart:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 70
    .local v4, end:I
    :goto_0
    if-ge v10, v4, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v16

    if-nez v16, :cond_0

    .line 71
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v11, result:Ljava/lang/StringBuffer;
    :cond_1
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 81
    .local v2, counters:[I
    move-object/from16 v0, p2

    invoke-static {v0, v10, v2}, Lcom/google/zxing/oned/CodaBarReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static {v2}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern([I)C

    move-result v3

    .line 84
    .local v3, decodedChar:C
    const/16 v16, 0x21

    move/from16 v0, v16

    if-ne v3, v0, :cond_2

    .line 85
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v16

    throw v16

    .line 87
    :cond_2
    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    move v8, v10

    .line 89
    .local v8, lastStart:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    .line 90
    aget v16, v2, v5

    add-int v10, v10, v16

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 94
    :cond_3
    :goto_2
    if-ge v10, v4, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 95
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 97
    :cond_4
    if-lt v10, v4, :cond_1

    .line 100
    const/4 v7, 0x0

    .line 101
    .local v7, lastPatternSize:I
    const/4 v5, 0x0

    :goto_3
    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_5

    .line 102
    aget v16, v2, v5

    add-int v7, v7, v16

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 105
    :cond_5
    sub-int v16, v10, v8

    sub-int v15, v16, v7

    .line 108
    .local v15, whiteSpaceAfterEnd:I
    if-eq v10, v4, :cond_6

    div-int/lit8 v16, v15, 0x2

    move/from16 v0, v16

    if-ge v0, v7, :cond_6

    .line 109
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v16

    throw v16

    .line 113
    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 115
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v16

    throw v16

    .line 118
    :cond_7
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    .line 119
    .local v14, startchar:C
    sget-object v16, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v16

    if-nez v16, :cond_8

    .line 122
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v16

    throw v16

    .line 126
    :cond_8
    const/4 v6, 0x1

    .local v6, k:I
    :goto_4
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_a

    .line 128
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    if-ne v0, v14, :cond_9

    .line 131
    add-int/lit8 v16, v6, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 133
    add-int/lit8 v16, v6, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 126
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 140
    :cond_a
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 142
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 143
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 151
    const/16 v16, 0x1

    aget v16, v13, v16

    const/16 v17, 0x0

    aget v17, v13, v17

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v9, v16, v17

    .line 152
    .local v9, left:F
    add-int v16, v10, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v12, v16, v17

    .line 153
    .local v12, right:F
    new-instance v16, Lcom/google/zxing/Result;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v21, v19, v20

    sget-object v20, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v16 .. v20}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v16

    .line 148
    .end local v9           #left:F
    .end local v12           #right:F
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v16

    throw v16

    .line 80
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
