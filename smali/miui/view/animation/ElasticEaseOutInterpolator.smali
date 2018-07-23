.class public Lmiui/view/animation/ElasticEaseOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final nH:F

.field private final nI:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v0}, Lmiui/view/animation/ElasticEaseOutInterpolator;-><init>(FF)V

    .line 22
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lmiui/view/animation/ElasticEaseOutInterpolator;->nH:F

    .line 30
    iput p2, p0, Lmiui/view/animation/ElasticEaseOutInterpolator;->nI:F

    .line 31
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    .prologue
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 35
    iget v0, p0, Lmiui/view/animation/ElasticEaseOutInterpolator;->nI:F

    .line 36
    iget v1, p0, Lmiui/view/animation/ElasticEaseOutInterpolator;->nH:F

    .line 39
    cmpl-float v3, p1, v4

    if-nez v3, :cond_0

    .line 40
    return v4

    .line 42
    :cond_0
    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    .line 43
    return v2

    .line 45
    :cond_1
    cmpl-float v3, v0, v4

    if-nez v3, :cond_4

    .line 46
    const v0, 0x3e99999a    # 0.3f

    move v3, v0

    .line 48
    :goto_0
    cmpl-float v0, v1, v4

    if-eqz v0, :cond_2

    cmpg-float v0, v1, v2

    if-gez v0, :cond_3

    .line 50
    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, v3, v0

    move v1, v2

    .line 54
    :goto_1
    float-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-float v0, p1, v0

    float-to-double v0, v0

    mul-double/2addr v0, v10

    float-to-double v2, v3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 52
    :cond_3
    float-to-double v4, v3

    div-double/2addr v4, v10

    div-float v0, v2, v1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v0, v4

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_0
.end method
