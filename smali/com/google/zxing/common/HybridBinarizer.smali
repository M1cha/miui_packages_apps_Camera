.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 50
    return-void
.end method

.method private binarizeEntireImage()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x28

    .line 65
    iget-object v6, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v6, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v7

    .line 67
    .local v7, source:Lcom/google/zxing/LuminanceSource;
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v6

    if-lt v6, v8, :cond_3

    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v6

    if-lt v6, v8, :cond_3

    .line 68
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 69
    .local v0, luminances:[B
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v3

    .line 70
    .local v3, width:I
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v4

    .line 71
    .local v4, height:I
    shr-int/lit8 v1, v3, 0x3

    .line 72
    .local v1, subWidth:I
    and-int/lit8 v6, v3, 0x7

    if-eqz v6, :cond_0

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 75
    :cond_0
    shr-int/lit8 v2, v4, 0x3

    .line 76
    .local v2, subHeight:I
    and-int/lit8 v6, v4, 0x7

    if-eqz v6, :cond_1

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 79
    :cond_1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v5

    .line 81
    .local v5, blackPoints:[[I
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v6, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 82
    iget-object v6, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 88
    .end local v0           #luminances:[B
    .end local v1           #subWidth:I
    .end local v2           #subHeight:I
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #blackPoints:[[I
    .end local v7           #source:Lcom/google/zxing/LuminanceSource;
    :cond_2
    :goto_0
    return-void

    .line 85
    .restart local v7       #source:Lcom/google/zxing/LuminanceSource;
    :cond_3
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_0
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .locals 17
    .parameter "luminances"
    .parameter "subWidth"
    .parameter "subHeight"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 141
    move/from16 v0, p2

    move/from16 v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 142
    .local v3, blackPoints:[[I
    const/4 v12, 0x0

    .local v12, y:I
    :goto_0
    move/from16 v0, p2

    if-ge v12, v0, :cond_9

    .line 143
    shl-int/lit8 v13, v12, 0x3

    .line 144
    .local v13, yoffset:I
    add-int/lit8 v15, v13, 0x8

    move/from16 v0, p4

    if-lt v15, v0, :cond_0

    .line 145
    add-int/lit8 v13, p4, -0x8

    .line 147
    :cond_0
    const/4 v9, 0x0

    .local v9, x:I
    :goto_1
    move/from16 v0, p1

    if-ge v9, v0, :cond_8

    .line 148
    shl-int/lit8 v10, v9, 0x3

    .line 149
    .local v10, xoffset:I
    add-int/lit8 v15, v10, 0x8

    move/from16 v0, p3

    if-lt v15, v0, :cond_1

    .line 150
    add-int/lit8 v10, p3, -0x8

    .line 152
    :cond_1
    const/4 v8, 0x0

    .line 153
    .local v8, sum:I
    const/16 v5, 0xff

    .line 154
    .local v5, min:I
    const/4 v4, 0x0

    .line 155
    .local v4, max:I
    const/4 v14, 0x0

    .local v14, yy:I
    :goto_2
    const/16 v15, 0x8

    if-ge v14, v15, :cond_5

    .line 156
    add-int v15, v13, v14

    mul-int v15, v15, p3

    add-int v6, v15, v10

    .line 157
    .local v6, offset:I
    const/4 v11, 0x0

    .local v11, xx:I
    :goto_3
    const/16 v15, 0x8

    if-ge v11, v15, :cond_4

    .line 158
    add-int v15, v6, v11

    aget-byte v15, p0, v15

    and-int/lit16 v7, v15, 0xff

    .line 159
    .local v7, pixel:I
    add-int/2addr v8, v7

    .line 160
    if-ge v7, v5, :cond_2

    .line 161
    move v5, v7

    .line 163
    :cond_2
    if-le v7, v4, :cond_3

    .line 164
    move v4, v7

    .line 157
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 155
    .end local v7           #pixel:I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 173
    .end local v6           #offset:I
    .end local v11           #xx:I
    :cond_5
    sub-int v15, v4, v5

    const/16 v16, 0x18

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 174
    shr-int/lit8 v2, v8, 0x6

    .line 179
    .local v2, average:I
    :goto_4
    aget-object v15, v3, v12

    aput v2, v15, v9

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 177
    .end local v2           #average:I
    :cond_6
    if-nez v4, :cond_7

    const/4 v2, 0x1

    .restart local v2       #average:I
    :goto_5
    goto :goto_4

    .end local v2           #average:I
    :cond_7
    shr-int/lit8 v2, v5, 0x1

    goto :goto_5

    .line 142
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v8           #sum:I
    .end local v10           #xoffset:I
    .end local v14           #yy:I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 182
    .end local v9           #x:I
    .end local v13           #yoffset:I
    :cond_9
    return-object v3
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .locals 14
    .parameter "luminances"
    .parameter "subWidth"
    .parameter "subHeight"
    .parameter "width"
    .parameter "height"
    .parameter "blackPoints"
    .parameter "matrix"

    .prologue
    .line 95
    const/4 v12, 0x0

    .local v12, y:I
    :goto_0
    move/from16 v0, p2

    if-ge v12, v0, :cond_8

    .line 96
    shl-int/lit8 v3, v12, 0x3

    .line 97
    .local v3, yoffset:I
    add-int/lit8 v1, v3, 0x8

    move/from16 v0, p4

    if-lt v1, v0, :cond_0

    .line 98
    add-int/lit8 v3, p4, -0x8

    .line 100
    :cond_0
    const/4 v11, 0x0

    .local v11, x:I
    :goto_1
    if-ge v11, p1, :cond_7

    .line 101
    shl-int/lit8 v2, v11, 0x3

    .line 102
    .local v2, xoffset:I
    add-int/lit8 v1, v2, 0x8

    move/from16 v0, p3

    if-lt v1, v0, :cond_1

    .line 103
    add-int/lit8 v2, p3, -0x8

    .line 105
    :cond_1
    const/4 v1, 0x1

    if-le v11, v1, :cond_2

    move v8, v11

    .line 106
    .local v8, left:I
    :goto_2
    add-int/lit8 v1, p1, -0x2

    if-ge v8, v1, :cond_3

    .line 107
    :goto_3
    const/4 v1, 0x1

    if-le v12, v1, :cond_4

    move v10, v12

    .line 108
    .local v10, top:I
    :goto_4
    add-int/lit8 v1, p2, -0x2

    if-ge v10, v1, :cond_5

    .line 109
    :goto_5
    const/4 v9, 0x0

    .line 110
    .local v9, sum:I
    const/4 v13, -0x2

    .local v13, z:I
    :goto_6
    const/4 v1, 0x2

    if-gt v13, v1, :cond_6

    .line 111
    add-int v1, v10, v13

    aget-object v7, p5, v1

    .line 112
    .local v7, blackRow:[I
    add-int/lit8 v1, v8, -0x2

    aget v1, v7, v1

    add-int/2addr v9, v1

    .line 113
    add-int/lit8 v1, v8, -0x1

    aget v1, v7, v1

    add-int/2addr v9, v1

    .line 114
    aget v1, v7, v8

    add-int/2addr v9, v1

    .line 115
    add-int/lit8 v1, v8, 0x1

    aget v1, v7, v1

    add-int/2addr v9, v1

    .line 116
    add-int/lit8 v1, v8, 0x2

    aget v1, v7, v1

    add-int/2addr v9, v1

    .line 110
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 105
    .end local v7           #blackRow:[I
    .end local v8           #left:I
    .end local v9           #sum:I
    .end local v10           #top:I
    .end local v13           #z:I
    :cond_2
    const/4 v8, 0x2

    goto :goto_2

    .line 106
    .restart local v8       #left:I
    :cond_3
    add-int/lit8 v8, p1, -0x3

    goto :goto_3

    .line 107
    :cond_4
    const/4 v10, 0x2

    goto :goto_4

    .line 108
    .restart local v10       #top:I
    :cond_5
    add-int/lit8 v10, p2, -0x3

    goto :goto_5

    .line 118
    .restart local v9       #sum:I
    .restart local v13       #z:I
    :cond_6
    div-int/lit8 v4, v9, 0x19

    .local v4, average:I
    move-object v1, p0

    move/from16 v5, p3

    move-object/from16 v6, p6

    .line 119
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/common/HybridBinarizer;->threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V

    .line 100
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 95
    .end local v2           #xoffset:I
    .end local v4           #average:I
    .end local v8           #left:I
    .end local v9           #sum:I
    .end local v10           #top:I
    .end local v13           #z:I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 122
    .end local v3           #yoffset:I
    .end local v11           #x:I
    :cond_8
    return-void
.end method

.method private static threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 7
    .parameter "luminances"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "threshold"
    .parameter "stride"
    .parameter "matrix"

    .prologue
    const/16 v6, 0x8

    .line 127
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 128
    add-int v4, p2, v3

    mul-int/2addr v4, p4

    add-int v0, v4, p1

    .line 129
    .local v0, offset:I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 130
    add-int v4, v0, v2

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 131
    .local v1, pixel:I
    if-ge v1, p3, :cond_0

    .line 132
    add-int v4, p1, v2

    add-int v5, p2, v3

    invoke-virtual {p5, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    .end local v1           #pixel:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v0           #offset:I
    .end local v2           #x:I
    :cond_2
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1
    .parameter "source"

    .prologue
    .line 58
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/zxing/common/HybridBinarizer;->binarizeEntireImage()V

    .line 54
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method
