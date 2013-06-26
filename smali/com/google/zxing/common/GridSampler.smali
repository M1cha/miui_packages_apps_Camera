.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 10
    .parameter "image"
    .parameter "points"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 119
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 120
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 122
    .local v0, height:I
    const/4 v1, 0x1

    .line 123
    .local v1, nudged:Z
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_6

    if-eqz v1, :cond_6

    .line 124
    aget v6, p1, v2

    float-to-int v4, v6

    .line 125
    .local v4, x:I
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    .line 126
    .local v5, y:I
    if-lt v4, v8, :cond_0

    if-gt v4, v3, :cond_0

    if-lt v5, v8, :cond_0

    if-le v5, v0, :cond_1

    .line 127
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 129
    :cond_1
    const/4 v1, 0x0

    .line 130
    if-ne v4, v8, :cond_4

    .line 131
    aput v9, p1, v2

    .line 132
    const/4 v1, 0x1

    .line 137
    :cond_2
    :goto_1
    if-ne v5, v8, :cond_5

    .line 138
    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    .line 139
    const/4 v1, 0x1

    .line 123
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 133
    :cond_4
    if-ne v4, v3, :cond_2

    .line 134
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    .line 135
    const/4 v1, 0x1

    goto :goto_1

    .line 140
    :cond_5
    if-ne v5, v0, :cond_3

    .line 141
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    .line 142
    const/4 v1, 0x1

    goto :goto_2

    .line 146
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_6
    const/4 v1, 0x1

    .line 147
    array-length v6, p1

    add-int/lit8 v2, v6, -0x2

    :goto_3
    if-ltz v2, :cond_d

    if-eqz v1, :cond_d

    .line 148
    aget v6, p1, v2

    float-to-int v4, v6

    .line 149
    .restart local v4       #x:I
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    .line 150
    .restart local v5       #y:I
    if-lt v4, v8, :cond_7

    if-gt v4, v3, :cond_7

    if-lt v5, v8, :cond_7

    if-le v5, v0, :cond_8

    .line 151
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 153
    :cond_8
    const/4 v1, 0x0

    .line 154
    if-ne v4, v8, :cond_b

    .line 155
    aput v9, p1, v2

    .line 156
    const/4 v1, 0x1

    .line 161
    :cond_9
    :goto_4
    if-ne v5, v8, :cond_c

    .line 162
    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    .line 163
    const/4 v1, 0x1

    .line 147
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_3

    .line 157
    :cond_b
    if-ne v4, v3, :cond_9

    .line 158
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    .line 159
    const/4 v1, 0x1

    goto :goto_4

    .line 164
    :cond_c
    if-ne v5, v0, :cond_a

    .line 165
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    .line 166
    const/4 v1, 0x1

    goto :goto_5

    .line 169
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;ILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .parameter "image"
    .parameter "dimension"
    .parameter "transform"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
