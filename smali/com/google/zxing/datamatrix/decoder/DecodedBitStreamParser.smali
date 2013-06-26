.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 41
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    .line 47
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 56
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    .line 41
    nop

    :array_0
    .array-data 0x2
        0x2at 0x0t
        0x2at 0x0t
        0x2at 0x0t
        0x20t 0x0t
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data

    .line 47
    :array_1
    .array-data 0x2
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
    .end array-data

    .line 56
    nop

    :array_2
    .array-data 0x2
        0x2at 0x0t
        0x2at 0x0t
        0x2at 0x0t
        0x20t 0x0t
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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    .line 62
    :array_3
    .array-data 0x2
        0x27t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 79
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 80
    .local v0, bits:Lcom/google/zxing/common/BitSource;
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v6, 0x64

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 81
    .local v3, result:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 82
    .local v4, resultTrailer:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v7}, Ljava/util/Vector;-><init>(I)V

    .line 83
    .local v1, byteSegments:Ljava/util/Vector;
    const/4 v2, 0x1

    .line 85
    .local v2, mode:I
    :cond_0
    if-ne v2, v7, :cond_4

    .line 86
    invoke-static {v0, v3, v4}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v2

    .line 109
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 110
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_2
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v1, v5

    .end local v1           #byteSegments:Ljava/util/Vector;
    :cond_3
    invoke-direct {v6, p0, v7, v1, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    return-object v6

    .line 88
    .restart local v1       #byteSegments:Ljava/util/Vector;
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 105
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 90
    :pswitch_0
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    .line 107
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 96
    :pswitch_2
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 99
    :pswitch_3
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 102
    :pswitch_4
    invoke-static {v0, v3, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/util/Vector;)V

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 7
    .parameter "bits"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    .line 345
    new-array v1, v5, [I

    .line 348
    .local v1, cValues:[I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 352
    .local v2, firstByte:I
    const/16 v4, 0xfe

    if-eq v2, v4, :cond_1

    .line 356
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 358
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_9

    .line 359
    aget v0, v1, v3

    .line 360
    .local v0, cValue:I
    if-nez v0, :cond_3

    .line 361
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 362
    :cond_3
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 363
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 364
    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 365
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 366
    :cond_5
    if-ne v0, v5, :cond_6

    .line 367
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 368
    :cond_6
    const/16 v4, 0xe

    if-ge v0, v4, :cond_7

    .line 369
    add-int/lit8 v4, v0, 0x2c

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 370
    :cond_7
    const/16 v4, 0x28

    if-ge v0, v4, :cond_8

    .line 371
    add-int/lit8 v4, v0, 0x33

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 373
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 376
    .end local v0           #cValue:I
    :cond_9
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 6
    .parameter "bits"
    .parameter "result"
    .parameter "resultTrailer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, upperShift:Z
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 124
    .local v0, oneByte:I
    if-nez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 126
    :cond_1
    const/16 v5, 0x80

    if-gt v0, v5, :cond_3

    .line 127
    if-eqz v1, :cond_2

    add-int/lit16 v0, v0, 0x80

    .line 128
    :cond_2
    const/4 v1, 0x0

    .line 129
    add-int/lit8 v4, v0, -0x1

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    :goto_0
    return v3

    .line 131
    :cond_3
    const/16 v5, 0x81

    if-ne v0, v5, :cond_4

    move v3, v4

    .line 132
    goto :goto_0

    .line 133
    :cond_4
    const/16 v5, 0xe5

    if-gt v0, v5, :cond_7

    .line 134
    add-int/lit16 v2, v0, -0x82

    .line 135
    .local v2, value:I
    const/16 v5, 0xa

    if-ge v2, v5, :cond_5

    .line 136
    const/16 v5, 0x30

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 173
    .end local v2           #value:I
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_0

    goto :goto_0

    .line 139
    :cond_7
    const/16 v5, 0xe6

    if-ne v0, v5, :cond_8

    .line 140
    const/4 v3, 0x2

    goto :goto_0

    .line 141
    :cond_8
    const/16 v5, 0xe7

    if-ne v0, v5, :cond_9

    .line 142
    const/4 v3, 0x6

    goto :goto_0

    .line 143
    :cond_9
    const/16 v5, 0xe8

    if-eq v0, v5, :cond_6

    .line 146
    const/16 v5, 0xe9

    if-eq v0, v5, :cond_6

    .line 149
    const/16 v5, 0xea

    if-eq v0, v5, :cond_6

    .line 152
    const/16 v5, 0xeb

    if-ne v0, v5, :cond_a

    .line 153
    const/4 v1, 0x1

    goto :goto_1

    .line 154
    :cond_a
    const/16 v5, 0xec

    if-ne v0, v5, :cond_b

    .line 155
    const-string v5, "[)>\u001e05\u001d"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v5, "\u001e\u0004"

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 157
    :cond_b
    const/16 v5, 0xed

    if-ne v0, v5, :cond_c

    .line 158
    const-string v5, "[)>\u001e06\u001d"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v5, "\u001e\u0004"

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 160
    :cond_c
    const/16 v5, 0xee

    if-ne v0, v5, :cond_d

    .line 161
    const/4 v3, 0x4

    goto :goto_0

    .line 162
    :cond_d
    const/16 v5, 0xef

    if-ne v0, v5, :cond_e

    .line 163
    const/4 v3, 0x3

    goto :goto_0

    .line 164
    :cond_e
    const/16 v5, 0xf0

    if-ne v0, v5, :cond_f

    .line 165
    const/4 v3, 0x5

    goto :goto_0

    .line 166
    :cond_f
    const/16 v5, 0xf1

    if-eq v0, v5, :cond_6

    .line 170
    const/16 v5, 0xf2

    if-lt v0, v5, :cond_6

    .line 171
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/util/Vector;)V
    .locals 8
    .parameter "bits"
    .parameter "result"
    .parameter "byteSegments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 426
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 428
    .local v2, d1:I
    if-nez v2, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    div-int/lit8 v1, v5, 0x8

    .line 435
    .local v1, count:I
    :goto_0
    new-array v0, v1, [B

    .line 436
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-ge v5, v7, :cond_2

    .line 440
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 430
    .end local v0           #bytes:[B
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    const/16 v5, 0xfa

    if-ge v2, v5, :cond_1

    .line 431
    move v1, v2

    .restart local v1       #count:I
    goto :goto_0

    .line 433
    .end local v1           #count:I
    :cond_1
    add-int/lit16 v5, v2, -0xf9

    mul-int/lit16 v5, v5, 0xfa

    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    add-int v1, v5, v6

    .restart local v1       #count:I
    goto :goto_0

    .line 442
    .restart local v0       #bytes:[B
    .restart local v3       #i:I
    :cond_2
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v5, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)B

    move-result v5

    aput-byte v5, v0, v3

    .line 436
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 444
    :cond_3
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 446
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO8859_1"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    return-void

    .line 447
    :catch_0
    move-exception v4

    .line 448
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Platform does not support required encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 10
    .parameter "bits"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1b

    const/16 v8, 0x8

    const/4 v7, 0x3

    .line 184
    const/4 v5, 0x0

    .line 186
    .local v5, upperShift:Z
    new-array v1, v7, [I

    .line 189
    .local v1, cValues:[I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 193
    .local v2, firstByte:I
    const/16 v6, 0xfe

    if-eq v2, v6, :cond_1

    .line 197
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v2, v6, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 199
    const/4 v4, 0x0

    .line 200
    .local v4, shift:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_b

    .line 201
    aget v0, v1, v3

    .line 202
    .local v0, cValue:I
    packed-switch v4, :pswitch_data_0

    .line 251
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 204
    :pswitch_0
    if-ge v0, v7, :cond_3

    .line 205
    add-int/lit8 v4, v0, 0x1

    .line 200
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    :cond_3
    if-eqz v5, :cond_4

    .line 208
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v6, v6, v0

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    const/4 v5, 0x0

    goto :goto_2

    .line 211
    :cond_4
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 216
    :pswitch_1
    if-eqz v5, :cond_5

    .line 217
    add-int/lit16 v6, v0, 0x80

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    const/4 v5, 0x0

    .line 222
    :goto_3
    const/4 v4, 0x0

    .line 223
    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 225
    :pswitch_2
    if-ge v0, v9, :cond_7

    .line 226
    if-eqz v5, :cond_6

    .line 227
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v6, v6, v0

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    const/4 v5, 0x0

    .line 239
    :goto_4
    const/4 v4, 0x0

    .line 240
    goto :goto_2

    .line 230
    :cond_6
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 232
    :cond_7
    if-ne v0, v9, :cond_8

    .line 233
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 234
    :cond_8
    const/16 v6, 0x1e

    if-ne v0, v6, :cond_9

    .line 235
    const/4 v5, 0x1

    goto :goto_4

    .line 237
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 242
    :pswitch_3
    if-eqz v5, :cond_a

    .line 243
    add-int/lit16 v6, v0, 0xe0

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    const/4 v5, 0x0

    .line 248
    :goto_5
    const/4 v4, 0x0

    .line 249
    goto :goto_2

    .line 246
    :cond_a
    add-int/lit8 v6, v0, 0x60

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 254
    .end local v0           #cValue:I
    :cond_b
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    goto/16 :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 5
    .parameter "bits"
    .parameter "result"

    .prologue
    .line 393
    const/4 v2, 0x0

    .line 396
    .local v2, unlatch:Z
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_2

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 400
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_6

    .line 401
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 404
    .local v0, edifactValue:I
    const/16 v3, 0x2b67

    if-ne v0, v3, :cond_3

    .line 405
    const/4 v2, 0x1

    .line 410
    :cond_3
    if-nez v2, :cond_5

    .line 411
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_4

    .line 412
    or-int/lit8 v0, v0, 0x40

    .line 414
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 400
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    .end local v0           #edifactValue:I
    :cond_6
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 10
    .parameter "bits"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1b

    const/16 v8, 0x8

    const/4 v7, 0x3

    .line 264
    const/4 v5, 0x0

    .line 266
    .local v5, upperShift:Z
    new-array v1, v7, [I

    .line 269
    .local v1, cValues:[I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 273
    .local v2, firstByte:I
    const/16 v6, 0xfe

    if-eq v2, v6, :cond_1

    .line 277
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v2, v6, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, shift:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_b

    .line 281
    aget v0, v1, v3

    .line 282
    .local v0, cValue:I
    packed-switch v4, :pswitch_data_0

    .line 332
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 284
    :pswitch_0
    if-ge v0, v7, :cond_3

    .line 285
    add-int/lit8 v4, v0, 0x1

    .line 280
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 287
    :cond_3
    if-eqz v5, :cond_4

    .line 288
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v6, v6, v0

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 289
    const/4 v5, 0x0

    goto :goto_2

    .line 291
    :cond_4
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 296
    :pswitch_1
    if-eqz v5, :cond_5

    .line 297
    add-int/lit16 v6, v0, 0x80

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 298
    const/4 v5, 0x0

    .line 302
    :goto_3
    const/4 v4, 0x0

    .line 303
    goto :goto_2

    .line 300
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 306
    :pswitch_2
    if-ge v0, v9, :cond_7

    .line 307
    if-eqz v5, :cond_6

    .line 308
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v6, v6, v0

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    const/4 v5, 0x0

    .line 320
    :goto_4
    const/4 v4, 0x0

    .line 321
    goto :goto_2

    .line 311
    :cond_6
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 313
    :cond_7
    if-ne v0, v9, :cond_8

    .line 314
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 315
    :cond_8
    const/16 v6, 0x1e

    if-ne v0, v6, :cond_9

    .line 316
    const/4 v5, 0x1

    goto :goto_4

    .line 318
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 323
    :pswitch_3
    if-eqz v5, :cond_a

    .line 324
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v6, v6, v0

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    const/4 v5, 0x0

    .line 329
    :goto_5
    const/4 v4, 0x0

    .line 330
    goto :goto_2

    .line 327
    :cond_a
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 335
    .end local v0           #cValue:I
    :cond_b
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    goto/16 :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .locals 4
    .parameter "firstByte"
    .parameter "secondByte"
    .parameter "result"

    .prologue
    .line 380
    shl-int/lit8 v2, p0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 381
    .local v0, fullBitValue:I
    div-int/lit16 v1, v0, 0x640

    .line 382
    .local v1, temp:I
    const/4 v2, 0x0

    aput v1, p2, v2

    .line 383
    mul-int/lit16 v2, v1, 0x640

    sub-int/2addr v0, v2

    .line 384
    div-int/lit8 v1, v0, 0x28

    .line 385
    const/4 v2, 0x1

    aput v1, p2, v2

    .line 386
    const/4 v2, 0x2

    mul-int/lit8 v3, v1, 0x28

    sub-int v3, v0, v3

    aput v3, p2, v2

    .line 387
    return-void
.end method

.method private static unrandomize255State(II)B
    .locals 3
    .parameter "randomizedBase256Codeword"
    .parameter "base256CodewordPosition"

    .prologue
    .line 457
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    .line 458
    .local v0, pseudoRandomNumber:I
    sub-int v1, p0, v0

    .line 459
    .local v1, tempVariable:I
    if-ltz v1, :cond_0

    .end local v1           #tempVariable:I
    :goto_0
    int-to-byte v2, v1

    return v2

    .restart local v1       #tempVariable:I
    :cond_0
    add-int/lit16 v1, v1, 0x100

    goto :goto_0
.end method
