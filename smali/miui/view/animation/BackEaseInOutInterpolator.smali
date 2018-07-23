.class public Lmiui/view/animation/BackEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final nO:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/animation/BackEaseInOutInterpolator;-><init>(F)V

    .line 21
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lmiui/view/animation/BackEaseInOutInterpolator;->nO:F

    .line 28
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const-wide v6, 0x3ff8666666666666L    # 1.525

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 32
    iget v0, p0, Lmiui/view/animation/BackEaseInOutInterpolator;->nO:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const v0, 0x3fd9cd60

    .line 34
    :goto_0
    mul-float v1, p1, v5

    .line 35
    cmpg-float v2, v1, v4

    if-gez v2, :cond_1

    .line 36
    float-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    .line 37
    mul-float v2, v1, v1

    add-float v3, v0, v4

    mul-float/2addr v1, v3

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    mul-float/2addr v0, v8

    return v0

    .line 32
    :cond_0
    iget v0, p0, Lmiui/view/animation/BackEaseInOutInterpolator;->nO:F

    goto :goto_0

    .line 40
    :cond_1
    sub-float/2addr v1, v5

    .line 41
    float-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    .line 42
    mul-float v2, v1, v1

    add-float v3, v0, v4

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    mul-float/2addr v0, v8

    return v0
.end method
