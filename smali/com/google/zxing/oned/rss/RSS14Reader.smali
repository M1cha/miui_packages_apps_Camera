.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/Vector;

.field private final possibleRightPairs:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 36
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 40
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    .line 36
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xc1t 0x3t 0x0t 0x0t
        0xdft 0x7t 0x0t 0x0t
        0x9bt 0xat 0x0t 0x0t
    .end array-data

    .line 39
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xect 0x5t 0x0t 0x0t
    .end array-data

    .line 40
    :array_4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    .line 61
    return-void
.end method

.method private static addOrTally(Ljava/util/Vector;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .parameter "possiblePairs"
    .parameter "pair"

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 93
    .local v0, e:Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 94
    .local v1, found:Z
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/Pair;

    .line 96
    .local v2, other:Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 97
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 98
    const/4 v1, 0x1

    .line 102
    .end local v2           #other:Lcom/google/zxing/oned/rss/Pair;
    :cond_3
    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 11
    .parameter "outsideChar"
    .parameter "numModules"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v9, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    invoke-static {v9}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v8

    .line 380
    .local v8, oddSum:I
    iget-object v9, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    invoke-static {v9}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v3

    .line 381
    .local v3, evenSum:I
    add-int v9, v8, v3

    sub-int v6, v9, p2

    .line 382
    .local v6, mismatch:I
    and-int/lit8 v10, v8, 0x1

    if-eqz p1, :cond_2

    const/4 v9, 0x1

    :goto_0
    if-ne v10, v9, :cond_3

    const/4 v7, 0x1

    .line 383
    .local v7, oddParityBad:Z
    :goto_1
    and-int/lit8 v9, v3, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v2, 0x1

    .line 385
    .local v2, evenParityBad:Z
    :goto_2
    const/4 v5, 0x0

    .line 386
    .local v5, incrementOdd:Z
    const/4 v1, 0x0

    .line 387
    .local v1, decrementOdd:Z
    const/4 v4, 0x0

    .line 388
    .local v4, incrementEven:Z
    const/4 v0, 0x0

    .line 390
    .local v0, decrementEven:Z
    if-eqz p1, :cond_7

    .line 391
    const/16 v9, 0xc

    if-le v8, v9, :cond_5

    .line 392
    const/4 v1, 0x1

    .line 396
    :cond_0
    :goto_3
    const/16 v9, 0xc

    if-le v3, v9, :cond_6

    .line 397
    const/4 v0, 0x1

    .line 426
    :cond_1
    :goto_4
    const/4 v9, 0x1

    if-ne v6, v9, :cond_f

    .line 427
    if-eqz v7, :cond_d

    .line 428
    if-eqz v2, :cond_b

    .line 429
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 382
    .end local v0           #decrementEven:Z
    .end local v1           #decrementOdd:Z
    .end local v2           #evenParityBad:Z
    .end local v4           #incrementEven:Z
    .end local v5           #incrementOdd:Z
    .end local v7           #oddParityBad:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 383
    .restart local v7       #oddParityBad:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 393
    .restart local v0       #decrementEven:Z
    .restart local v1       #decrementOdd:Z
    .restart local v2       #evenParityBad:Z
    .restart local v4       #incrementEven:Z
    .restart local v5       #incrementOdd:Z
    :cond_5
    const/4 v9, 0x4

    if-ge v8, v9, :cond_0

    .line 394
    const/4 v5, 0x1

    goto :goto_3

    .line 398
    :cond_6
    const/4 v9, 0x4

    if-ge v3, v9, :cond_1

    .line 399
    const/4 v4, 0x1

    goto :goto_4

    .line 402
    :cond_7
    const/16 v9, 0xb

    if-le v8, v9, :cond_9

    .line 403
    const/4 v1, 0x1

    .line 407
    :cond_8
    :goto_5
    const/16 v9, 0xa

    if-le v3, v9, :cond_a

    .line 408
    const/4 v0, 0x1

    goto :goto_4

    .line 404
    :cond_9
    const/4 v9, 0x5

    if-ge v8, v9, :cond_8

    .line 405
    const/4 v5, 0x1

    goto :goto_5

    .line 409
    :cond_a
    const/4 v9, 0x4

    if-ge v3, v9, :cond_1

    .line 410
    const/4 v4, 0x1

    goto :goto_4

    .line 431
    :cond_b
    const/4 v1, 0x1

    .line 473
    :cond_c
    :goto_6
    if-eqz v5, :cond_19

    .line 474
    if-eqz v1, :cond_18

    .line 475
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 433
    :cond_d
    if-nez v2, :cond_e

    .line 434
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 436
    :cond_e
    const/4 v0, 0x1

    goto :goto_6

    .line 438
    :cond_f
    const/4 v9, -0x1

    if-ne v6, v9, :cond_13

    .line 439
    if-eqz v7, :cond_11

    .line 440
    if-eqz v2, :cond_10

    .line 441
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 443
    :cond_10
    const/4 v5, 0x1

    goto :goto_6

    .line 445
    :cond_11
    if-nez v2, :cond_12

    .line 446
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 448
    :cond_12
    const/4 v4, 0x1

    goto :goto_6

    .line 450
    :cond_13
    if-nez v6, :cond_17

    .line 451
    if-eqz v7, :cond_16

    .line 452
    if-nez v2, :cond_14

    .line 453
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 456
    :cond_14
    if-ge v8, v3, :cond_15

    .line 457
    const/4 v5, 0x1

    .line 458
    const/4 v0, 0x1

    goto :goto_6

    .line 460
    :cond_15
    const/4 v1, 0x1

    .line 461
    const/4 v4, 0x1

    goto :goto_6

    .line 464
    :cond_16
    if-eqz v2, :cond_c

    .line 465
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 470
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 477
    :cond_18
    iget-object v9, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    iget-object v10, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 479
    :cond_19
    if-eqz v1, :cond_1a

    .line 480
    iget-object v9, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    iget-object v10, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 482
    :cond_1a
    if-eqz v4, :cond_1c

    .line 483
    if-eqz v0, :cond_1b

    .line 484
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 486
    :cond_1b
    iget-object v9, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    iget-object v10, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 488
    :cond_1c
    if-eqz v0, :cond_1d

    .line 489
    iget-object v9, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    iget-object v10, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 492
    :cond_1d
    return-void
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 7
    .parameter "leftPair"
    .parameter "rightPair"

    .prologue
    const/16 v6, 0x8

    .line 143
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    .line 144
    .local v1, leftFPValue:I
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    .line 145
    .local v2, rightFPValue:I
    if-nez v1, :cond_0

    if-eq v2, v6, :cond_1

    :cond_0
    if-ne v1, v6, :cond_1

    if-nez v2, :cond_1

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    rem-int/lit8 v0, v4, 0x4f

    .line 149
    .local v0, checkValue:I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v5

    add-int v3, v4, v5

    .line 151
    .local v3, targetCheckValue:I
    const/16 v4, 0x48

    if-le v3, v4, :cond_2

    .line 152
    add-int/lit8 v3, v3, -0x1

    .line 154
    :cond_2
    if-le v3, v6, :cond_3

    .line 155
    add-int/lit8 v3, v3, -0x1

    .line 157
    :cond_3
    if-ne v0, v3, :cond_4

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 15
    .parameter "leftPair"
    .parameter "rightPair"

    .prologue
    .line 113
    const-wide/32 v9, 0x453af5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v11

    int-to-long v11, v11

    mul-long/2addr v9, v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v11

    int-to-long v11, v11

    add-long v6, v9, v11

    .line 114
    .local v6, symbolValue:J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, text:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v9, 0xe

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 117
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    rsub-int/lit8 v3, v9, 0xd

    .local v3, i:I
    :goto_0
    if-lez v3, :cond_0

    .line 118
    const/16 v9, 0x30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, checkDigit:I
    const/4 v3, 0x0

    :goto_1
    const/16 v9, 0xd

    if-ge v3, v9, :cond_2

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    add-int/lit8 v2, v9, -0x30

    .line 125
    .local v2, digit:I
    and-int/lit8 v9, v3, 0x1

    if-nez v9, :cond_1

    mul-int/lit8 v2, v2, 0x3

    .end local v2           #digit:I
    :cond_1
    add-int/2addr v1, v2

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_2
    rem-int/lit8 v9, v1, 0xa

    rsub-int/lit8 v1, v9, 0xa

    .line 128
    const/16 v9, 0xa

    if-ne v1, v9, :cond_3

    .line 129
    const/4 v1, 0x0

    .line 131
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 134
    .local v4, leftPoints:[Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 135
    .local v5, rightPoints:[Lcom/google/zxing/ResultPoint;
    new-instance v9, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v4, v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v4, v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    aget-object v14, v5, v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x1

    aget-object v14, v5, v14

    aput-object v14, v12, v13

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->RSS14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v9
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 31
    .parameter "row"
    .parameter "pattern"
    .parameter "outsideChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 191
    .local v5, counters:[I
    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 192
    const/16 v29, 0x1

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 193
    const/16 v29, 0x2

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 194
    const/16 v29, 0x3

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 195
    const/16 v29, 0x4

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 196
    const/16 v29, 0x5

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 197
    const/16 v29, 0x6

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 198
    const/16 v29, 0x7

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 200
    if-eqz p3, :cond_2

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 212
    :cond_0
    if-eqz p3, :cond_3

    const/16 v16, 0x10

    .line 213
    .local v16, numModules:I
    :goto_0
    invoke-static {v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v6, v29, v30

    .line 215
    .local v6, elementWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    move-object/from16 v18, v0

    .line 216
    .local v18, oddCounts:[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    .line 217
    .local v8, evenCounts:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    move-object/from16 v19, v0

    .line 218
    .local v19, oddRoundingErrors:[F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 220
    .local v9, evenRoundingErrors:[F
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v14, v0, :cond_6

    .line 221
    aget v29, v5, v14

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v29, v6

    .line 222
    .local v28, value:F
    const/high16 v29, 0x3f00

    add-float v29, v29, v28

    move/from16 v0, v29

    float-to-int v4, v0

    .line 223
    .local v4, count:I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ge v4, v0, :cond_4

    .line 224
    const/4 v4, 0x1

    .line 228
    :cond_1
    :goto_2
    shr-int/lit8 v22, v14, 0x1

    .line 229
    .local v22, offset:I
    and-int/lit8 v29, v14, 0x1

    if-nez v29, :cond_5

    .line 230
    aput v4, v18, v22

    .line 231
    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v19, v22

    .line 220
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 203
    .end local v4           #count:I
    .end local v6           #elementWidth:F
    .end local v8           #evenCounts:[I
    .end local v9           #evenRoundingErrors:[F
    .end local v14           #i:I
    .end local v16           #numModules:I
    .end local v18           #oddCounts:[I
    .end local v19           #oddRoundingErrors:[F
    .end local v22           #offset:I
    .end local v28           #value:F
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 205
    const/4 v14, 0x0

    .restart local v14       #i:I
    array-length v0, v5

    move/from16 v29, v0

    add-int/lit8 v15, v29, -0x1

    .local v15, j:I
    :goto_4
    if-ge v14, v15, :cond_0

    .line 206
    aget v25, v5, v14

    .line 207
    .local v25, temp:I
    aget v29, v5, v15

    aput v29, v5, v14

    .line 208
    aput v25, v5, v15

    .line 205
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 212
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v25           #temp:I
    :cond_3
    const/16 v16, 0xf

    goto :goto_0

    .line 225
    .restart local v4       #count:I
    .restart local v6       #elementWidth:F
    .restart local v8       #evenCounts:[I
    .restart local v9       #evenRoundingErrors:[F
    .restart local v14       #i:I
    .restart local v16       #numModules:I
    .restart local v18       #oddCounts:[I
    .restart local v19       #oddRoundingErrors:[F
    .restart local v28       #value:F
    :cond_4
    const/16 v29, 0x8

    move/from16 v0, v29

    if-le v4, v0, :cond_1

    .line 226
    const/16 v4, 0x8

    goto :goto_2

    .line 233
    .restart local v22       #offset:I
    :cond_5
    aput v4, v8, v22

    .line 234
    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v9, v22

    goto :goto_3

    .line 238
    .end local v4           #count:I
    .end local v22           #offset:I
    .end local v28           #value:F
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 240
    const/16 v20, 0x0

    .line 241
    .local v20, oddSum:I
    const/16 v17, 0x0

    .line 242
    .local v17, oddChecksumPortion:I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_5
    if-ltz v14, :cond_7

    .line 243
    mul-int/lit8 v17, v17, 0x9

    .line 244
    aget v29, v18, v14

    add-int v17, v17, v29

    .line 245
    aget v29, v18, v14

    add-int v20, v20, v29

    .line 242
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 247
    :cond_7
    const/4 v7, 0x0

    .line 248
    .local v7, evenChecksumPortion:I
    const/4 v10, 0x0

    .line 249
    .local v10, evenSum:I
    array-length v0, v8

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_6
    if-ltz v14, :cond_8

    .line 250
    mul-int/lit8 v7, v7, 0x9

    .line 251
    aget v29, v8, v14

    add-int v7, v7, v29

    .line 252
    aget v29, v8, v14

    add-int v10, v10, v29

    .line 249
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 254
    :cond_8
    mul-int/lit8 v29, v7, 0x3

    add-int v3, v17, v29

    .line 256
    .local v3, checksumPortion:I
    if-eqz p3, :cond_b

    .line 257
    and-int/lit8 v29, v20, 0x1

    if-nez v29, :cond_9

    const/16 v29, 0xc

    move/from16 v0, v20

    move/from16 v1, v29

    if-gt v0, v1, :cond_9

    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 258
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    .line 260
    :cond_a
    rsub-int/lit8 v29, v20, 0xc

    div-int/lit8 v13, v29, 0x2

    .line 261
    .local v13, group:I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    .line 262
    .local v21, oddWidest:I
    rsub-int/lit8 v11, v21, 0x9

    .line 263
    .local v11, evenWidest:I
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 264
    .local v27, vOdd:I
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 265
    .local v26, vEven:I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v23, v29, v13

    .line 266
    .local v23, tEven:I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v12, v29, v13

    .line 267
    .local v12, gSum:I
    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v27, v23

    add-int v30, v30, v26

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 279
    .end local v23           #tEven:I
    :goto_7
    return-object v29

    .line 269
    .end local v11           #evenWidest:I
    .end local v12           #gSum:I
    .end local v13           #group:I
    .end local v21           #oddWidest:I
    .end local v26           #vEven:I
    .end local v27           #vOdd:I
    :cond_b
    and-int/lit8 v29, v10, 0x1

    if-nez v29, :cond_c

    const/16 v29, 0xa

    move/from16 v0, v29

    if-gt v10, v0, :cond_c

    const/16 v29, 0x4

    move/from16 v0, v29

    if-ge v10, v0, :cond_d

    .line 270
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    .line 272
    :cond_d
    rsub-int/lit8 v29, v10, 0xa

    div-int/lit8 v13, v29, 0x2

    .line 273
    .restart local v13       #group:I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    .line 274
    .restart local v21       #oddWidest:I
    rsub-int/lit8 v11, v21, 0x9

    .line 275
    .restart local v11       #evenWidest:I
    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 276
    .restart local v27       #vOdd:I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 277
    .restart local v26       #vEven:I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v24, v29, v13

    .line 278
    .local v24, tOdd:I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v12, v29, v13

    .line 279
    .restart local v12       #gSum:I
    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v26, v24

    add-int v30, v30, v27

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    goto :goto_7
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Hashtable;)Lcom/google/zxing/oned/rss/Pair;
    .locals 11
    .parameter "row"
    .parameter "right"
    .parameter "rowNumber"
    .parameter "hints"

    .prologue
    .line 162
    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, p1, v7, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v6

    .line 163
    .local v6, startEnd:[I
    invoke-direct {p0, p1, p3, p2, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    .line 165
    .local v3, pattern:Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez p4, :cond_2

    const/4 v5, 0x0

    .line 168
    .local v5, resultPointCallback:Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-eqz v5, :cond_1

    .line 169
    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float v0, v7, v8

    .line 170
    .local v0, center:F
    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    sub-float v0, v7, v0

    .line 174
    :cond_0
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v7, v0, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v5, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 177
    .end local v0           #center:F
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, p1, v3, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    .line 178
    .local v2, outside:Lcom/google/zxing/oned/rss/DataCharacter;
    const/4 v7, 0x0

    invoke-direct {p0, p1, v3, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v1

    .line 179
    .local v1, inside:Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v7, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x63d

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    invoke-direct {v7, v8, v9, v3}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    .line 183
    .end local v1           #inside:Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v2           #outside:Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v3           #pattern:Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v5           #resultPointCallback:Lcom/google/zxing/ResultPointCallback;
    .end local v6           #startEnd:[I
    :goto_1
    return-object v7

    .line 165
    .restart local v3       #pattern:Lcom/google/zxing/oned/rss/FinderPattern;
    .restart local v6       #startEnd:[I
    :cond_2
    sget-object v7, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/ResultPointCallback;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    goto :goto_0

    .line 182
    .end local v3           #pattern:Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v6           #startEnd:[I
    :catch_0
    move-exception v4

    .line 183
    .local v4, re:Lcom/google/zxing/NotFoundException;
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .locals 9
    .parameter "row"
    .parameter "rowOffset"
    .parameter "rightFinderPattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    .line 288
    .local v1, counters:[I
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 289
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 290
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 291
    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 293
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 294
    .local v5, width:I
    const/4 v2, 0x0

    .line 295
    .local v2, isWhite:Z
    :goto_0
    if-ge p2, v5, :cond_0

    .line 296
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v2, 0x1

    .line 297
    :goto_1
    if-ne p3, v2, :cond_2

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, counterPosition:I
    move v3, p2

    .line 306
    .local v3, patternStart:I
    move v6, p2

    .local v6, x:I
    :goto_2
    if-ge v6, v5, :cond_7

    .line 307
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    .line 308
    .local v4, pixel:Z
    xor-int v7, v4, v2

    if-eqz v7, :cond_3

    .line 309
    aget v7, v1, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v0

    .line 306
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 296
    .end local v0           #counterPosition:I
    .end local v3           #patternStart:I
    .end local v4           #pixel:Z
    .end local v6           #x:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 301
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 311
    .restart local v0       #counterPosition:I
    .restart local v3       #patternStart:I
    .restart local v4       #pixel:Z
    .restart local v6       #x:I
    :cond_3
    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    .line 312
    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 313
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v6, v7, v8

    return-object v7

    .line 315
    :cond_4
    const/4 v7, 0x0

    aget v7, v1, v7

    const/4 v8, 0x1

    aget v8, v1, v8

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 316
    const/4 v7, 0x0

    const/4 v8, 0x2

    aget v8, v1, v8

    aput v8, v1, v7

    .line 317
    const/4 v7, 0x1

    const/4 v8, 0x3

    aget v8, v1, v8

    aput v8, v1, v7

    .line 318
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 319
    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 320
    add-int/lit8 v0, v0, -0x1

    .line 324
    :goto_4
    const/4 v7, 0x1

    aput v7, v1, v0

    .line 325
    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_5
    goto :goto_3

    .line 322
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 325
    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    .line 328
    .end local v4           #pixel:Z
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 12
    .parameter "row"
    .parameter "rowNumber"
    .parameter "right"
    .parameter "startEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x0

    aget v0, p4, v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    .line 336
    .local v9, firstIsBlack:Z
    const/4 v0, 0x0

    aget v0, p4, v0

    add-int/lit8 v8, v0, -0x1

    .line 338
    .local v8, firstElementStart:I
    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    xor-int/2addr v0, v9

    if-eqz v0, :cond_0

    .line 339
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 341
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 342
    const/4 v0, 0x0

    aget v0, p4, v0

    sub-int v7, v0, v8

    .line 344
    .local v7, firstCounter:I
    iget-object v6, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    .line 345
    .local v6, counters:[I
    array-length v0, v6

    add-int/lit8 v10, v0, -0x1

    .local v10, i:I
    :goto_1
    if-lez v10, :cond_1

    .line 346
    add-int/lit8 v0, v10, -0x1

    aget v0, v6, v0

    aput v0, v6, v10

    .line 345
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 348
    :cond_1
    const/4 v0, 0x0

    aput v7, v6, v0

    .line 349
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v1

    .line 350
    .local v1, value:I
    move v3, v8

    .line 351
    .local v3, start:I
    const/4 v0, 0x1

    aget v4, p4, v0

    .line 352
    .local v4, end:I
    if-eqz p3, :cond_2

    .line 354
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v3

    .line 355
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    .line 357
    :cond_2
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v5, 0x0

    aput v8, v2, v5

    const/4 v5, 0x1

    const/4 v11, 0x1

    aget v11, p4, v11

    aput v11, v2, v5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 10
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 64
    const/4 v8, 0x0

    invoke-direct {p0, p2, v8, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Hashtable;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v2

    .line 65
    .local v2, leftPair:Lcom/google/zxing/oned/rss/Pair;
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    invoke-static {v8, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Vector;Lcom/google/zxing/oned/rss/Pair;)V

    .line 66
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 67
    invoke-direct {p0, p2, v9, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Hashtable;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v7

    .line 68
    .local v7, rightPair:Lcom/google/zxing/oned/rss/Pair;
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    invoke-static {v8, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Vector;Lcom/google/zxing/oned/rss/Pair;)V

    .line 69
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 70
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 71
    .local v3, numLeftPairs:I
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v4

    .line 72
    .local v4, numRightPairs:I
    const/4 v0, 0x0

    .local v0, l:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 73
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    .line 74
    .local v1, left:Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v8

    if-le v8, v9, :cond_1

    .line 75
    const/4 v5, 0x0

    .local v5, r:I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 76
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/Pair;

    .line 77
    .local v6, right:Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v8

    if-le v8, v9, :cond_0

    .line 78
    invoke-static {v1, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 79
    invoke-static {v1, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v8

    return-object v8

    .line 75
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    .end local v5           #r:I
    .end local v6           #right:Lcom/google/zxing/oned/rss/Pair;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1           #left:Lcom/google/zxing/oned/rss/Pair;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 109
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 110
    return-void
.end method
