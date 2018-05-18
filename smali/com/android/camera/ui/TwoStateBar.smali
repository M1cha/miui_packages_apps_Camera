.class public Lcom/android/camera/ui/TwoStateBar;
.super Landroid/view/View;
.source "TwoStateBar.java"


# instance fields
.field private mFutureEnd:I

.field private mFutureStart:I

.field private mPastEnd:I

.field private mPastStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v2, 0x0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mPastStart:I

    iget v1, p0, Lcom/android/camera/ui/TwoStateBar;->mPastEnd:I

    if-ge v0, v1, :cond_0

    const v0, -0xff5701

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mPastStart:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mPastEnd:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureStart:I

    iget v1, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureEnd:I

    if-ge v0, v1, :cond_1

    const v0, -0x66000001

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureStart:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureEnd:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setStatePosition(IIII)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->getLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TwoStateBar;->mPastStart:I

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->getLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TwoStateBar;->mPastEnd:I

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->getLeft()I

    move-result v0

    sub-int v0, p3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureStart:I

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->getLeft()I

    move-result v1

    sub-int v1, p4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TwoStateBar;->mFutureEnd:I

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateBar;->invalidate()V

    return-void
.end method
