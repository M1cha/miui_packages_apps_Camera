.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/detector/Detector$1;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    }
.end annotation


# static fields
.field private static final INTEGERS:[Ljava/lang/Integer;


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 51
    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    .line 52
    return-void
.end method

.method private correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
    .locals 12
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "dimension"

    .prologue
    .line 180
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v9

    int-to-float v9, v9

    move/from16 v0, p5

    int-to-float v10, v0

    div-float v3, v9, v10

    .line 181
    .local v3, corr:F
    invoke-static/range {p3 .. p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    .line 182
    .local v7, norm:I
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v4, v9, v10

    .line 183
    .local v4, cos:F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 185
    .local v8, sin:F
    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    mul-float v10, v3, v4

    add-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    invoke-direct {v1, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 187
    .local v1, c1:Lcom/google/zxing/ResultPoint;
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v9

    int-to-float v9, v9

    move/from16 v0, p5

    int-to-float v10, v0

    div-float v3, v9, v10

    .line 188
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    .line 189
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v4, v9, v10

    .line 190
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 192
    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    mul-float v10, v3, v4

    add-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    invoke-direct {v2, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 194
    .local v2, c2:Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 195
    invoke-direct {p0, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 210
    .end local v2           #c2:Lcom/google/zxing/ResultPoint;
    :cond_0
    :goto_0
    return-object v2

    .line 198
    .restart local v2       #c2:Lcom/google/zxing/ResultPoint;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 199
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v2, v1

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    invoke-direct {p0, p3, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    invoke-direct {p0, p2, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 204
    .local v5, l1:I
    invoke-direct {p0, p3, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    invoke-direct {p0, p2, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 206
    .local v6, l2:I
    if-gt v5, v6, :cond_0

    move-object v2, v1

    .line 207
    goto :goto_0
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/detector/Detector;->round(F)I

    move-result v0

    return v0
.end method

.method private static increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V
    .locals 3
    .parameter "table"
    .parameter "key"

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 237
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void

    .line 237
    :cond_0
    sget-object v1, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v1, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v1, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static round(F)I
    .locals 1
    .parameter "d"

    .prologue
    .line 222
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .parameter "image"
    .parameter "topLeft"
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "topRight"
    .parameter "dimension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 249
    .local v1, sampler:Lcom/google/zxing/common/GridSampler;
    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v6, v2, v3

    const/high16 v7, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v8, v2, v3

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v9, v2, v3

    const/high16 v10, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v11, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    move-object/from16 v2, p0

    move/from16 v3, p5

    invoke-virtual/range {v1 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .locals 23
    .parameter "from"
    .parameter "to"

    .prologue
    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v7, v0

    .line 275
    .local v7, fromX:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .line 276
    .local v8, fromY:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 277
    .local v13, toX:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 278
    .local v14, toY:I
    sub-int v20, v14, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    sub-int v21, v13, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/4 v11, 0x1

    .line 279
    .local v11, steep:Z
    :goto_0
    if-eqz v11, :cond_0

    .line 280
    move v12, v7

    .line 281
    .local v12, temp:I
    move v7, v8

    .line 282
    move v8, v12

    .line 283
    move v12, v13

    .line 284
    move v13, v14

    .line 285
    move v14, v12

    .line 288
    .end local v12           #temp:I
    :cond_0
    sub-int v20, v13, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 289
    .local v4, dx:I
    sub-int v20, v14, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 290
    .local v5, dy:I
    neg-int v0, v4

    move/from16 v20, v0

    shr-int/lit8 v6, v20, 0x1

    .line 291
    .local v6, error:I
    if-ge v8, v14, :cond_4

    const/16 v19, 0x1

    .line 292
    .local v19, ystep:I
    :goto_1
    if-ge v7, v13, :cond_5

    const/16 v17, 0x1

    .line 293
    .local v17, xstep:I
    :goto_2
    const/4 v15, 0x0

    .line 294
    .local v15, transitions:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v22, v0

    if-eqz v11, :cond_6

    move/from16 v21, v8

    :goto_3
    if-eqz v11, :cond_7

    move/from16 v20, v7

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    .line 295
    .local v9, inBlack:Z
    move/from16 v16, v7

    .local v16, x:I
    move/from16 v18, v8

    .local v18, y:I
    :goto_5
    move/from16 v0, v16

    if-eq v0, v13, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v22, v0

    if-eqz v11, :cond_8

    move/from16 v21, v18

    :goto_6
    if-eqz v11, :cond_9

    move/from16 v20, v16

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    .line 297
    .local v10, isBlack:Z
    if-eq v10, v9, :cond_1

    .line 298
    add-int/lit8 v15, v15, 0x1

    .line 299
    move v9, v10

    .line 301
    :cond_1
    add-int/2addr v6, v5

    .line 302
    if-lez v6, :cond_b

    .line 303
    move/from16 v0, v18

    if-ne v0, v14, :cond_a

    .line 310
    .end local v10           #isBlack:Z
    :cond_2
    new-instance v20, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V

    return-object v20

    .line 278
    .end local v4           #dx:I
    .end local v5           #dy:I
    .end local v6           #error:I
    .end local v9           #inBlack:Z
    .end local v11           #steep:Z
    .end local v15           #transitions:I
    .end local v16           #x:I
    .end local v17           #xstep:I
    .end local v18           #y:I
    .end local v19           #ystep:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 291
    .restart local v4       #dx:I
    .restart local v5       #dy:I
    .restart local v6       #error:I
    .restart local v11       #steep:Z
    :cond_4
    const/16 v19, -0x1

    goto :goto_1

    .line 292
    .restart local v19       #ystep:I
    :cond_5
    const/16 v17, -0x1

    goto :goto_2

    .restart local v15       #transitions:I
    .restart local v17       #xstep:I
    :cond_6
    move/from16 v21, v7

    .line 294
    goto :goto_3

    :cond_7
    move/from16 v20, v8

    goto :goto_4

    .restart local v9       #inBlack:Z
    .restart local v16       #x:I
    .restart local v18       #y:I
    :cond_8
    move/from16 v21, v16

    .line 296
    goto :goto_6

    :cond_9
    move/from16 v20, v18

    goto :goto_7

    .line 306
    .restart local v10       #isBlack:Z
    :cond_a
    add-int v18, v18, v19

    .line 307
    sub-int/2addr v6, v4

    .line 295
    :cond_b
    add-int v16, v16, v17

    goto :goto_5
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-virtual {v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v16

    .line 63
    .local v16, cornerPoints:[Lcom/google/zxing/ResultPoint;
    const/4 v3, 0x0

    aget-object v23, v16, v3

    .line 64
    .local v23, pointA:Lcom/google/zxing/ResultPoint;
    const/4 v3, 0x1

    aget-object v24, v16, v3

    .line 65
    .local v24, pointB:Lcom/google/zxing/ResultPoint;
    const/4 v3, 0x2

    aget-object v25, v16, v3

    .line 66
    .local v25, pointC:Lcom/google/zxing/ResultPoint;
    const/4 v3, 0x3

    aget-object v27, v16, v3

    .line 71
    .local v27, pointD:Lcom/google/zxing/ResultPoint;
    new-instance v29, Ljava/util/Vector;

    const/4 v3, 0x4

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    .line 72
    .local v29, transitions:Ljava/util/Vector;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    new-instance v3, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Lcom/google/zxing/common/Collections;->insertionSort(Ljava/util/Vector;Lcom/google/zxing/common/Comparator;)V

    .line 80
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 81
    .local v18, lSideOne:Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 85
    .local v19, lSideTwo:Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    new-instance v26, Ljava/util/Hashtable;

    invoke-direct/range {v26 .. v26}, Ljava/util/Hashtable;-><init>()V

    .line 86
    .local v26, pointCount:Ljava/util/Hashtable;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    .line 87
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    .line 88
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    .line 89
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    .line 91
    const/16 v21, 0x0

    .line 92
    .local v21, maybeTopLeft:Lcom/google/zxing/ResultPoint;
    const/4 v4, 0x0

    .line 93
    .local v4, bottomLeft:Lcom/google/zxing/ResultPoint;
    const/16 v20, 0x0

    .line 94
    .local v20, maybeBottomRight:Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v26 .. v26}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v28

    .line 95
    .local v28, points:Ljava/util/Enumeration;
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-interface/range {v28 .. v28}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/zxing/ResultPoint;

    .line 97
    .local v22, point:Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 98
    .local v30, value:Ljava/lang/Integer;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v9, 0x2

    if-ne v3, v9, :cond_0

    .line 99
    move-object/from16 v4, v22

    goto :goto_0

    .line 102
    :cond_0
    if-nez v21, :cond_1

    .line 103
    move-object/from16 v21, v22

    goto :goto_0

    .line 105
    :cond_1
    move-object/from16 v20, v22

    goto :goto_0

    .line 110
    .end local v22           #point:Lcom/google/zxing/ResultPoint;
    .end local v30           #value:Ljava/lang/Integer;
    :cond_2
    if-eqz v21, :cond_3

    if-eqz v4, :cond_3

    if-nez v20, :cond_4

    .line 111
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 115
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput-object v21, v17, v3

    const/4 v3, 0x1

    aput-object v4, v17, v3

    const/4 v3, 0x2

    aput-object v20, v17, v3

    .line 117
    .local v17, corners:[Lcom/google/zxing/ResultPoint;
    invoke-static/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 120
    const/4 v3, 0x0

    aget-object v5, v17, v3

    .line 121
    .local v5, bottomRight:Lcom/google/zxing/ResultPoint;
    const/4 v3, 0x1

    aget-object v4, v17, v3

    .line 122
    const/4 v3, 0x2

    aget-object v6, v17, v3

    .line 126
    .local v6, topLeft:Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 127
    move-object/from16 v7, v23

    .line 144
    .local v7, topRight:Lcom/google/zxing/ResultPoint;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 146
    .local v8, dimension:I
    and-int/lit8 v3, v8, 0x1

    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 150
    :cond_5
    add-int/lit8 v8, v8, 0x2

    move-object/from16 v3, p0

    .line 153
    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v13

    .line 154
    .local v13, correctedTopRight:Lcom/google/zxing/ResultPoint;
    if-nez v13, :cond_6

    .line 155
    move-object v13, v7

    .line 159
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 161
    .local v14, dimension2:I
    add-int/lit8 v14, v14, 0x1

    .line 162
    and-int/lit8 v3, v14, 0x1

    const/4 v9, 0x1

    if-ne v3, v9, :cond_7

    .line 163
    add-int/lit8 v14, v14, 0x1

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v10, v6

    move-object v11, v4

    move-object v12, v5

    invoke-static/range {v9 .. v14}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v15

    .line 168
    .local v15, bits:Lcom/google/zxing/common/BitMatrix;
    new-instance v3, Lcom/google/zxing/common/DetectorResult;

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    const/4 v10, 0x3

    aput-object v13, v9, v10

    invoke-direct {v3, v15, v9}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v3

    .line 128
    .end local v7           #topRight:Lcom/google/zxing/ResultPoint;
    .end local v8           #dimension:I
    .end local v13           #correctedTopRight:Lcom/google/zxing/ResultPoint;
    .end local v14           #dimension2:I
    .end local v15           #bits:Lcom/google/zxing/common/BitMatrix;
    :cond_8
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 129
    move-object/from16 v7, v24

    .restart local v7       #topRight:Lcom/google/zxing/ResultPoint;
    goto :goto_1

    .line 130
    .end local v7           #topRight:Lcom/google/zxing/ResultPoint;
    :cond_9
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 131
    move-object/from16 v7, v25

    .restart local v7       #topRight:Lcom/google/zxing/ResultPoint;
    goto/16 :goto_1

    .line 133
    .end local v7           #topRight:Lcom/google/zxing/ResultPoint;
    :cond_a
    move-object/from16 v7, v27

    .restart local v7       #topRight:Lcom/google/zxing/ResultPoint;
    goto/16 :goto_1
.end method
