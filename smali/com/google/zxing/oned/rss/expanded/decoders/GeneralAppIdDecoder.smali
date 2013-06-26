.class final Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 1
    .parameter "information"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    .line 43
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 44
    return-void
.end method

.method private decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .locals 5
    .parameter "pos"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x5

    .line 342
    invoke-virtual {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 343
    .local v0, fiveBitValue:I
    if-ne v0, v3, :cond_0

    .line 344
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x5

    const/16 v4, 0x24

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    .line 362
    :goto_0
    return-object v2

    .line 347
    :cond_0
    if-lt v0, v2, :cond_1

    if-ge v0, v3, :cond_1

    .line 348
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x5

    add-int/lit8 v4, v0, 0x30

    add-int/lit8 v4, v4, -0x5

    int-to-char v4, v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 351
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 353
    .local v1, sixBitValue:I
    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_2

    .line 354
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x6

    add-int/lit8 v4, v1, 0x21

    int-to-char v4, v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 357
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 365
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Decoding invalid alphanumeric value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :pswitch_0
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x6

    const/16 v4, 0x2a

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 359
    :pswitch_1
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x6

    const/16 v4, 0x2c

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 360
    :pswitch_2
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x6

    const/16 v4, 0x2d

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 361
    :pswitch_3
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x6

    const/16 v4, 0x2e

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 362
    :pswitch_4
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x6

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .locals 6
    .parameter "pos"

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0xf

    const/4 v3, 0x5

    .line 275
    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 276
    .local v1, fiveBitValue:I
    if-ne v1, v4, :cond_0

    .line 277
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x5

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    .line 316
    :goto_0
    return-object v3

    .line 280
    :cond_0
    if-lt v1, v3, :cond_1

    if-ge v1, v4, :cond_1

    .line 281
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x5

    add-int/lit8 v5, v1, 0x30

    add-int/lit8 v5, v5, -0x5

    int-to-char v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 284
    :cond_1
    const/4 v3, 0x7

    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 286
    .local v2, sevenBitValue:I
    const/16 v3, 0x40

    if-lt v2, v3, :cond_2

    if-ge v2, v5, :cond_2

    .line 287
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x7

    add-int/lit8 v5, v2, 0x1

    int-to-char v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 290
    :cond_2
    if-lt v2, v5, :cond_3

    const/16 v3, 0x74

    if-ge v2, v3, :cond_3

    .line 291
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x7

    add-int/lit8 v5, v2, 0x7

    int-to-char v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 294
    :cond_3
    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 295
    .local v0, eightBitValue:I
    packed-switch v0, :pswitch_data_0

    .line 319
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Decoding invalid ISO/IEC 646 value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 296
    :pswitch_0
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 297
    :pswitch_1
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 298
    :pswitch_2
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto :goto_0

    .line 299
    :pswitch_3
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x26

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 300
    :pswitch_4
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x27

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 301
    :pswitch_5
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x28

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 302
    :pswitch_6
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x29

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 303
    :pswitch_7
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x2a

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 304
    :pswitch_8
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x2b

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 305
    :pswitch_9
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x2c

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 306
    :pswitch_a
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x2d

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 307
    :pswitch_b
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 308
    :pswitch_c
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 309
    :pswitch_d
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x3a

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 310
    :pswitch_e
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x3b

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 311
    :pswitch_f
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x3c

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 312
    :pswitch_10
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x3d

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 313
    :pswitch_11
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x3e

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 314
    :pswitch_12
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x3f

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 315
    :pswitch_13
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x5f

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 316
    :pswitch_14
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x8

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    .locals 7
    .parameter "pos"

    .prologue
    const/16 v6, 0xa

    .line 85
    add-int/lit8 v3, p1, 0x7

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v4, v4, Lcom/google/zxing/common/BitArray;->size:I

    if-le v3, v4, :cond_1

    .line 86
    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 87
    .local v2, numeric:I
    if-nez v2, :cond_0

    .line 88
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v4, v4, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v3, v4, v6, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    .line 97
    :goto_0
    return-object v3

    .line 90
    :cond_0
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v4, v4, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v5, v2, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    goto :goto_0

    .line 92
    .end local v2           #numeric:I
    :cond_1
    const/4 v3, 0x7

    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 94
    .restart local v2       #numeric:I
    add-int/lit8 v3, v2, -0x8

    div-int/lit8 v0, v3, 0xb

    .line 95
    .local v0, digit1:I
    add-int/lit8 v3, v2, -0x8

    rem-int/lit8 v1, v3, 0xb

    .line 97
    .local v1, digit2:I
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    add-int/lit8 v4, p1, 0x7

    invoke-direct {v3, v4, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    goto :goto_0
.end method

.method static extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I
    .locals 4
    .parameter "information"
    .parameter "pos"
    .parameter "bits"

    .prologue
    .line 105
    const/16 v2, 0x20

    if-le p2, v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "extractNumberValueFromBitArray can\'t handle more than 32 bits"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 111
    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const/4 v2, 0x1

    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_2
    return v1
.end method

.method private isAlphaOr646ToNumericLatch(I)Z
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 388
    add-int/lit8 v2, p1, 0x3

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_1
    add-int/lit8 v2, p1, 0x3

    if-ge v0, v2, :cond_2

    .line 393
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isAlphaTo646ToAlphaLatch(I)Z
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 369
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 373
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v2, v3, :cond_4

    .line 374
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 375
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    :cond_3
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 383
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNumericToAlphaNumericLatch(I)Z
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 403
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v1

    .line 407
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v2, v3, :cond_2

    .line 408
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isStillAlpha(I)Z
    .locals 8
    .parameter "pos"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 323
    add-int/lit8 v4, p1, 0x5

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    if-le v4, v5, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v3

    .line 328
    :cond_1
    invoke-virtual {p0, p1, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 329
    .local v0, fiveBitValue:I
    if-lt v0, v6, :cond_2

    if-ge v0, v7, :cond_2

    move v3, v2

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    add-int/lit8 v4, p1, 0x6

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v4, v5, :cond_0

    .line 337
    const/4 v4, 0x6

    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 338
    .local v1, sixBitValue:I
    if-lt v1, v7, :cond_3

    const/16 v4, 0x3f

    if-ge v1, v4, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private isStillIsoIec646(I)Z
    .locals 8
    .parameter "pos"

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 247
    add-int/lit8 v5, p1, 0x5

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v6, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-le v5, v6, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v4

    .line 251
    :cond_1
    invoke-virtual {p0, p1, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 252
    .local v1, fiveBitValue:I
    if-lt v1, v7, :cond_2

    const/16 v5, 0x10

    if-ge v1, v5, :cond_2

    move v4, v3

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    add-int/lit8 v5, p1, 0x7

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v6, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v5, v6, :cond_0

    .line 260
    const/4 v5, 0x7

    invoke-virtual {p0, p1, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 261
    .local v2, sevenBitValue:I
    const/16 v5, 0x40

    if-lt v2, v5, :cond_3

    const/16 v5, 0x74

    if-ge v2, v5, :cond_3

    move v4, v3

    .line 262
    goto :goto_0

    .line 265
    :cond_3
    add-int/lit8 v5, p1, 0x8

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v6, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v5, v6, :cond_0

    .line 269
    const/16 v5, 0x8

    invoke-virtual {p0, p1, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 270
    .local v0, eightBitValue:I
    const/16 v5, 0xe8

    if-lt v0, v5, :cond_4

    const/16 v5, 0xfd

    if-ge v0, v5, :cond_4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method private isStillNumeric(I)Z
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v1, 0x1

    .line 71
    add-int/lit8 v2, p1, 0x7

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_2

    .line 72
    add-int/lit8 v2, p1, 0x4

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v2, v3, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    :cond_2
    move v0, p1

    .local v0, i:I
    :goto_1
    add-int/lit8 v2, p1, 0x3

    if-ge v0, v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v2, p1, 0x3

    invoke-virtual {v1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method private parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 4

    .prologue
    .line 219
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillAlpha(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v0

    .line 221
    .local v0, alpha:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I

    move-result v3

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 223
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 225
    .local v1, information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    .line 243
    .end local v0           #alpha:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .end local v1           #information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_1
    return-object v2

    .line 228
    .restart local v0       #alpha:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 231
    .end local v0           #alpha:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 233
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    .line 243
    :cond_2
    :goto_2
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    goto :goto_1

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v2, v3, :cond_4

    .line 236
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 241
    :goto_3
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setIsoIec646()V

    goto :goto_2

    .line 238
    :cond_4
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    goto :goto_3
.end method

.method private parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 5

    .prologue
    .line 139
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v4, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 141
    .local v0, initialPosition:I
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isAlpha()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v3

    .line 143
    .local v3, result:Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v1

    .line 152
    .local v1, isFinished:Z
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    if-eq v0, v4, :cond_3

    const/4 v2, 0x1

    .line 153
    .local v2, positionChanged:Z
    :goto_1
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 158
    :goto_2
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v4

    return-object v4

    .line 144
    .end local v1           #isFinished:Z
    .end local v2           #positionChanged:Z
    .end local v3           #result:Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    :cond_1
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isIsoIec646()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v3

    .line 146
    .restart local v3       #result:Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v1

    .restart local v1       #isFinished:Z
    goto :goto_0

    .line 148
    .end local v1           #isFinished:Z
    .end local v3           #result:Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    :cond_2
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v3

    .line 149
    .restart local v3       #result:Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v1

    .restart local v1       #isFinished:Z
    goto :goto_0

    .line 152
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 156
    .restart local v2       #positionChanged:Z
    :cond_4
    if-eqz v1, :cond_0

    goto :goto_2
.end method

.method private parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 4

    .prologue
    .line 192
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillIsoIec646(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v1

    .line 194
    .local v1, iso:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I

    move-result v3

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 196
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 198
    .local v0, information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    .line 215
    .end local v0           #information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .end local v1           #iso:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :goto_1
    return-object v2

    .line 200
    .restart local v1       #iso:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    .end local v1           #iso:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 205
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    .line 215
    :cond_2
    :goto_2
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    goto :goto_1

    .line 206
    :cond_3
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v2, v3, :cond_4

    .line 208
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 213
    :goto_3
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    goto :goto_2

    .line 210
    :cond_4
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    goto :goto_3
.end method

.method private parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 162
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillNumeric(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    move-result-object v1

    .line 164
    .local v1, numeric:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getNewPosition()I

    move-result v3

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 166
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isFirstDigitFNC1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 173
    .local v0, information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_1
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v2, v0, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    .line 188
    .end local v0           #information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .end local v1           #numeric:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :goto_2
    return-object v2

    .line 171
    .restart local v1       #numeric:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_0
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    .restart local v0       #information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    goto :goto_1

    .line 175
    .end local v0           #information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getFirstDigit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 179
    .restart local v0       #information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v2, v0, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    goto :goto_2

    .line 181
    .end local v0           #information:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_2
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 184
    .end local v1           #numeric:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_3
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isNumericToAlphaNumericLatch(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 186
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 188
    :cond_4
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    goto :goto_2
.end method


# virtual methods
.method decodeAllCodes(Ljava/lang/StringBuffer;I)Ljava/lang/String;
    .locals 5
    .parameter "buff"
    .parameter "initialPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    move v0, p2

    .line 48
    .local v0, currentPosition:I
    const/4 v3, 0x0

    .line 50
    .local v3, remaining:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v1

    .line 51
    .local v1, info:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, parsedFields:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    :goto_1
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 56
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I

    move-result v0

    .line 63
    goto :goto_0
.end method

.method decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 5
    .parameter "pos"
    .parameter "remaining"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 122
    if-eqz p2, :cond_0

    .line 123
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iput p1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 128
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v0

    .line 129
    .local v0, lastDecoded:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    .line 132
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method extractNumericValueFromBitArray(II)I
    .locals 1
    .parameter "pos"
    .parameter "bits"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-static {v0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    return v0
.end method
