.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .parameter "bitMatrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 37
    .local v0, dimension:I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 44
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 45
    return-void
.end method


# virtual methods
.method extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 22
    .parameter "bitMatrix"

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v17

    .line 408
    .local v17, symbolSizeRows:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v16

    .line 411
    .local v16, symbolSizeColumns:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 412
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Dimension of bitMarix must match the version size"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 415
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v8

    .line 416
    .local v8, dataRegionSizeRows:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v7

    .line 418
    .local v7, dataRegionSizeColumns:I
    div-int v12, v17, v8

    .line 419
    .local v12, numDataRegionsRow:I
    div-int v11, v16, v7

    .line 421
    .local v11, numDataRegionsColumn:I
    mul-int v15, v12, v8

    .line 425
    .local v15, sizeDataRegionRow:I
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, v15}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 426
    .local v2, bitMatrixWithoutAlignment:Lcom/google/zxing/common/BitMatrix;
    const/4 v5, 0x0

    .local v5, dataRegionRow:I
    :goto_0
    if-ge v5, v12, :cond_5

    .line 427
    mul-int v6, v5, v8

    .line 428
    .local v6, dataRegionRowOffset:I
    const/4 v3, 0x0

    .local v3, dataRegionColumn:I
    :goto_1
    if-ge v3, v11, :cond_4

    .line 429
    mul-int v4, v3, v7

    .line 430
    .local v4, dataRegionColumnOffset:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v8, :cond_3

    .line 431
    add-int/lit8 v20, v8, 0x2

    mul-int v20, v20, v5

    add-int/lit8 v20, v20, 0x1

    add-int v14, v20, v9

    .line 432
    .local v14, readRowOffset:I
    add-int v19, v6, v9

    .line 433
    .local v19, writeRowOffset:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    if-ge v10, v7, :cond_2

    .line 434
    add-int/lit8 v20, v7, 0x2

    mul-int v20, v20, v3

    add-int/lit8 v20, v20, 0x1

    add-int v13, v20, v10

    .line 435
    .local v13, readColumnOffset:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 436
    add-int v18, v4, v10

    .line 437
    .local v18, writeColumnOffset:I
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 433
    .end local v18           #writeColumnOffset:I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 430
    .end local v13           #readColumnOffset:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 428
    .end local v10           #j:I
    .end local v14           #readRowOffset:I
    .end local v19           #writeRowOffset:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    .end local v4           #dataRegionColumnOffset:I
    .end local v9           #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 443
    .end local v3           #dataRegionColumn:I
    .end local v6           #dataRegionRowOffset:I
    :cond_5
    return-object v2
.end method

.method readCodewords()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    new-array v7, v11, [B

    .line 82
    .local v7, result:[B
    const/4 v8, 0x0

    .line 84
    .local v8, resultOffset:I
    const/4 v10, 0x4

    .line 85
    .local v10, row:I
    const/4 v0, 0x0

    .line 87
    .local v0, column:I
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 88
    .local v6, numRows:I
    move v5, v6

    .line 90
    .local v5, numColumns:I
    const/4 v1, 0x0

    .line 91
    .local v1, corner1Read:Z
    const/4 v2, 0x0

    .line 92
    .local v2, corner2Read:Z
    const/4 v3, 0x0

    .line 93
    .local v3, corner3Read:Z
    const/4 v4, 0x0

    .local v4, corner4Read:Z
    move v9, v8

    .line 98
    .end local v8           #resultOffset:I
    .local v9, resultOffset:I
    :goto_0
    if-ne v10, v6, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 99
    add-int/lit8 v8, v9, 0x1

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 100
    add-int/lit8 v10, v10, -0x2

    .line 101
    add-int/lit8 v0, v0, 0x2

    .line 102
    const/4 v1, 0x1

    .line 141
    :goto_1
    if-lt v10, v6, :cond_8

    if-lt v0, v5, :cond_8

    .line 143
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    if-eq v8, v11, :cond_7

    .line 144
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11

    .line 103
    .end local v8           #resultOffset:I
    .restart local v9       #resultOffset:I
    :cond_0
    add-int/lit8 v11, v6, -0x2

    if-ne v10, v11, :cond_1

    if-nez v0, :cond_1

    and-int/lit8 v11, v5, 0x3

    if-eqz v11, :cond_1

    if-nez v2, :cond_1

    .line 104
    add-int/lit8 v8, v9, 0x1

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 105
    add-int/lit8 v10, v10, -0x2

    .line 106
    add-int/lit8 v0, v0, 0x2

    .line 107
    const/4 v2, 0x1

    goto :goto_1

    .line 108
    .end local v8           #resultOffset:I
    .restart local v9       #resultOffset:I
    :cond_1
    add-int/lit8 v11, v6, 0x4

    if-ne v10, v11, :cond_2

    const/4 v11, 0x2

    if-ne v0, v11, :cond_2

    and-int/lit8 v11, v5, 0x7

    if-nez v11, :cond_2

    if-nez v3, :cond_2

    .line 109
    add-int/lit8 v8, v9, 0x1

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 110
    add-int/lit8 v10, v10, -0x2

    .line 111
    add-int/lit8 v0, v0, 0x2

    .line 112
    const/4 v3, 0x1

    goto :goto_1

    .line 113
    .end local v8           #resultOffset:I
    .restart local v9       #resultOffset:I
    :cond_2
    add-int/lit8 v11, v6, -0x2

    if-ne v10, v11, :cond_4

    if-nez v0, :cond_4

    and-int/lit8 v11, v5, 0x7

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    if-nez v4, :cond_4

    .line 114
    add-int/lit8 v8, v9, 0x1

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 115
    add-int/lit8 v10, v10, -0x2

    .line 116
    add-int/lit8 v0, v0, 0x2

    .line 117
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v9, v8

    .line 121
    .end local v8           #resultOffset:I
    .restart local v9       #resultOffset:I
    :cond_4
    if-ge v10, v6, :cond_b

    if-ltz v0, :cond_b

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_b

    .line 122
    add-int/lit8 v8, v9, 0x1

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    invoke-virtual {p0, v10, v0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 124
    :goto_2
    add-int/lit8 v10, v10, -0x2

    .line 125
    add-int/lit8 v0, v0, 0x2

    .line 126
    if-ltz v10, :cond_5

    if-lt v0, v5, :cond_3

    .line 127
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 128
    add-int/lit8 v0, v0, 0x3

    move v9, v8

    .line 132
    .end local v8           #resultOffset:I
    .restart local v9       #resultOffset:I
    :goto_3
    if-ltz v10, :cond_a

    if-ge v0, v5, :cond_a

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 133
    add-int/lit8 v8, v9, 0x1

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    invoke-virtual {p0, v10, v0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 135
    :goto_4
    add-int/lit8 v10, v10, 0x2

    .line 136
    add-int/lit8 v0, v0, -0x2

    .line 137
    if-ge v10, v6, :cond_6

    if-gez v0, :cond_9

    .line 138
    :cond_6
    add-int/lit8 v10, v10, 0x3

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 146
    :cond_7
    return-object v7

    :cond_8
    move v9, v8

    .end local v8           #resultOffset:I
    .restart local v9       #resultOffset:I
    goto/16 :goto_0

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    :cond_9
    move v9, v8

    .end local v8           #resultOffset:I
    .restart local v9       #resultOffset:I
    goto :goto_3

    :cond_a
    move v8, v9

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    goto :goto_4

    .end local v8           #resultOffset:I
    .restart local v9       #resultOffset:I
    :cond_b
    move v8, v9

    .end local v9           #resultOffset:I
    .restart local v8       #resultOffset:I
    goto :goto_2
.end method

.method readCorner1(II)I
    .locals 5
    .parameter "numRows"
    .parameter "numColumns"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, currentByte:I
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    or-int/lit8 v0, v0, 0x1

    .line 233
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 234
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    or-int/lit8 v0, v0, 0x1

    .line 237
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 238
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    or-int/lit8 v0, v0, 0x1

    .line 241
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 242
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    or-int/lit8 v0, v0, 0x1

    .line 245
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 246
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    or-int/lit8 v0, v0, 0x1

    .line 249
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 250
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    or-int/lit8 v0, v0, 0x1

    .line 253
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 254
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    or-int/lit8 v0, v0, 0x1

    .line 257
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 258
    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    or-int/lit8 v0, v0, 0x1

    .line 261
    :cond_7
    return v0
.end method

.method readCorner2(II)I
    .locals 3
    .parameter "numRows"
    .parameter "numColumns"

    .prologue
    const/4 v2, 0x0

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, currentByte:I
    add-int/lit8 v1, p1, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    or-int/lit8 v0, v0, 0x1

    .line 278
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 279
    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    or-int/lit8 v0, v0, 0x1

    .line 282
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 283
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    or-int/lit8 v0, v0, 0x1

    .line 286
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 287
    add-int/lit8 v1, p2, -0x4

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    or-int/lit8 v0, v0, 0x1

    .line 290
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 291
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    or-int/lit8 v0, v0, 0x1

    .line 294
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 295
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    or-int/lit8 v0, v0, 0x1

    .line 298
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 299
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 300
    or-int/lit8 v0, v0, 0x1

    .line 302
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 303
    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 304
    or-int/lit8 v0, v0, 0x1

    .line 306
    :cond_7
    return v0
.end method

.method readCorner3(II)I
    .locals 5
    .parameter "numRows"
    .parameter "numColumns"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, currentByte:I
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    or-int/lit8 v0, v0, 0x1

    .line 323
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 324
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    or-int/lit8 v0, v0, 0x1

    .line 327
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 328
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    or-int/lit8 v0, v0, 0x1

    .line 331
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 332
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    or-int/lit8 v0, v0, 0x1

    .line 335
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 336
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 337
    or-int/lit8 v0, v0, 0x1

    .line 339
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 340
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    or-int/lit8 v0, v0, 0x1

    .line 343
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 344
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 345
    or-int/lit8 v0, v0, 0x1

    .line 347
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 348
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 349
    or-int/lit8 v0, v0, 0x1

    .line 351
    :cond_7
    return v0
.end method

.method readCorner4(II)I
    .locals 3
    .parameter "numRows"
    .parameter "numColumns"

    .prologue
    const/4 v2, 0x0

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, currentByte:I
    add-int/lit8 v1, p1, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    or-int/lit8 v0, v0, 0x1

    .line 368
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 369
    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    or-int/lit8 v0, v0, 0x1

    .line 372
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 373
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    or-int/lit8 v0, v0, 0x1

    .line 376
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 377
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    or-int/lit8 v0, v0, 0x1

    .line 380
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 381
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    or-int/lit8 v0, v0, 0x1

    .line 384
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 385
    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 386
    or-int/lit8 v0, v0, 0x1

    .line 388
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 389
    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    or-int/lit8 v0, v0, 0x1

    .line 392
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 393
    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 394
    or-int/lit8 v0, v0, 0x1

    .line 396
    :cond_7
    return v0
.end method

.method readModule(IIII)Z
    .locals 1
    .parameter "row"
    .parameter "column"
    .parameter "numRows"
    .parameter "numColumns"

    .prologue
    .line 160
    if-gez p1, :cond_0

    .line 161
    add-int/2addr p1, p3

    .line 162
    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    .line 164
    :cond_0
    if-gez p2, :cond_1

    .line 165
    add-int/2addr p2, p4

    .line 166
    add-int/lit8 v0, p4, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 169
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    return v0
.end method

.method readUtah(IIII)I
    .locals 3
    .parameter "row"
    .parameter "column"
    .parameter "numRows"
    .parameter "numColumns"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, currentByte:I
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    or-int/lit8 v0, v0, 0x1

    .line 188
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 189
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    or-int/lit8 v0, v0, 0x1

    .line 192
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 193
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    or-int/lit8 v0, v0, 0x1

    .line 196
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 197
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    or-int/lit8 v0, v0, 0x1

    .line 200
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    or-int/lit8 v0, v0, 0x1

    .line 204
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 205
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    or-int/lit8 v0, v0, 0x1

    .line 208
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 209
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    or-int/lit8 v0, v0, 0x1

    .line 212
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 213
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 214
    or-int/lit8 v0, v0, 0x1

    .line 216
    :cond_7
    return v0
.end method

.method readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 3
    .parameter "bitMatrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 68
    :goto_0
    return-object v2

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 66
    .local v1, numRows:I
    move v0, v1

    .line 68
    .local v0, numColumns:I
    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v2

    goto :goto_0
.end method
