.class public Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;
.super Ljava/lang/Object;
.source "BounceEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterpolationImp(F)F
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p0

    invoke-static {v0}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-static {p1}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;->getInterpolationImp(F)F

    move-result v0

    return v0
.end method
