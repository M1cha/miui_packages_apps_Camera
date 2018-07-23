.class public Lmiui/view/animation/ExponentialEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 16
    return v1

    .line 18
    :cond_0
    cmpl-float v0, p1, v2

    if-nez v0, :cond_1

    .line 19
    return v2

    .line 22
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    .line 23
    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 24
    sub-float/2addr v0, v2

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    return v0

    .line 27
    :cond_2
    sub-float/2addr v0, v2

    .line 28
    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v4

    double-to-float v0, v0

    mul-float/2addr v0, v3

    return v0
.end method
