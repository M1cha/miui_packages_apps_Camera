.class public Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;
.super Ljava/lang/Object;
.source "QuartEaseOutInterpolater.java"

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
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method
