.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static combins(II)I
    .locals 6
    .parameter "n"
    .parameter "r"

    .prologue
    .line 103
    sub-int v5, p0, p1

    if-le v5, p1, :cond_1

    .line 104
    move v3, p1

    .line 105
    .local v3, minDenom:I
    sub-int v2, p0, p1

    .line 110
    .local v2, maxDenom:I
    :goto_0
    const/4 v4, 0x1

    .line 111
    .local v4, val:I
    const/4 v1, 0x1

    .line 112
    .local v1, j:I
    move v0, p0

    .local v0, i:I
    :goto_1
    if-le v0, v2, :cond_2

    .line 113
    mul-int/2addr v4, v0

    .line 114
    if-gt v1, v3, :cond_0

    .line 115
    div-int/2addr v4, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 107
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #maxDenom:I
    .end local v3           #minDenom:I
    .end local v4           #val:I
    :cond_1
    sub-int v3, p0, p1

    .line 108
    .restart local v3       #minDenom:I
    move v2, p1

    .restart local v2       #maxDenom:I
    goto :goto_0

    .line 119
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v4       #val:I
    :cond_2
    :goto_2
    if-gt v1, v3, :cond_3

    .line 120
    div-int/2addr v4, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    :cond_3
    return v4
.end method

.method public static getRSSvalue([IIZ)I
    .locals 13
    .parameter "widths"
    .parameter "maxWidth"
    .parameter "noNarrow"

    .prologue
    const/4 v12, 0x1

    .line 65
    array-length v1, p0

    .line 66
    .local v1, elements:I
    const/4 v6, 0x0

    .line 67
    .local v6, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 68
    aget v10, p0, v3

    add-int/2addr v6, v10

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const/4 v9, 0x0

    .line 71
    .local v9, val:I
    const/4 v7, 0x0

    .line 72
    .local v7, narrowMask:I
    const/4 v0, 0x0

    .local v0, bar:I
    :goto_1
    add-int/lit8 v10, v1, -0x1

    if-ge v0, v10, :cond_6

    .line 74
    const/4 v2, 0x1

    .local v2, elmWidth:I
    shl-int v10, v12, v0

    or-int/2addr v7, v10

    .line 75
    :goto_2
    aget v10, p0, v0

    if-ge v2, v10, :cond_5

    .line 77
    sub-int v10, v6, v2

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v8

    .line 78
    .local v8, subVal:I
    if-eqz p2, :cond_1

    if-nez v7, :cond_1

    sub-int v10, v6, v2

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_1

    .line 80
    sub-int v10, v6, v2

    sub-int v11, v1, v0

    sub-int/2addr v10, v11

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    sub-int/2addr v8, v10

    .line 83
    :cond_1
    sub-int v10, v1, v0

    add-int/lit8 v10, v10, -0x1

    if-le v10, v12, :cond_4

    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, lessVal:I
    sub-int v10, v6, v2

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    sub-int v5, v10, v11

    .line 86
    .local v5, mxwElement:I
    :goto_3
    if-le v5, p1, :cond_2

    .line 87
    sub-int v10, v6, v2

    sub-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x3

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    add-int/2addr v4, v10

    .line 86
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 90
    :cond_2
    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v10, v0

    mul-int/2addr v10, v4

    sub-int/2addr v8, v10

    .line 94
    .end local v4           #lessVal:I
    .end local v5           #mxwElement:I
    :cond_3
    :goto_4
    add-int/2addr v9, v8

    .line 76
    add-int/lit8 v2, v2, 0x1

    shl-int v10, v12, v0

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v7, v10

    goto :goto_2

    .line 91
    :cond_4
    sub-int v10, v6, v2

    if-le v10, p1, :cond_3

    .line 92
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 96
    .end local v8           #subVal:I
    :cond_5
    sub-int/2addr v6, v2

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v2           #elmWidth:I
    :cond_6
    return v9
.end method
