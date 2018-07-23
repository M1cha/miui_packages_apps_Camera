.class public Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mPriod:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    iput p2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 10

    const/4 v3, 0x0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const/high16 v6, 0x3f800000    # 1.0f

    iget v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    cmpl-float v2, p1, v3

    if-nez v2, :cond_0

    return v3

    :cond_0
    cmpl-float v2, p1, v6

    if-nez v2, :cond_1

    return v6

    :cond_1
    cmpg-float v2, v0, v6

    if-gez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float v1, v2, v3

    :goto_0
    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-float/2addr p1, v6

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-float v4, p1, v1

    float-to-double v4, v4

    mul-double/2addr v4, v8

    iget v6, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    neg-float v2, v2

    return v2

    :cond_2
    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    float-to-double v2, v2

    div-double/2addr v2, v8

    div-float v4, v6, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_0
.end method
