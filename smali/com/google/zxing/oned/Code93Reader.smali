.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 45
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 53
    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    .line 45
    :array_0
    .array-data 0x4
        0x14t 0x1t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x28t 0x1t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xa8t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xa2t 0x1t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x64t 0x1t 0x0t 0x0t
        0x62t 0x1t 0x0t 0x0t
        0x34t 0x1t 0x0t 0x0t
        0x1at 0x1t 0x0t 0x0t
        0x58t 0x1t 0x0t 0x0t
        0x4ct 0x1t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0xb4t 0x1t 0x0t 0x0t
        0xb2t 0x1t 0x0t 0x0t
        0xact 0x1t 0x0t 0x0t
        0xa6t 0x1t 0x0t 0x0t
        0x96t 0x1t 0x0t 0x0t
        0x9at 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x66t 0x1t 0x0t 0x0t
        0x36t 0x1t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0xd2t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x76t 0x1t 0x0t 0x0t
        0xaet 0x1t 0x0t 0x0t
        0x26t 0x1t 0x0t 0x0t
        0xdat 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x32t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static checkChecksums(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 254
    .local v0, length:I
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/StringBuffer;II)V

    .line 255
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/StringBuffer;II)V

    .line 256
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/StringBuffer;II)V
    .locals 6
    .parameter "result"
    .parameter "checkPosition"
    .parameter "weightMax"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v2, 0x1

    .line 261
    .local v2, weight:I
    const/4 v1, 0x0

    .line 262
    .local v1, total:I
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 263
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 264
    add-int/lit8 v2, v2, 0x1

    if-le v2, p2, :cond_0

    .line 265
    const/4 v2, 0x1

    .line 262
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v5, v1, 0x2f

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 269
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 271
    :cond_2
    return-void
.end method

.method private static decodeExtended(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 9
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 197
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 198
    .local v4, length:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 199
    .local v1, decoded:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_7

    .line 200
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 201
    .local v0, c:C
    const/16 v6, 0x61

    if-lt v0, v6, :cond_6

    const/16 v6, 0x64

    if-gt v0, v6, :cond_6

    .line 202
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 203
    .local v5, next:C
    const/4 v2, 0x0

    .line 204
    .local v2, decodedChar:C
    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    add-int/lit8 v3, v3, 0x1

    .line 199
    .end local v2           #decodedChar:C
    .end local v5           #next:C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .restart local v2       #decodedChar:C
    .restart local v5       #next:C
    :pswitch_0
    if-lt v5, v7, :cond_0

    if-gt v5, v8, :cond_0

    .line 208
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_1

    .line 210
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 215
    :pswitch_1
    if-lt v5, v7, :cond_1

    if-gt v5, v8, :cond_1

    .line 216
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_1

    .line 218
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 223
    :pswitch_2
    if-lt v5, v7, :cond_2

    const/16 v6, 0x45

    if-gt v5, v6, :cond_2

    .line 224
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_1

    .line 225
    :cond_2
    const/16 v6, 0x46

    if-lt v5, v6, :cond_3

    const/16 v6, 0x57

    if-gt v5, v6, :cond_3

    .line 226
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_1

    .line 228
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 233
    :pswitch_3
    if-lt v5, v7, :cond_4

    const/16 v6, 0x4f

    if-gt v5, v6, :cond_4

    .line 234
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_1

    .line 235
    :cond_4
    if-ne v5, v8, :cond_5

    .line 236
    const/16 v2, 0x3a

    goto :goto_1

    .line 238
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 246
    .end local v2           #decodedChar:C
    .end local v5           #next:C
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 249
    .end local v0           #c:C
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 204
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
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
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    .line 120
    .local v8, width:I
    const/4 v7, 0x0

    .line 121
    .local v7, rowOffset:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 122
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, counterPosition:I
    const/4 v12, 0x6

    new-array v1, v12, [I

    .line 130
    .local v1, counters:[I
    move v5, v7

    .line 131
    .local v5, patternStart:I
    const/4 v3, 0x0

    .line 132
    .local v3, isWhite:Z
    array-length v4, v1

    .line 134
    .local v4, patternLength:I
    move v2, v7

    .local v2, i:I
    :goto_1
    if-ge v2, v8, :cond_7

    .line 135
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    .line 136
    .local v6, pixel:Z
    xor-int v12, v6, v3

    if-eqz v12, :cond_2

    .line 137
    aget v12, v1, v0

    add-int/lit8 v12, v12, 0x1

    aput v12, v1, v0

    .line 134
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
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

    .line 139
    .restart local v0       #counterPosition:I
    .restart local v1       #counters:[I
    .restart local v2       #i:I
    .restart local v3       #isWhite:Z
    .restart local v4       #patternLength:I
    .restart local v5       #patternStart:I
    .restart local v6       #pixel:Z
    :cond_2
    add-int/lit8 v12, v4, -0x1

    if-ne v0, v12, :cond_5

    .line 140
    invoke-static {v1}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v12

    sget v13, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v12, v13, :cond_3

    .line 141
    const/4 v12, 0x2

    new-array v12, v12, [I

    aput v5, v12, v11

    aput v2, v12, v10

    return-object v12

    .line 143
    :cond_3
    aget v12, v1, v11

    aget v13, v1, v10

    add-int/2addr v12, v13

    add-int/2addr v5, v12

    .line 144
    const/4 v9, 0x2

    .local v9, y:I
    :goto_3
    if-ge v9, v4, :cond_4

    .line 145
    add-int/lit8 v12, v9, -0x2

    aget v13, v1, v9

    aput v13, v1, v12

    .line 144
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 147
    :cond_4
    add-int/lit8 v12, v4, -0x2

    aput v11, v1, v12

    .line 148
    add-int/lit8 v12, v4, -0x1

    aput v11, v1, v12

    .line 149
    add-int/lit8 v0, v0, -0x1

    .line 153
    .end local v9           #y:I
    :goto_4
    aput v10, v1, v0

    .line 154
    if-nez v3, :cond_6

    move v3, v10

    :goto_5
    goto :goto_2

    .line 151
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v3, v11

    .line 154
    goto :goto_5

    .line 157
    .end local v6           #pixel:Z
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method

.method private static patternToChar(I)C
    .locals 2
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 189
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 190
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toPattern([I)I
    .locals 9
    .parameter "counters"

    .prologue
    .line 161
    array-length v2, p0

    .line 162
    .local v2, max:I
    const/4 v6, 0x0

    .line 163
    .local v6, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 164
    aget v7, p0, v0

    add-int/2addr v6, v7

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    const/4 v3, 0x0

    .line 167
    .local v3, pattern:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 168
    aget v7, p0, v0

    shl-int/lit8 v7, v7, 0x8

    mul-int/lit8 v7, v7, 0x9

    div-int v4, v7, v6

    .line 169
    .local v4, scaledShifted:I
    shr-int/lit8 v5, v4, 0x8

    .line 170
    .local v5, scaledUnshifted:I
    and-int/lit16 v7, v4, 0xff

    const/16 v8, 0x7f

    if-le v7, v8, :cond_1

    .line 171
    add-int/lit8 v5, v5, 0x1

    .line 173
    :cond_1
    const/4 v7, 0x1

    if-lt v5, v7, :cond_2

    const/4 v7, 0x4

    if-le v5, v7, :cond_4

    .line 174
    :cond_2
    const/4 v3, -0x1

    .line 184
    .end local v3           #pattern:I
    .end local v4           #scaledShifted:I
    .end local v5           #scaledUnshifted:I
    :cond_3
    return v3

    .line 176
    .restart local v3       #pattern:I
    .restart local v4       #scaledShifted:I
    .restart local v5       #scaledUnshifted:I
    :cond_4
    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_5

    .line 177
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v5, :cond_6

    .line 178
    shl-int/lit8 v7, v3, 0x1

    or-int/lit8 v3, v7, 0x1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v1           #j:I
    :cond_5
    shl-int/2addr v3, v5

    .line 167
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 20
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v13

    .line 59
    .local v13, start:[I
    const/4 v14, 0x1

    aget v8, v13, v14

    .line 60
    .local v8, nextStart:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 63
    .local v4, end:I
    :goto_0
    if-ge v8, v4, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 67
    :cond_0
    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v14, 0x14

    invoke-direct {v10, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 68
    .local v10, result:Ljava/lang/StringBuffer;
    const/4 v14, 0x6

    new-array v2, v14, [I

    .line 72
    .local v2, counters:[I
    :cond_1
    move-object/from16 v0, p2

    invoke-static {v0, v8, v2}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 73
    invoke-static {v2}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v9

    .line 74
    .local v9, pattern:I
    if-gez v9, :cond_2

    .line 75
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 77
    :cond_2
    invoke-static {v9}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v3

    .line 78
    .local v3, decodedChar:C
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    move v6, v8

    .line 80
    .local v6, lastStart:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v14, v2

    if-ge v5, v14, :cond_3

    .line 81
    aget v14, v2, v5

    add-int/2addr v8, v14

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    :cond_3
    :goto_2
    if-ge v8, v4, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 85
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 87
    :cond_4
    const/16 v14, 0x2a

    if-ne v3, v14, :cond_1

    .line 88
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 91
    if-eq v8, v4, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    if-nez v14, :cond_6

    .line 92
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 95
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    const/4 v15, 0x2

    if-ge v14, v15, :cond_7

    .line 97
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 100
    :cond_7
    invoke-static {v10}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/StringBuffer;)V

    .line 102
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 104
    invoke-static {v10}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, resultString:Ljava/lang/String;
    const/4 v14, 0x1

    aget v14, v13, v14

    const/4 v15, 0x0

    aget v15, v13, v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float v7, v14, v15

    .line 107
    .local v7, left:F
    add-int v14, v8, v6

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float v12, v14, v15

    .line 108
    .local v12, right:F
    new-instance v14, Lcom/google/zxing/Result;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    sget-object v17, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v11, v15, v0, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v14
.end method
