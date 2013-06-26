.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 24
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v18

    .line 101
    .local v18, width:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v3

    .line 102
    .local v3, height:I
    new-instance v13, Lcom/google/zxing/common/BitArray;

    move/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 104
    .local v13, row:Lcom/google/zxing/common/BitArray;
    shr-int/lit8 v8, v3, 0x1

    .line 105
    .local v8, middle:I
    if-eqz p2, :cond_1

    sget-object v20, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v17, 0x1

    .line 106
    .local v17, tryHarder:Z
    :goto_0
    const/16 v21, 0x1

    if-eqz v17, :cond_2

    const/16 v20, 0x8

    :goto_1
    shr-int v20, v3, v20

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 108
    .local v15, rowStep:I
    if-eqz v17, :cond_3

    .line 109
    move v7, v3

    .line 114
    .local v7, maxLines:I
    :goto_2
    const/16 v19, 0x0

    .local v19, x:I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v7, :cond_0

    .line 117
    add-int/lit8 v20, v19, 0x1

    shr-int/lit8 v16, v20, 0x1

    .line 118
    .local v16, rowStepsAboveOrBelow:I
    and-int/lit8 v20, v19, 0x1

    if-nez v20, :cond_4

    const/4 v5, 0x1

    .line 119
    .local v5, isAbove:Z
    :goto_4
    if-eqz v5, :cond_5

    .end local v16           #rowStepsAboveOrBelow:I
    :goto_5
    mul-int v20, v15, v16

    add-int v14, v8, v20

    .line 120
    .local v14, rowNumber:I
    if-ltz v14, :cond_0

    if-lt v14, v3, :cond_6

    .line 172
    .end local v5           #isAbove:Z
    .end local v14           #rowNumber:I
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v20

    throw v20

    .line 105
    .end local v7           #maxLines:I
    .end local v15           #rowStep:I
    .end local v17           #tryHarder:Z
    .end local v19           #x:I
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 106
    .restart local v17       #tryHarder:Z
    :cond_2
    const/16 v20, 0x5

    goto :goto_1

    .line 111
    .restart local v15       #rowStep:I
    :cond_3
    const/16 v7, 0xf

    .restart local v7       #maxLines:I
    goto :goto_2

    .line 118
    .restart local v16       #rowStepsAboveOrBelow:I
    .restart local v19       #x:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 119
    .restart local v5       #isAbove:Z
    :cond_5
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    goto :goto_5

    .line 127
    .end local v16           #rowStepsAboveOrBelow:I
    .restart local v14       #rowNumber:I
    :cond_6
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 134
    const/4 v2, 0x0

    .local v2, attempt:I
    :goto_6
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v2, v0, :cond_8

    .line 135
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_a

    .line 136
    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 141
    if-eqz p2, :cond_a

    sget-object v20, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 142
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 143
    .local v9, newHints:Ljava/util/Hashtable;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 144
    .local v4, hintEnum:Ljava/util/Enumeration;
    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 145
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .line 146
    .local v6, key:Ljava/lang/Object;
    sget-object v20, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 128
    .end local v2           #attempt:I
    .end local v4           #hintEnum:Ljava/util/Enumeration;
    .end local v6           #key:Ljava/lang/Object;
    .end local v9           #newHints:Ljava/util/Hashtable;
    :catch_0
    move-exception v10

    .line 114
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 150
    .restart local v2       #attempt:I
    .restart local v4       #hintEnum:Ljava/util/Enumeration;
    .restart local v9       #newHints:Ljava/util/Hashtable;
    :cond_9
    move-object/from16 p2, v9

    .line 155
    .end local v4           #hintEnum:Ljava/util/Enumeration;
    .end local v9           #newHints:Ljava/util/Hashtable;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v13, v1}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v12

    .line 157
    .local v12, result:Lcom/google/zxing/Result;
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_b

    .line 159
    sget-object v20, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    new-instance v21, Ljava/lang/Integer;

    const/16 v22, 0xb4

    invoke-direct/range {v21 .. v22}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v12}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 162
    .local v11, points:[Lcom/google/zxing/ResultPoint;
    const/16 v20, 0x0

    new-instance v21, Lcom/google/zxing/ResultPoint;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v11, v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x3f80

    sub-float v22, v22, v23

    const/16 v23, 0x0

    aget-object v23, v11, v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v23

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v21, v11, v20

    .line 163
    const/16 v20, 0x1

    new-instance v21, Lcom/google/zxing/ResultPoint;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    aget-object v23, v11, v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x3f80

    sub-float v22, v22, v23

    const/16 v23, 0x1

    aget-object v23, v11, v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v23

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v21, v11, v20
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    .end local v11           #points:[Lcom/google/zxing/ResultPoint;
    :cond_b
    return-object v12

    .line 166
    .end local v12           #result:Lcom/google/zxing/Result;
    :catch_1
    move-exception v20

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6
.end method

.method protected static patternMatchVariance([I[II)I
    .locals 12
    .parameter "counters"
    .parameter "pattern"
    .parameter "maxIndividualVariance"

    .prologue
    const v10, 0x7fffffff

    .line 253
    array-length v2, p0

    .line 254
    .local v2, numCounters:I
    const/4 v5, 0x0

    .line 255
    .local v5, total:I
    const/4 v3, 0x0

    .line 256
    .local v3, patternLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 257
    aget v11, p0, v1

    add-int/2addr v5, v11

    .line 258
    aget v11, p1, v1

    add-int/2addr v3, v11

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    if-ge v5, v3, :cond_2

    .line 281
    :cond_1
    :goto_1
    return v10

    .line 268
    :cond_2
    shl-int/lit8 v11, v5, 0x8

    div-int v7, v11, v3

    .line 269
    .local v7, unitBarWidth:I
    mul-int v11, p2, v7

    shr-int/lit8 p2, v11, 0x8

    .line 271
    const/4 v6, 0x0

    .line 272
    .local v6, totalVariance:I
    const/4 v9, 0x0

    .local v9, x:I
    :goto_2
    if-ge v9, v2, :cond_4

    .line 273
    aget v11, p0, v9

    shl-int/lit8 v0, v11, 0x8

    .line 274
    .local v0, counter:I
    aget v11, p1, v9

    mul-int v4, v11, v7

    .line 275
    .local v4, scaledPattern:I
    if-le v0, v4, :cond_3

    sub-int v8, v0, v4

    .line 276
    .local v8, variance:I
    :goto_3
    if-gt v8, p2, :cond_1

    .line 279
    add-int/2addr v6, v8

    .line 272
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 275
    .end local v8           #variance:I
    :cond_3
    sub-int v8, v4, v0

    goto :goto_3

    .line 281
    .end local v0           #counter:I
    .end local v4           #scaledPattern:I
    :cond_4
    div-int v10, v6, v5

    goto :goto_1
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 9
    .parameter "row"
    .parameter "start"
    .parameter "counters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 189
    array-length v4, p2

    .line 190
    .local v4, numCounters:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 191
    aput v7, p2, v2

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 194
    .local v1, end:I
    if-lt p1, v1, :cond_1

    .line 195
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 197
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_2

    move v3, v6

    .line 198
    .local v3, isWhite:Z
    :goto_1
    const/4 v0, 0x0

    .line 199
    .local v0, counterPosition:I
    move v2, p1

    .line 200
    :goto_2
    if-ge v2, v1, :cond_4

    .line 201
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    .line 202
    .local v5, pixel:Z
    xor-int v8, v5, v3

    if-eqz v8, :cond_3

    .line 203
    aget v8, p2, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, p2, v0

    .line 213
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 214
    goto :goto_2

    .end local v0           #counterPosition:I
    .end local v3           #isWhite:Z
    .end local v5           #pixel:Z
    :cond_2
    move v3, v7

    .line 197
    goto :goto_1

    .line 205
    .restart local v0       #counterPosition:I
    .restart local v3       #isWhite:Z
    .restart local v5       #pixel:Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 206
    if-ne v0, v4, :cond_6

    .line 217
    .end local v5           #pixel:Z
    :cond_4
    if-eq v0, v4, :cond_8

    add-int/lit8 v6, v4, -0x1

    if-ne v0, v6, :cond_5

    if-eq v2, v1, :cond_8

    .line 218
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 209
    .restart local v5       #pixel:Z
    :cond_6
    aput v6, p2, v0

    .line 210
    if-nez v3, :cond_7

    move v3, v6

    :goto_4
    goto :goto_3

    :cond_7
    move v3, v7

    goto :goto_4

    .line 220
    .end local v5           #pixel:Z
    :cond_8
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 3
    .parameter "row"
    .parameter "start"
    .parameter "counters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 225
    array-length v1, p2

    .line 226
    .local v1, numTransitionsLeft:I
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    .line 227
    .local v0, last:Z
    :cond_0
    :goto_0
    if-lez p1, :cond_2

    if-ltz v1, :cond_2

    .line 228
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 229
    add-int/lit8 v1, v1, -0x1

    .line 230
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 233
    :cond_2
    if-ltz v1, :cond_3

    .line 234
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 236
    :cond_3
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 237
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 12
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 74
    :cond_0
    return-object v6

    .line 54
    :catch_0
    move-exception v3

    .line 55
    .local v3, nfe:Lcom/google/zxing/NotFoundException;
    if-eqz p2, :cond_2

    sget-object v9, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    .line 56
    .local v8, tryHarder:Z
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v7

    .line 58
    .local v7, rotatedImage:Lcom/google/zxing/BinaryBitmap;
    invoke-direct {p0, v7, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v6

    .line 60
    .local v6, result:Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Hashtable;

    move-result-object v2

    .line 61
    .local v2, metadata:Ljava/util/Hashtable;
    const/16 v4, 0x10e

    .line 62
    .local v4, orientation:I
    if-eqz v2, :cond_1

    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 64
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v4

    rem-int/lit16 v4, v9, 0x168

    .line 67
    :cond_1
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 70
    .local v5, points:[Lcom/google/zxing/ResultPoint;
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v0

    .line 71
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, v5

    if-ge v1, v9, :cond_0

    .line 72
    new-instance v9, Lcom/google/zxing/ResultPoint;

    int-to-float v10, v0

    aget-object v11, v5, v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f80

    sub-float/2addr v10, v11

    aget-object v11, v5, v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v5, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v0           #height:I
    .end local v1           #i:I
    .end local v2           #metadata:Ljava/util/Hashtable;
    .end local v4           #orientation:I
    .end local v5           #points:[Lcom/google/zxing/ResultPoint;
    .end local v6           #result:Lcom/google/zxing/Result;
    .end local v7           #rotatedImage:Lcom/google/zxing/BinaryBitmap;
    .end local v8           #tryHarder:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 76
    .restart local v8       #tryHarder:Z
    :cond_3
    throw v3
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
