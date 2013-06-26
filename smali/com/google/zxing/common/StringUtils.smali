.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 36
    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Hashtable;)Ljava/lang/String;
    .locals 19
    .parameter "bytes"
    .parameter "hints"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    sget-object v17, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 52
    .local v5, characterSet:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 188
    .end local v5           #characterSet:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 57
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const/16 v17, 0x0

    aget-byte v17, p0, v17

    const/16 v18, -0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v17, 0x1

    aget-byte v17, p0, v17

    const/16 v18, -0x45

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v17, 0x2

    aget-byte v17, p0, v17

    const/16 v18, -0x41

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 61
    const-string v5, "UTF-8"

    goto :goto_0

    .line 70
    :cond_1
    move-object/from16 v0, p0

    array-length v8, v0

    .line 71
    .local v8, length:I
    const/4 v2, 0x1

    .line 72
    .local v2, canBeISO88591:Z
    const/4 v3, 0x1

    .line 73
    .local v3, canBeShiftJIS:Z
    const/4 v4, 0x1

    .line 74
    .local v4, canBeUTF8:Z
    const/4 v14, 0x0

    .line 75
    .local v14, utf8BytesLeft:I
    const/4 v9, 0x0

    .line 76
    .local v9, maybeDoubleByteCount:I
    const/4 v10, 0x0

    .line 77
    .local v10, maybeSingleByteKatakanaCount:I
    const/4 v12, 0x0

    .line 78
    .local v12, sawLatin1Supplement:Z
    const/4 v13, 0x0

    .line 79
    .local v13, sawUTF8Start:Z
    const/4 v7, 0x0

    .line 81
    .local v7, lastWasPossibleDoubleByteStart:Z
    const/4 v6, 0x0

    .line 82
    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_16

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_16

    .line 85
    :cond_2
    aget-byte v17, p0, v6

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .line 88
    .local v15, value:I
    const/16 v17, 0x80

    move/from16 v0, v17

    if-lt v15, v0, :cond_f

    const/16 v17, 0xbf

    move/from16 v0, v17

    if-gt v15, v0, :cond_f

    .line 89
    if-lez v14, :cond_3

    .line 90
    add-int/lit8 v14, v14, -0x1

    .line 108
    :cond_3
    const/16 v17, 0xc2

    move/from16 v0, v17

    if-eq v15, v0, :cond_4

    const/16 v17, 0xc3

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    :cond_4
    add-int/lit8 v17, v8, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_7

    .line 112
    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p0, v17

    move/from16 v0, v17

    and-int/lit16 v11, v0, 0xff

    .line 113
    .local v11, nextValue:I
    const/16 v17, 0xbf

    move/from16 v0, v17

    if-gt v11, v0, :cond_7

    const/16 v17, 0xc2

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    const/16 v17, 0xa0

    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    :cond_5
    const/16 v17, 0xc3

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    const/16 v17, 0x80

    move/from16 v0, v17

    if-lt v11, v0, :cond_7

    .line 115
    :cond_6
    const/4 v12, 0x1

    .line 118
    .end local v11           #nextValue:I
    :cond_7
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-lt v15, v0, :cond_8

    const/16 v17, 0x9f

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 119
    const/4 v2, 0x0

    .line 124
    :cond_8
    const/16 v17, 0xa1

    move/from16 v0, v17

    if-lt v15, v0, :cond_9

    const/16 v17, 0xdf

    move/from16 v0, v17

    if-gt v15, v0, :cond_9

    .line 126
    if-nez v7, :cond_9

    .line 127
    add-int/lit8 v10, v10, 0x1

    .line 130
    :cond_9
    if-nez v7, :cond_c

    const/16 v17, 0xf0

    move/from16 v0, v17

    if-lt v15, v0, :cond_a

    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v15, v0, :cond_b

    :cond_a
    const/16 v17, 0x80

    move/from16 v0, v17

    if-eq v15, v0, :cond_b

    const/16 v17, 0xa0

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 132
    :cond_b
    const/4 v3, 0x0

    .line 134
    :cond_c
    const/16 v17, 0x81

    move/from16 v0, v17

    if-lt v15, v0, :cond_d

    const/16 v17, 0x9f

    move/from16 v0, v17

    if-le v15, v0, :cond_e

    :cond_d
    const/16 v17, 0xe0

    move/from16 v0, v17

    if-lt v15, v0, :cond_15

    const/16 v17, 0xef

    move/from16 v0, v17

    if-gt v15, v0, :cond_15

    .line 137
    :cond_e
    if-eqz v7, :cond_11

    .line 142
    const/4 v7, 0x0

    .line 83
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 93
    :cond_f
    if-lez v14, :cond_10

    .line 94
    const/4 v4, 0x0

    .line 96
    :cond_10
    const/16 v17, 0xc0

    move/from16 v0, v17

    if-lt v15, v0, :cond_3

    const/16 v17, 0xfd

    move/from16 v0, v17

    if-gt v15, v0, :cond_3

    .line 97
    const/4 v13, 0x1

    .line 98
    move/from16 v16, v15

    .line 99
    .local v16, valueCopy:I
    :goto_3
    and-int/lit8 v17, v16, 0x40

    if-eqz v17, :cond_3

    .line 100
    add-int/lit8 v14, v14, 0x1

    .line 101
    shl-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 146
    .end local v16           #valueCopy:I
    :cond_11
    const/4 v7, 0x1

    .line 147
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-lt v6, v0, :cond_12

    .line 148
    const/4 v3, 0x0

    goto :goto_2

    .line 150
    :cond_12
    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p0, v17

    move/from16 v0, v17

    and-int/lit16 v11, v0, 0xff

    .line 151
    .restart local v11       #nextValue:I
    const/16 v17, 0x40

    move/from16 v0, v17

    if-lt v11, v0, :cond_13

    const/16 v17, 0xfc

    move/from16 v0, v17

    if-le v11, v0, :cond_14

    .line 152
    :cond_13
    const/4 v3, 0x0

    goto :goto_2

    .line 154
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 161
    .end local v11           #nextValue:I
    :cond_15
    const/4 v7, 0x0

    goto :goto_2

    .line 164
    .end local v15           #value:I
    :cond_16
    if-lez v14, :cond_17

    .line 165
    const/4 v4, 0x0

    .line 169
    :cond_17
    if-eqz v3, :cond_18

    sget-boolean v17, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-eqz v17, :cond_18

    .line 170
    const-string v5, "SJIS"

    goto/16 :goto_0

    .line 172
    :cond_18
    if-eqz v4, :cond_19

    if-eqz v13, :cond_19

    .line 173
    const-string v5, "UTF-8"

    goto/16 :goto_0

    .line 180
    :cond_19
    if-eqz v3, :cond_1b

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_1a

    mul-int/lit8 v17, v10, 0x14

    move/from16 v0, v17

    if-le v0, v8, :cond_1b

    .line 181
    :cond_1a
    const-string v5, "SJIS"

    goto/16 :goto_0

    .line 184
    :cond_1b
    if-nez v12, :cond_1c

    if-eqz v2, :cond_1c

    .line 185
    const-string v5, "ISO8859_1"

    goto/16 :goto_0

    .line 188
    :cond_1c
    sget-object v5, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0
.end method
