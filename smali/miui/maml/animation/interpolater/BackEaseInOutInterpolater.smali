.class public Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "BackEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    iput v0, p0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    const/high16 v2, 0x40000000    # 2.0f

    const-wide v10, 0x3ff8666666666666L    # 1.525

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget v0, p0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    mul-float/2addr p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    mul-float v1, p1, p1

    float-to-double v2, v1

    float-to-double v4, v0

    mul-double/2addr v4, v10

    double-to-float v0, v4

    add-double/2addr v4, v6

    float-to-double v6, p1

    mul-double/2addr v4, v6

    float-to-double v6, v0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-float v1, v2

    return v1

    :cond_0
    sub-float/2addr p1, v2

    mul-float v1, p1, p1

    float-to-double v2, v1

    float-to-double v4, v0

    mul-double/2addr v4, v10

    double-to-float v0, v4

    add-double/2addr v4, v6

    float-to-double v6, p1

    mul-double/2addr v4, v6

    float-to-double v6, v0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-float v1, v2

    return v1
.end method
