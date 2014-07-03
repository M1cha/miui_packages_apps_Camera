.class public final Lcom/android/zxing/ui/ViewFinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewFinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final mViewfinderView:Lcom/android/zxing/ui/ViewFinderView;


# direct methods
.method public constructor <init>(Lcom/android/zxing/ui/ViewFinderView;)V
    .locals 0
    .param p1, "viewfinderView"    # Lcom/android/zxing/ui/ViewFinderView;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/zxing/ui/ViewFinderResultPointCallback;->mViewfinderView:Lcom/android/zxing/ui/ViewFinderView;

    .line 13
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/zxing/ui/ViewFinderResultPointCallback;->mViewfinderView:Lcom/android/zxing/ui/ViewFinderView;

    invoke-virtual {v0, p1}, Lcom/android/zxing/ui/ViewFinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 17
    return-void
.end method
