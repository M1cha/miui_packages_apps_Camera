.class Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
.super Ljava/lang/Object;
.source "Detector.java"

# interfaces
.implements Lcom/google/zxing/common/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultPointsAndTransitionsComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 344
    check-cast p1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .end local p1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    check-cast p2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .end local p2
    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
