.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 39
    const/16 v0, 0x18

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "00"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "01"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "02"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "10"

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "11"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "12"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "13"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "15"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "17"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "20"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "21"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "22"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "30"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "37"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "90"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "91"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "92"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "93"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "94"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "95"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "96"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "97"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "98"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "99"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 75
    const/16 v0, 0x17

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "240"

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "241"

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "242"

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "250"

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "251"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "253"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "254"

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "400"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "401"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "402"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "403"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "410"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "411"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "412"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "413"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "414"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "420"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "421"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "422"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "423"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "424"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "425"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "426"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 104
    const/16 v0, 0x39

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "310"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "311"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "312"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "313"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "314"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "315"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "316"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "320"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "321"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "322"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "323"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "324"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "325"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "326"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "327"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "328"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "329"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "330"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "331"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "332"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "333"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "334"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "335"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "336"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "340"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "341"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "342"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "343"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "344"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "345"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "346"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "347"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "348"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "349"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "350"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "351"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "352"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "353"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "354"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "355"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "356"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "357"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "360"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "361"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "362"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "363"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "364"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "365"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "366"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "367"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "368"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "369"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "390"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "391"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "392"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "393"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "703"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "7001"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "7002"

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "7003"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "8001"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "8002"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "8003"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "8004"

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "8005"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "8006"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "8007"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "8008"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "8018"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "8020"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "8100"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "8101"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "8102"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "8110"

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "rawInformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 194
    const-string v4, ""

    .line 250
    :goto_0
    return-object v4

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_1

    .line 200
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 203
    :cond_1
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, firstTwoDigits:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 206
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v5

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    .line 208
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v4, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 210
    :cond_2
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v4, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 205
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 214
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_5

    .line 215
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 218
    :cond_5
    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, firstThreeDigits:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 221
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v4, v5, :cond_6

    .line 223
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v9, v4, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 225
    :cond_6
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v9, v4, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 220
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 230
    :cond_8
    const/4 v3, 0x0

    :goto_3
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_b

    .line 231
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 232
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v4, v5, :cond_9

    .line 233
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v8, v4, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 235
    :cond_9
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v8, v4, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 230
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 239
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_c

    .line 240
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 243
    :cond_c
    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, firstFourDigits:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_4
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_f

    .line 246
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 247
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v4, v5, :cond_d

    .line 248
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v8, v4, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 250
    :cond_d
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v8, v4, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 245
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 254
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "aiSize"
    .parameter "fieldSize"
    .parameter "rawInformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p0, :cond_0

    .line 259
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 262
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, ai:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, p0, p1

    if-ge v3, v4, :cond_1

    .line 265
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 268
    :cond_1
    add-int v3, p0, p1

    invoke-virtual {p2, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, field:Ljava/lang/String;
    add-int v3, p0, p1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, remaining:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "aiSize"
    .parameter "variableFieldSize"
    .parameter "rawInformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v4, 0x0

    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, ai:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, p0, p1

    if-ge v4, v5, :cond_0

    .line 277
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 281
    .local v2, maxSize:I
    :goto_0
    invoke-virtual {p2, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, field:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, remaining:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 279
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #maxSize:I
    .end local v3           #remaining:Ljava/lang/String;
    :cond_0
    add-int v2, p0, p1

    .restart local v2       #maxSize:I
    goto :goto_0
.end method
