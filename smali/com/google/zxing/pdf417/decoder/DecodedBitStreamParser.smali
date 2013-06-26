.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final EXP900:[Ljava/lang/String;

.field private static final MIXED_CHARS:[C

.field private static final PUNCT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 57
    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000000000000000000000000000000000000000000001"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "000000000000000000000000000000000000000000900"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "000000000000000000000000000000000000000810000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "000000000000000000000000000000000000729000000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "000000000000000000000000000000000656100000000"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "000000000000000000000000000000590490000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "000000000000000000000000000531441000000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "000000000000000000000000478296900000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "000000000000000000000430467210000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "000000000000000000387420489000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "000000000000000348678440100000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "000000000000313810596090000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "000000000282429536481000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "000000254186582832900000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "000228767924549610000000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "205891132094649000000000000000000000000000000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    return-void

    .line 53
    nop

    :array_0
    .array-data 0x2
        0x3bt 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x7dt 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7et 0x0t
        0x21t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0xat 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x7ct 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x27t 0x0t
    .end array-data

    .line 57
    nop

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x26t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x23t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x2bt 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x3dt 0x0t
        0x5et 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 11
    .parameter "value1"
    .parameter "value2"

    .prologue
    const/4 v8, 0x5

    const/4 v10, 0x0

    .line 582
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 583
    .local v6, temp1:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 584
    .local v7, temp2:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 585
    .local v4, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 587
    const/16 v8, 0x30

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    :cond_0
    const/4 v0, 0x0

    .line 590
    .local v0, carry:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x3

    :goto_1
    const/4 v8, -0x1

    if-le v1, v8, :cond_1

    .line 592
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 593
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 594
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    add-int/lit8 v8, v1, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 598
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 599
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    add-int/lit8 v8, v1, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 603
    .local v2, intValue1:I
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 605
    .local v3, intValue2:I
    add-int v8, v2, v3

    add-int/2addr v8, v0

    rem-int/lit16 v5, v8, 0x3e8

    .line 606
    .local v5, sumval:I
    add-int v8, v2, v3

    add-int/2addr v8, v0

    div-int/lit16 v0, v8, 0x3e8

    .line 608
    add-int/lit8 v8, v1, 0x2

    rem-int/lit8 v9, v5, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 609
    add-int/lit8 v8, v1, 0x1

    div-int/lit8 v9, v5, 0xa

    rem-int/lit8 v9, v9, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 610
    div-int/lit8 v8, v5, 0x64

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v4, v1, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 590
    add-int/lit8 v1, v1, -0x3

    goto :goto_1

    .line 612
    .end local v2           #intValue1:I
    .end local v3           #intValue2:I
    .end local v5           #sumval:I
    :cond_1
    return-object v4
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuffer;)I
    .locals 15
    .parameter "mode"
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"

    .prologue
    .line 336
    const/16 v11, 0x385

    if-ne p0, v11, :cond_5

    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, count:I
    const-wide/16 v9, 0x0

    .line 341
    .local v9, value:J
    const/4 v11, 0x6

    new-array v5, v11, [C

    .line 342
    .local v5, decodedData:[C
    const/4 v11, 0x6

    new-array v1, v11, [I

    .line 343
    .local v1, byteCompactedCodewords:[I
    const/4 v6, 0x0

    .line 344
    .local v6, end:Z
    :cond_0
    :goto_0
    const/4 v11, 0x0

    aget v11, p1, v11

    move/from16 v0, p2

    if-ge v0, v11, :cond_4

    if-nez v6, :cond_4

    .line 345
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, codeIndex:I
    aget v2, p1, p2

    .line 346
    .local v2, code:I
    const/16 v11, 0x384

    if-ge v2, v11, :cond_1

    .line 347
    aput v2, v1, v4

    .line 348
    add-int/lit8 v4, v4, 0x1

    .line 350
    const-wide/16 v11, 0x384

    mul-long/2addr v11, v9

    int-to-long v13, v2

    add-long v9, v11, v13

    move/from16 p2, v3

    .line 363
    .end local v3           #codeIndex:I
    .restart local p2
    :goto_1
    rem-int/lit8 v11, v4, 0x5

    if-nez v11, :cond_0

    if-lez v4, :cond_0

    .line 366
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    const/4 v11, 0x6

    if-ge v8, v11, :cond_3

    .line 367
    rsub-int/lit8 v11, v8, 0x5

    const-wide/16 v12, 0x100

    rem-long v12, v9, v12

    long-to-int v12, v12

    int-to-char v12, v12

    aput-char v12, v5, v11

    .line 368
    const/16 v11, 0x8

    shr-long/2addr v9, v11

    .line 366
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 352
    .end local v8           #j:I
    .end local p2
    .restart local v3       #codeIndex:I
    :cond_1
    const/16 v11, 0x384

    if-eq v2, v11, :cond_2

    const/16 v11, 0x385

    if-eq v2, v11, :cond_2

    const/16 v11, 0x386

    if-eq v2, v11, :cond_2

    const/16 v11, 0x39c

    if-eq v2, v11, :cond_2

    const/16 v11, 0x3a0

    if-eq v2, v11, :cond_2

    const/16 v11, 0x39b

    if-eq v2, v11, :cond_2

    const/16 v11, 0x39a

    if-ne v2, v11, :cond_c

    .line 359
    :cond_2
    add-int/lit8 p2, v3, -0x1

    .line 360
    .end local v3           #codeIndex:I
    .restart local p2
    const/4 v6, 0x1

    goto :goto_1

    .line 370
    .restart local v8       #j:I
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 371
    const/4 v4, 0x0

    goto :goto_0

    .line 377
    .end local v2           #code:I
    .end local v8           #j:I
    :cond_4
    div-int/lit8 v11, v4, 0x5

    mul-int/lit8 v7, v11, 0x5

    .local v7, i:I
    :goto_3
    if-ge v7, v4, :cond_a

    .line 378
    aget v11, v1, v7

    int-to-char v11, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 381
    .end local v1           #byteCompactedCodewords:[I
    .end local v4           #count:I
    .end local v5           #decodedData:[C
    .end local v6           #end:Z
    .end local v7           #i:I
    .end local v9           #value:J
    :cond_5
    const/16 v11, 0x39c

    if-ne p0, v11, :cond_a

    .line 384
    const/4 v4, 0x0

    .line 385
    .restart local v4       #count:I
    const-wide/16 v9, 0x0

    .line 386
    .restart local v9       #value:J
    const/4 v6, 0x0

    .line 387
    .restart local v6       #end:Z
    :cond_6
    :goto_4
    const/4 v11, 0x0

    aget v11, p1, v11

    move/from16 v0, p2

    if-ge v0, v11, :cond_a

    if-nez v6, :cond_a

    .line 388
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #codeIndex:I
    aget v2, p1, p2

    .line 389
    .restart local v2       #code:I
    const/16 v11, 0x384

    if-ge v2, v11, :cond_7

    .line 390
    add-int/lit8 v4, v4, 0x1

    .line 392
    const-wide/16 v11, 0x384

    mul-long/2addr v11, v9

    int-to-long v13, v2

    add-long v9, v11, v13

    move/from16 p2, v3

    .line 405
    .end local v3           #codeIndex:I
    .restart local p2
    :goto_5
    rem-int/lit8 v11, v4, 0x5

    if-nez v11, :cond_6

    if-lez v4, :cond_6

    .line 408
    const/4 v11, 0x6

    new-array v5, v11, [C

    .line 409
    .restart local v5       #decodedData:[C
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_6
    const/4 v11, 0x6

    if-ge v8, v11, :cond_9

    .line 410
    rsub-int/lit8 v11, v8, 0x5

    const-wide/16 v12, 0xff

    and-long/2addr v12, v9

    long-to-int v12, v12

    int-to-char v12, v12

    aput-char v12, v5, v11

    .line 411
    const/16 v11, 0x8

    shr-long/2addr v9, v11

    .line 409
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 394
    .end local v5           #decodedData:[C
    .end local v8           #j:I
    .end local p2
    .restart local v3       #codeIndex:I
    :cond_7
    const/16 v11, 0x384

    if-eq v2, v11, :cond_8

    const/16 v11, 0x385

    if-eq v2, v11, :cond_8

    const/16 v11, 0x386

    if-eq v2, v11, :cond_8

    const/16 v11, 0x39c

    if-eq v2, v11, :cond_8

    const/16 v11, 0x3a0

    if-eq v2, v11, :cond_8

    const/16 v11, 0x39b

    if-eq v2, v11, :cond_8

    const/16 v11, 0x39a

    if-ne v2, v11, :cond_b

    .line 401
    :cond_8
    add-int/lit8 p2, v3, -0x1

    .line 402
    .end local v3           #codeIndex:I
    .restart local p2
    const/4 v6, 0x1

    goto :goto_5

    .line 413
    .restart local v5       #decodedData:[C
    .restart local v8       #j:I
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 417
    .end local v2           #code:I
    .end local v4           #count:I
    .end local v5           #decodedData:[C
    .end local v6           #end:Z
    .end local v8           #j:I
    .end local v9           #value:J
    :cond_a
    return p2

    .end local p2
    .restart local v2       #code:I
    .restart local v3       #codeIndex:I
    .restart local v4       #count:I
    .restart local v6       #end:Z
    .restart local v9       #value:J
    :cond_b
    move/from16 p2, v3

    .end local v3           #codeIndex:I
    .restart local p2
    goto :goto_5

    .end local p2
    .restart local v1       #byteCompactedCodewords:[I
    .restart local v3       #codeIndex:I
    .restart local v5       #decodedData:[C
    :cond_c
    move/from16 p2, v3

    .end local v3           #codeIndex:I
    .restart local p2
    goto/16 :goto_1
.end method

.method static decode([I)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .parameter "codewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 87
    .local v3, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 88
    .local v1, codeIndex:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #codeIndex:I
    .local v2, codeIndex:I
    aget v0, p0, v1

    .local v0, code:I
    move v1, v2

    .line 89
    .end local v2           #codeIndex:I
    .restart local v1       #codeIndex:I
    :goto_0
    const/4 v4, 0x0

    aget v4, p0, v4

    if-ge v1, v4, :cond_1

    .line 90
    sparse-switch v0, :sswitch_data_0

    .line 115
    add-int/lit8 v1, v1, -0x1

    .line 116
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    .line 120
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 121
    add-int/lit8 v2, v1, 0x1

    .end local v1           #codeIndex:I
    .restart local v2       #codeIndex:I
    aget v0, p0, v1

    move v1, v2

    .end local v2           #codeIndex:I
    .restart local v1       #codeIndex:I
    goto :goto_0

    .line 92
    :sswitch_0
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    .line 93
    goto :goto_1

    .line 96
    :sswitch_1
    invoke-static {v0, p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    .line 97
    goto :goto_1

    .line 100
    :sswitch_2
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    .line 101
    goto :goto_1

    .line 104
    :sswitch_3
    invoke-static {v0, p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    .line 105
    goto :goto_1

    .line 108
    :sswitch_4
    invoke-static {v0, p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    .line 109
    goto :goto_1

    .line 123
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 126
    :cond_1
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5, v6, v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    return-object v4

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .parameter "codewords"
    .parameter "count"

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, accum:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 518
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget v5, p0, v1

    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->multiply(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 519
    .local v3, value:Ljava/lang/StringBuffer;
    if-nez v0, :cond_0

    .line 521
    move-object v0, v3

    .line 517
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_1

    .line 526
    .end local v3           #value:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v2, 0x0

    .line 529
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_4

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 536
    :cond_2
    if-nez v2, :cond_3

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    :cond_3
    return-object v2

    .line 529
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuffer;)V
    .locals 11
    .parameter "textCompactionData"
    .parameter "byteCompactionData"
    .parameter "length"
    .parameter "result"

    .prologue
    const/16 v10, 0x19

    const/16 v9, 0x391

    const/16 v8, 0x1c

    const/16 v7, 0x1a

    const/16 v6, 0x1d

    .line 218
    const/4 v3, 0x0

    .line 219
    .local v3, subMode:I
    const/4 v2, 0x0

    .line 220
    .local v2, priorToShiftMode:I
    const/4 v1, 0x0

    .line 221
    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_14

    .line 222
    aget v4, p0, v1

    .line 223
    .local v4, subModeCh:I
    const/4 v0, 0x0

    .line 224
    .local v0, ch:C
    packed-switch v3, :pswitch_data_0

    .line 316
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 321
    goto :goto_0

    .line 227
    :pswitch_0
    if-ge v4, v7, :cond_2

    .line 229
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto :goto_1

    .line 231
    :cond_2
    if-ne v4, v7, :cond_3

    .line 232
    const/16 v0, 0x20

    goto :goto_1

    .line 233
    :cond_3
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_4

    .line 234
    const/4 v3, 0x1

    goto :goto_1

    .line 235
    :cond_4
    if-ne v4, v8, :cond_5

    .line 236
    const/4 v3, 0x2

    goto :goto_1

    .line 237
    :cond_5
    if-ne v4, v6, :cond_6

    .line 239
    move v2, v3

    .line 240
    const/4 v3, 0x4

    goto :goto_1

    .line 241
    :cond_6
    if-ne v4, v9, :cond_0

    .line 242
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 249
    :pswitch_1
    if-ge v4, v7, :cond_7

    .line 250
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    goto :goto_1

    .line 252
    :cond_7
    if-ne v4, v7, :cond_8

    .line 253
    const/16 v0, 0x20

    goto :goto_1

    .line 254
    :cond_8
    if-ne v4, v8, :cond_9

    .line 255
    const/4 v3, 0x0

    goto :goto_1

    .line 256
    :cond_9
    if-ne v4, v8, :cond_a

    .line 257
    const/4 v3, 0x2

    goto :goto_1

    .line 258
    :cond_a
    if-ne v4, v6, :cond_b

    .line 260
    move v2, v3

    .line 261
    const/4 v3, 0x4

    goto :goto_1

    .line 262
    :cond_b
    if-ne v4, v9, :cond_0

    .line 263
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 270
    :pswitch_2
    if-ge v4, v10, :cond_c

    .line 271
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    .line 273
    :cond_c
    if-ne v4, v10, :cond_d

    .line 274
    const/4 v3, 0x3

    goto :goto_1

    .line 275
    :cond_d
    if-ne v4, v7, :cond_e

    .line 276
    const/16 v0, 0x20

    goto :goto_1

    .line 277
    :cond_e
    const/16 v5, 0x1b

    if-eq v4, v5, :cond_0

    .line 279
    if-ne v4, v8, :cond_f

    .line 280
    const/4 v3, 0x0

    goto :goto_1

    .line 281
    :cond_f
    if-ne v4, v6, :cond_10

    .line 283
    move v2, v3

    .line 284
    const/4 v3, 0x4

    goto :goto_1

    .line 285
    :cond_10
    if-ne v4, v9, :cond_0

    .line 286
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 293
    :pswitch_3
    if-ge v4, v6, :cond_11

    .line 294
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    .line 296
    :cond_11
    if-ne v4, v6, :cond_12

    .line 297
    const/4 v3, 0x0

    goto :goto_1

    .line 298
    :cond_12
    if-ne v4, v9, :cond_0

    .line 299
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 306
    :pswitch_4
    move v3, v2

    .line 307
    if-ge v4, v6, :cond_13

    .line 308
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1

    .line 310
    :cond_13
    if-ne v4, v6, :cond_0

    .line 311
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 322
    .end local v0           #ch:C
    .end local v4           #subModeCh:I
    :cond_14
    return-void

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static multiply(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 10
    .parameter "value1"
    .parameter "value2"

    .prologue
    const/16 v9, 0x30

    .line 551
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 552
    .local v4, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 554
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_0
    div-int/lit8 v0, p1, 0x64

    .line 557
    .local v0, hundreds:I
    div-int/lit8 v6, p1, 0xa

    rem-int/lit8 v5, v6, 0xa

    .line 558
    .local v5, tens:I
    rem-int/lit8 v3, p1, 0xa

    .line 560
    .local v3, ones:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 561
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 564
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_2

    .line 565
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 568
    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 569
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 571
    :cond_3
    return-object v4
.end method

.method private static numericCompaction([IILjava/lang/StringBuffer;)I
    .locals 9
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"

    .prologue
    const/16 v8, 0x384

    const/4 v7, 0x0

    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, count:I
    const/4 v3, 0x0

    .line 432
    .local v3, end:Z
    const/16 v6, 0xf

    new-array v4, v6, [I

    .line 434
    .local v4, numericCodewords:[I
    :cond_0
    :goto_0
    aget v6, p0, v7

    if-ge p1, v6, :cond_5

    if-nez v3, :cond_5

    .line 435
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, codeIndex:I
    aget v0, p0, p1

    .line 436
    .local v0, code:I
    aget v6, p0, v7

    if-ne v1, v6, :cond_1

    .line 437
    const/4 v3, 0x1

    .line 439
    :cond_1
    if-ge v0, v8, :cond_3

    .line 440
    aput v0, v4, v2

    .line 441
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 453
    .end local v1           #codeIndex:I
    .restart local p1
    :goto_1
    rem-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_2

    const/16 v6, 0x386

    if-eq v0, v6, :cond_2

    if-eqz v3, :cond_0

    .line 460
    :cond_2
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, s:Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    const/4 v2, 0x0

    goto :goto_0

    .line 443
    .end local v5           #s:Ljava/lang/String;
    .end local p1
    .restart local v1       #codeIndex:I
    :cond_3
    if-eq v0, v8, :cond_4

    const/16 v6, 0x385

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39c

    if-eq v0, v6, :cond_4

    const/16 v6, 0x3a0

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39b

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39a

    if-ne v0, v6, :cond_6

    .line 449
    :cond_4
    add-int/lit8 p1, v1, -0x1

    .line 450
    .end local v1           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    goto :goto_1

    .line 465
    .end local v0           #code:I
    :cond_5
    return p1

    .end local p1
    .restart local v0       #code:I
    .restart local v1       #codeIndex:I
    :cond_6
    move p1, v1

    .end local v1           #codeIndex:I
    .restart local p1
    goto :goto_1
.end method

.method private static textCompaction([IILjava/lang/StringBuffer;)I
    .locals 9
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"

    .prologue
    const/4 v8, 0x0

    .line 141
    aget v6, p0, v8

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [I

    .line 143
    .local v5, textCompactionData:[I
    aget v6, p0, v8

    shl-int/lit8 v6, v6, 0x1

    new-array v0, v6, [I

    .line 145
    .local v0, byteCompactionData:[I
    const/4 v4, 0x0

    .line 146
    .local v4, index:I
    const/4 v3, 0x0

    .line 147
    .local v3, end:Z
    :goto_0
    aget v6, p0, v8

    if-ge p1, v6, :cond_1

    if-nez v3, :cond_1

    .line 148
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, codeIndex:I
    aget v1, p0, p1

    .line 149
    .local v1, code:I
    const/16 v6, 0x384

    if-ge v1, v6, :cond_0

    .line 150
    div-int/lit8 v6, v1, 0x1e

    aput v6, v5, v4

    .line 151
    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v7, v1, 0x1e

    aput v7, v5, v6

    .line 152
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 154
    .end local p1
    .restart local v2       #codeIndex:I
    :cond_0
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 156
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_0
    add-int/lit8 p1, v2, -0x1

    .line 157
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 158
    goto :goto_0

    .line 161
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 162
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 163
    goto :goto_0

    .line 166
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_2
    add-int/lit8 p1, v2, -0x1

    .line 167
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 168
    goto :goto_0

    .line 177
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_3
    const/16 v6, 0x391

    aput v6, v5, v4

    .line 178
    aput v1, v0, v4

    .line 179
    add-int/lit8 v4, v4, 0x1

    move p1, v2

    .line 180
    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 183
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_4
    add-int/lit8 p1, v2, -0x1

    .line 184
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    goto :goto_0

    .line 190
    .end local v1           #code:I
    :cond_1
    invoke-static {v5, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuffer;)V

    .line 191
    return p1

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method
