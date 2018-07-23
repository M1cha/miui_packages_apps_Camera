.class public Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "ExpoEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v4

    if-nez v0, :cond_0

    return v4

    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    sub-float v0, p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v5

    return v0

    :cond_2
    sub-float/2addr p1, v1

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v2

    double-to-float v0, v0

    mul-float/2addr v0, v5

    return v0
.end method
