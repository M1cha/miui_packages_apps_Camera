.class public Lmiui/view/animation/QuarticEaseInOutInterpolator;
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
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    mul-float v0, p1, v2

    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 17
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    return v0

    .line 19
    :cond_0
    sub-float/2addr v0, v2

    .line 20
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    sub-float/2addr v0, v2

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    return v0
.end method
