.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# instance fields
.field protected final dataCharacterCounters:[I

.field protected final decodeFinderCounters:[I

.field protected final evenCounts:[I

.field protected final evenRoundingErrors:[F

.field protected final oddCounts:[I

.field protected final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 42
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    .line 43
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    .line 44
    return-void
.end method

.method protected static count([I)I
    .locals 3
    .parameter "array"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 60
    aget v2, p0, v1

    add-int/2addr v0, v2

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return v0
.end method

.method protected static decrement([I[F)V
    .locals 4
    .parameter "array"
    .parameter "errors"

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, index:I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 80
    .local v0, biggestError:F
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 81
    aget v3, p1, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    .line 82
    aget v0, p1, v1

    .line 83
    move v2, v1

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    aget v3, p0, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p0, v2

    .line 87
    return-void
.end method

.method protected static increment([I[F)V
    .locals 4
    .parameter "array"
    .parameter "errors"

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, index:I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 68
    .local v0, biggestError:F
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 69
    aget v3, p1, v1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 70
    aget v0, p1, v1

    .line 71
    move v2, v1

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    .line 75
    return-void
.end method

.method protected static isFinderPattern([I)Z
    .locals 11
    .parameter "counters"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 90
    aget v9, p0, v8

    aget v10, p0, v7

    add-int v1, v9, v10

    .line 91
    .local v1, firstTwoSum:I
    const/4 v9, 0x2

    aget v9, p0, v9

    add-int/2addr v9, v1

    const/4 v10, 0x3

    aget v10, p0, v10

    add-int v6, v9, v10

    .line 92
    .local v6, sum:I
    int-to-float v9, v1

    int-to-float v10, v6

    div-float v5, v9, v10

    .line 93
    .local v5, ratio:F
    const v9, 0x3f4aaaab

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_4

    const v9, 0x3f649249

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_4

    .line 95
    const v4, 0x7fffffff

    .line 96
    .local v4, minCounter:I
    const/high16 v3, -0x8000

    .line 97
    .local v3, maxCounter:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, p0

    if-ge v2, v9, :cond_2

    .line 98
    aget v0, p0, v2

    .line 99
    .local v0, counter:I
    if-le v0, v3, :cond_0

    .line 100
    move v3, v0

    .line 102
    :cond_0
    if-ge v0, v4, :cond_1

    .line 103
    move v4, v0

    .line 97
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v0           #counter:I
    :cond_2
    mul-int/lit8 v9, v4, 0xa

    if-ge v3, v9, :cond_3

    .line 108
    .end local v2           #i:I
    .end local v3           #maxCounter:I
    .end local v4           #minCounter:I
    :goto_1
    return v7

    .restart local v2       #i:I
    .restart local v3       #maxCounter:I
    .restart local v4       #minCounter:I
    :cond_3
    move v7, v8

    .line 106
    goto :goto_1

    .end local v2           #i:I
    .end local v3           #maxCounter:I
    .end local v4           #minCounter:I
    :cond_4
    move v7, v8

    .line 108
    goto :goto_1
.end method

.method protected static parseFinderValue([I[[I)I
    .locals 3
    .parameter "counters"
    .parameter "finderPatterns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, value:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 49
    aget-object v1, p1, v0

    const/16 v2, 0x66

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[II)I

    move-result v1

    const/16 v2, 0x33

    if-ge v1, v2, :cond_0

    .line 51
    return v0

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
