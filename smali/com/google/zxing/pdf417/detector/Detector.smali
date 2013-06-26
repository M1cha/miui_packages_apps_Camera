.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final START_PATTERN:[I

.field private static final START_PATTERN_REVERSE:[I

.field private static final STOP_PATTERN:[I

.field private static final STOP_PATTERN_REVERSE:[I


# instance fields
.field private final image:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/16 v1, 0x8

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    .line 49
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 53
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    return-void

    .line 43
    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/BinaryBitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    .line 59
    return-void
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 3
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "moduleWidth"

    .prologue
    .line 358
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/pdf417/detector/Detector;->round(F)I

    move-result v1

    .line 359
    .local v1, topRowDimension:I
    invoke-static {p2, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/pdf417/detector/Detector;->round(F)I

    move-result v0

    .line 360
    .local v0, bottomRowDimension:I
    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x8

    div-int/lit8 v2, v2, 0x11

    mul-int/lit8 v2, v2, 0x11

    return v2
.end method

.method private static computeModuleWidth([Lcom/google/zxing/ResultPoint;)F
    .locals 8
    .parameter "vertices"

    .prologue
    .line 336
    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x4

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 337
    .local v2, pixels1:F
    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x5

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    .line 338
    .local v3, pixels2:F
    add-float v6, v2, v3

    const/high16 v7, 0x4208

    div-float v0, v6, v7

    .line 339
    .local v0, moduleWidth1:F
    const/4 v6, 0x6

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 340
    .local v4, pixels3:F
    const/4 v6, 0x7

    aget-object v6, p0, v6

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    .line 341
    .local v5, pixels4:F
    add-float v6, v4, v5

    const/high16 v7, 0x4210

    div-float v1, v6, v7

    .line 342
    .local v1, moduleWidth2:F
    add-float v6, v0, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    return v6
.end method

.method private static correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V
    .locals 13
    .parameter "vertices"
    .parameter "upsideDown"

    .prologue
    const/high16 v12, 0x4000

    const/4 v11, 0x7

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    .line 279
    aget-object v5, p0, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    aget-object v6, p0, v10

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 280
    .local v4, skew:F
    if-eqz p1, :cond_0

    .line 281
    neg-float v4, v4

    .line 283
    :cond_0
    cmpl-float v5, v4, v12

    if-lez v5, :cond_4

    .line 285
    aget-object v5, p0, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 286
    .local v3, length:F
    aget-object v5, p0, v10

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 287
    .local v1, deltax:F
    aget-object v5, p0, v10

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float v2, v5, v6

    .line 288
    .local v2, deltay:F
    mul-float v5, v3, v2

    div-float v0, v5, v1

    .line 289
    .local v0, correction:F
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget-object v6, p0, v8

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    aget-object v7, p0, v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    add-float/2addr v7, v0

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, p0, v8

    .line 299
    .end local v0           #correction:F
    .end local v1           #deltax:F
    .end local v2           #deltay:F
    .end local v3           #length:F
    :cond_1
    :goto_0
    aget-object v5, p0, v11

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    aget-object v6, p0, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 300
    if-eqz p1, :cond_2

    .line 301
    neg-float v4, v4

    .line 303
    :cond_2
    cmpl-float v5, v4, v12

    if-lez v5, :cond_5

    .line 305
    aget-object v5, p0, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    const/4 v6, 0x1

    aget-object v6, p0, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 306
    .restart local v3       #length:F
    aget-object v5, p0, v11

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    const/4 v6, 0x1

    aget-object v6, p0, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 307
    .restart local v1       #deltax:F
    aget-object v5, p0, v11

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    const/4 v6, 0x1

    aget-object v6, p0, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float v2, v5, v6

    .line 308
    .restart local v2       #deltay:F
    mul-float v5, v3, v2

    div-float v0, v5, v1

    .line 309
    .restart local v0       #correction:F
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget-object v6, p0, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    aget-object v7, p0, v9

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    add-float/2addr v7, v0

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, p0, v9

    .line 318
    .end local v0           #correction:F
    .end local v1           #deltax:F
    .end local v2           #deltay:F
    .end local v3           #length:F
    :cond_3
    :goto_1
    return-void

    .line 290
    :cond_4
    neg-float v5, v4

    cmpl-float v5, v5, v12

    if-lez v5, :cond_1

    .line 292
    const/4 v5, 0x2

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    aget-object v6, p0, v10

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 293
    .restart local v3       #length:F
    const/4 v5, 0x2

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    aget-object v6, p0, v8

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 294
    .restart local v1       #deltax:F
    const/4 v5, 0x2

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    aget-object v6, p0, v8

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float v2, v5, v6

    .line 295
    .restart local v2       #deltay:F
    mul-float v5, v3, v2

    div-float v0, v5, v1

    .line 296
    .restart local v0       #correction:F
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget-object v6, p0, v10

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    aget-object v7, p0, v10

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, p0, v10

    goto/16 :goto_0

    .line 310
    .end local v0           #correction:F
    .end local v1           #deltax:F
    .end local v2           #deltay:F
    .end local v3           #length:F
    :cond_5
    neg-float v5, v4

    cmpl-float v5, v5, v12

    if-lez v5, :cond_3

    .line 312
    const/4 v5, 0x3

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    aget-object v6, p0, v11

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 313
    .restart local v3       #length:F
    const/4 v5, 0x3

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    aget-object v6, p0, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 314
    .restart local v1       #deltax:F
    const/4 v5, 0x3

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    aget-object v6, p0, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float v2, v5, v6

    .line 315
    .restart local v2       #deltay:F
    mul-float v5, v3, v2

    div-float v0, v5, v1

    .line 316
    .restart local v0       #correction:F
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget-object v6, p0, v11

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    aget-object v7, p0, v11

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, p0, v11

    goto/16 :goto_1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I
    .locals 10
    .parameter "matrix"
    .parameter "column"
    .parameter "row"
    .parameter "width"
    .parameter "whiteFirst"
    .parameter "pattern"

    .prologue
    .line 417
    array-length v3, p5

    .line 420
    .local v3, patternLength:I
    new-array v1, v3, [I

    .line 421
    .local v1, counters:[I
    move v2, p4

    .line 423
    .local v2, isWhite:Z
    const/4 v0, 0x0

    .line 424
    .local v0, counterPosition:I
    move v4, p1

    .line 425
    .local v4, patternStart:I
    move v6, p1

    .local v6, x:I
    :goto_0
    add-int v8, p1, p3

    if-ge v6, v8, :cond_5

    .line 426
    invoke-virtual {p0, v6, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    .line 427
    .local v5, pixel:Z
    xor-int v8, v5, v2

    if-eqz v8, :cond_0

    .line 428
    aget v8, v1, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v0

    .line 425
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 430
    :cond_0
    add-int/lit8 v8, v3, -0x1

    if-ne v0, v8, :cond_3

    .line 431
    const/16 v8, 0xcc

    invoke-static {v1, p5, v8}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    move-result v8

    const/16 v9, 0x6b

    if-ge v8, v9, :cond_1

    .line 432
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v6, v8, v9

    .line 448
    .end local v5           #pixel:Z
    :goto_2
    return-object v8

    .line 434
    .restart local v5       #pixel:Z
    :cond_1
    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 435
    const/4 v7, 0x2

    .local v7, y:I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 436
    add-int/lit8 v8, v7, -0x2

    aget v9, v1, v7

    aput v9, v1, v8

    .line 435
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 438
    :cond_2
    add-int/lit8 v8, v3, -0x2

    const/4 v9, 0x0

    aput v9, v1, v8

    .line 439
    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    aput v9, v1, v8

    .line 440
    add-int/lit8 v0, v0, -0x1

    .line 444
    .end local v7           #y:I
    :goto_4
    const/4 v8, 0x1

    aput v8, v1, v0

    .line 445
    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_5
    goto :goto_1

    .line 442
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 445
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 448
    .end local v5           #pixel:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;
    .locals 12
    .parameter "matrix"

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 134
    .local v7, height:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 136
    .local v3, width:I
    const/16 v0, 0x8

    new-array v9, v0, [Lcom/google/zxing/ResultPoint;

    .line 137
    .local v9, result:[Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x0

    .line 140
    .local v6, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 141
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v8

    .line 142
    .local v8, loc:[I
    if-eqz v8, :cond_4

    .line 143
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v4, v8, v1

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v9, v1

    .line 144
    const/4 v0, 0x4

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v8, v11

    int-to-float v5, v5

    int-to-float v10, v2

    invoke-direct {v4, v5, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v9, v0

    .line 145
    const/4 v6, 0x1

    .line 150
    .end local v8           #loc:[I
    :cond_0
    if-eqz v6, :cond_1

    .line 151
    const/4 v6, 0x0

    .line 152
    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-lez v2, :cond_1

    .line 153
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v8

    .line 154
    .restart local v8       #loc:[I
    if-eqz v8, :cond_5

    .line 155
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v4, v8, v1

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v9, v11

    .line 156
    const/4 v0, 0x5

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v8, v11

    int-to-float v5, v5

    int-to-float v10, v2

    invoke-direct {v4, v5, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v9, v0

    .line 157
    const/4 v6, 0x1

    .line 163
    .end local v8           #loc:[I
    :cond_1
    if-eqz v6, :cond_2

    .line 164
    const/4 v6, 0x0

    .line 165
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_2

    .line 166
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v8

    .line 167
    .restart local v8       #loc:[I
    if-eqz v8, :cond_6

    .line 168
    const/4 v0, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v8, v11

    int-to-float v5, v5

    int-to-float v10, v2

    invoke-direct {v4, v5, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v9, v0

    .line 169
    const/4 v0, 0x6

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v8, v1

    int-to-float v5, v5

    int-to-float v10, v2

    invoke-direct {v4, v5, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v9, v0

    .line 170
    const/4 v6, 0x1

    .line 176
    .end local v8           #loc:[I
    :cond_2
    if-eqz v6, :cond_3

    .line 177
    const/4 v6, 0x0

    .line 178
    add-int/lit8 v2, v7, -0x1

    :goto_3
    if-lez v2, :cond_3

    .line 179
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v8

    .line 180
    .restart local v8       #loc:[I
    if-eqz v8, :cond_7

    .line 181
    const/4 v0, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v8, v11

    int-to-float v5, v5

    int-to-float v10, v2

    invoke-direct {v4, v5, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v9, v0

    .line 182
    const/4 v0, 0x7

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v1, v8, v1

    int-to-float v1, v1

    int-to-float v5, v2

    invoke-direct {v4, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v9, v0

    .line 183
    const/4 v6, 0x1

    .line 188
    .end local v8           #loc:[I
    :cond_3
    if-eqz v6, :cond_8

    .end local v9           #result:[Lcom/google/zxing/ResultPoint;
    :goto_4
    return-object v9

    .line 140
    .restart local v8       #loc:[I
    .restart local v9       #result:[Lcom/google/zxing/ResultPoint;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 152
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 165
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 178
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 188
    .end local v8           #loc:[I
    :cond_8
    const/4 v9, 0x0

    goto :goto_4
.end method

.method private static findVertices180(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;
    .locals 14
    .parameter "matrix"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    .line 212
    .local v10, height:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v13

    .line 213
    .local v13, width:I
    shr-int/lit8 v1, v13, 0x1

    .line 215
    .local v1, halfWidth:I
    const/16 v0, 0x8

    new-array v12, v0, [Lcom/google/zxing/ResultPoint;

    .line 216
    .local v12, result:[Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x0

    .line 219
    .local v9, found:Z
    add-int/lit8 v2, v10, -0x1

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 220
    const/4 v4, 0x1

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object v0, p0

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v11

    .line 221
    .local v11, loc:[I
    if-eqz v11, :cond_4

    .line 222
    const/4 v0, 0x0

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v12, v0

    .line 223
    const/4 v0, 0x4

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v12, v0

    .line 224
    const/4 v9, 0x1

    .line 229
    .end local v11           #loc:[I
    :cond_0
    if-eqz v9, :cond_1

    .line 230
    const/4 v9, 0x0

    .line 231
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_1

    .line 232
    const/4 v4, 0x1

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object v0, p0

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v11

    .line 233
    .restart local v11       #loc:[I
    if-eqz v11, :cond_5

    .line 234
    const/4 v0, 0x1

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v12, v0

    .line 235
    const/4 v0, 0x5

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v12, v0

    .line 236
    const/4 v9, 0x1

    .line 242
    .end local v11           #loc:[I
    :cond_1
    if-eqz v9, :cond_2

    .line 243
    const/4 v9, 0x0

    .line 244
    add-int/lit8 v2, v10, -0x1

    :goto_2
    if-lez v2, :cond_2

    .line 245
    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object v3, p0

    move v5, v2

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v11

    .line 246
    .restart local v11       #loc:[I
    if-eqz v11, :cond_6

    .line 247
    const/4 v0, 0x2

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v12, v0

    .line 248
    const/4 v0, 0x6

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v12, v0

    .line 249
    const/4 v9, 0x1

    .line 255
    .end local v11           #loc:[I
    :cond_2
    if-eqz v9, :cond_3

    .line 256
    const/4 v9, 0x0

    .line 257
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_3

    .line 258
    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object v3, p0

    move v5, v2

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v11

    .line 259
    .restart local v11       #loc:[I
    if-eqz v11, :cond_7

    .line 260
    const/4 v0, 0x3

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v12, v0

    .line 261
    const/4 v0, 0x7

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v12, v0

    .line 262
    const/4 v9, 0x1

    .line 267
    .end local v11           #loc:[I
    :cond_3
    if-eqz v9, :cond_8

    .end local v12           #result:[Lcom/google/zxing/ResultPoint;
    :goto_4
    return-object v12

    .line 219
    .restart local v11       #loc:[I
    .restart local v12       #result:[Lcom/google/zxing/ResultPoint;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 231
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 244
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 257
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 267
    .end local v11           #loc:[I
    :cond_8
    const/4 v12, 0x0

    goto :goto_4
.end method

.method private static patternMatchVariance([I[II)I
    .locals 12
    .parameter "counters"
    .parameter "pattern"
    .parameter "maxIndividualVariance"

    .prologue
    const v10, 0x7fffffff

    .line 467
    array-length v2, p0

    .line 468
    .local v2, numCounters:I
    const/4 v5, 0x0

    .line 469
    .local v5, total:I
    const/4 v3, 0x0

    .line 470
    .local v3, patternLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 471
    aget v11, p0, v1

    add-int/2addr v5, v11

    .line 472
    aget v11, p1, v1

    add-int/2addr v3, v11

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_0
    if-ge v5, v3, :cond_2

    .line 495
    :cond_1
    :goto_1
    return v10

    .line 482
    :cond_2
    shl-int/lit8 v11, v5, 0x8

    div-int v7, v11, v3

    .line 483
    .local v7, unitBarWidth:I
    mul-int v11, p2, v7

    shr-int/lit8 p2, v11, 0x8

    .line 485
    const/4 v6, 0x0

    .line 486
    .local v6, totalVariance:I
    const/4 v9, 0x0

    .local v9, x:I
    :goto_2
    if-ge v9, v2, :cond_4

    .line 487
    aget v11, p0, v9

    shl-int/lit8 v0, v11, 0x8

    .line 488
    .local v0, counter:I
    aget v11, p1, v9

    mul-int v4, v11, v7

    .line 489
    .local v4, scaledPattern:I
    if-le v0, v4, :cond_3

    sub-int v8, v0, v4

    .line 490
    .local v8, variance:I
    :goto_3
    if-gt v8, p2, :cond_1

    .line 493
    add-int/2addr v6, v8

    .line 486
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 489
    .end local v8           #variance:I
    :cond_3
    sub-int v8, v4, v0

    goto :goto_3

    .line 495
    .end local v0           #counter:I
    .end local v4           #scaledPattern:I
    :cond_4
    div-int v10, v6, v5

    goto :goto_1
.end method

.method private static round(F)I
    .locals 1
    .parameter "d"

    .prologue
    .line 403
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .parameter "matrix"
    .parameter "topLeft"
    .parameter "bottomLeft"
    .parameter "topRight"
    .parameter "bottomRight"
    .parameter "dimension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 380
    .local v1, sampler:Lcom/google/zxing/common/GridSampler;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p5

    int-to-float v6, v0

    const/4 v7, 0x0

    move/from16 v0, p5

    int-to-float v8, v0

    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

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


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;
    .locals 14
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x4

    .line 80
    iget-object v1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 83
    .local v0, matrix:Lcom/google/zxing/common/BitMatrix;
    invoke-static {v0}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 84
    .local v8, vertices:[Lcom/google/zxing/ResultPoint;
    if-nez v8, :cond_1

    .line 86
    invoke-static {v0}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices180(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 87
    if-eqz v8, :cond_0

    .line 88
    invoke-static {v8, v10}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    .line 94
    :cond_0
    :goto_0
    if-nez v8, :cond_2

    .line 95
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 91
    :cond_1
    const/4 v1, 0x0

    invoke-static {v8, v1}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v8}, Lcom/google/zxing/pdf417/detector/Detector;->computeModuleWidth([Lcom/google/zxing/ResultPoint;)F

    move-result v7

    .line 99
    .local v7, moduleWidth:F
    const/high16 v1, 0x3f80

    cmpg-float v1, v7, v1

    if-gez v1, :cond_3

    .line 100
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 103
    :cond_3
    aget-object v1, v8, v9

    aget-object v2, v8, v12

    aget-object v3, v8, v11

    aget-object v4, v8, v13

    invoke-static {v1, v2, v3, v4, v7}, Lcom/google/zxing/pdf417/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v5

    .line 105
    .local v5, dimension:I
    if-ge v5, v10, :cond_4

    .line 106
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 110
    :cond_4
    aget-object v1, v8, v9

    aget-object v2, v8, v11

    aget-object v3, v8, v12

    aget-object v4, v8, v13

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    .line 112
    .local v6, bits:Lcom/google/zxing/common/BitMatrix;
    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    new-array v2, v9, [Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aget-object v4, v8, v9

    aput-object v4, v2, v3

    aget-object v3, v8, v11

    aput-object v3, v2, v10

    const/4 v3, 0x2

    aget-object v4, v8, v12

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aget-object v4, v8, v13

    aput-object v4, v2, v3

    invoke-direct {v1, v6, v2}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v1
.end method
