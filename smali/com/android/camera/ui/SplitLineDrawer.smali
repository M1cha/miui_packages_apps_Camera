.class public Lcom/android/camera/ui/SplitLineDrawer;
.super Landroid/view/View;
.source "SplitLineDrawer.java"


# instance fields
.field private mBottomVisible:Z

.field private mColumnCount:I

.field private mLineColor:I

.field private mRowCount:I

.field private mTopVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const v0, 0x33ffffff

    iput v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const v0, 0x33ffffff

    iput v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const v0, 0x33ffffff

    iput v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method


# virtual methods
.method public initialize(II)V
    .locals 0

    iput p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SplitLineDrawer;->getWidth()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/SplitLineDrawer;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x1

    :goto_0
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    if-ge v7, v0, :cond_0

    mul-int v0, v7, v8

    iget v1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-int v0, v7, v8

    iget v3, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    add-int/lit8 v0, v6, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    :goto_1
    const/4 v7, 0x0

    :goto_2
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-gt v7, v0, :cond_6

    if-eqz v7, :cond_4

    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-eq v7, v0, :cond_4

    :cond_1
    :goto_3
    int-to-float v1, v9

    mul-int v0, v7, v6

    iget v2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int/2addr v0, v2

    int-to-float v2, v0

    sub-int v0, v8, v9

    int-to-float v3, v0

    mul-int v0, v7, v6

    iget v4, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-nez v0, :cond_1

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-ne v7, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/SplitLineDrawer;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method
