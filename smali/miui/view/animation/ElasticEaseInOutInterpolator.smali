.class public Lmiui/view/animation/ElasticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final nJ:F

.field private final nK:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v0}, Lmiui/view/animation/ElasticEaseInOutInterpolator;-><init>(FF)V

    .line 22
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->nJ:F

    .line 30
    iput p2, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->nK:F

    .line 31
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 35
    iget v0, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->nK:F

    .line 36
    iget v1, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->nJ:F

    .line 39
    cmpl-float v3, p1, v5

    if-nez v3, :cond_0

    .line 40
    return v5

    .line 43
    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    div-float v4, p1, v3

    .line 44
    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    .line 45
    return v2

    .line 47
    :cond_1
    cmpl-float v3, v0, v5

    if-nez v3, :cond_5

    .line 48
    const v0, 0x3ee66667    # 0.45000002f

    move v3, v0

    .line 50
    :goto_0
    cmpl-float v0, v1, v5

    if-eqz v0, :cond_2

    cmpg-float v0, v1, v2

    if-gez v0, :cond_3

    .line 52
    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, v3, v0

    move v1, v2

    .line 56
    :goto_1
    cmpg-float v5, v4, v2

    if-gez v5, :cond_4

    .line 57
    sub-float v2, v4, v2

    .line 58
    float-to-double v4, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-double v6, v1

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-float v0, v2, v0

    float-to-double v0, v0

    mul-double/2addr v0, v10

    .line 59
    float-to-double v2, v3

    .line 58
    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    return v0

    .line 54
    :cond_3
    float-to-double v6, v3

    div-double/2addr v6, v10

    div-float v0, v2, v1

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v0, v6

    goto :goto_1

    .line 62
    :cond_4
    sub-float v2, v4, v2

    .line 63
    float-to-double v4, v1

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, v2

    float-to-double v6, v1

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-float v0, v2, v0

    float-to-double v0, v0

    mul-double/2addr v0, v10

    float-to-double v2, v3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 64
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 63
    mul-double/2addr v0, v2

    .line 64
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 63
    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_5
    move v3, v0

    goto :goto_0
.end method
