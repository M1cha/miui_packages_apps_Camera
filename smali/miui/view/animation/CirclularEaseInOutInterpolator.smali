.class public Lmiui/view/animation/CirclularEaseInOutInterpolator;
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
    const/high16 v3, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    mul-float v0, p1, v3

    .line 16
    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 17
    mul-float/2addr v0, v0

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    return v0

    .line 20
    :cond_0
    sub-float/2addr v0, v3

    .line 21
    mul-float/2addr v0, v0

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method
