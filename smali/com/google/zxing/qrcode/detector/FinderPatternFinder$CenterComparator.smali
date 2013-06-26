.class Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Lcom/google/zxing/common/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterComparator"
.end annotation


# instance fields
.field private final average:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 571
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    .line 573
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter "center1"
    .parameter "center2"

    .prologue
    .line 575
    move-object v2, p2

    check-cast v2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v3

    move-object v2, p1

    check-cast v2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 576
    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .end local p2
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v2

    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .end local p1
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 580
    :goto_0
    return v2

    .line 578
    .restart local p1
    .restart local p2
    :cond_0
    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .end local p2
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v2

    iget v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 579
    .local v0, dA:F
    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .end local p1
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v2

    iget v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 580
    .local v1, dB:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method
