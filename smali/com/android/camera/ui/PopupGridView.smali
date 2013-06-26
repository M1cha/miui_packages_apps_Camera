.class public Lcom/android/camera/ui/PopupGridView;
.super Landroid/view/ViewGroup;
.source "PopupGridView.java"


# instance fields
.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/PopupGridView;->set(IIII)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupGridView;->setDrawingCacheEnabled(Z)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupGridView;->setWillNotDraw(Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method protected doLayout(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupGridView;->layoutChildByIndex(I)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 64
    iget v2, p0, Lcom/android/camera/ui/PopupGridView;->mColumnCount:I

    div-int v1, p1, v2

    .line 65
    .local v1, rowIndex:I
    iget v2, p0, Lcom/android/camera/ui/PopupGridView;->mColumnCount:I

    rem-int v0, p1, v2

    .line 66
    .local v0, columnIndex:I
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PopupGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/PopupGridView;->mChildWidth:I

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/android/camera/ui/PopupGridView;->mChildHeight:I

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x0

    iget v5, p0, Lcom/android/camera/ui/PopupGridView;->mChildWidth:I

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/android/camera/ui/PopupGridView;->mChildHeight:I

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 71
    return-void
.end method

.method measureDimension(II)I
    .locals 1
    .parameter "measureSpec"
    .parameter "contentDimension"

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 60
    const/4 p2, 0x0

    .end local p2
    :goto_0
    :sswitch_0
    return p2

    .line 56
    .restart local p2
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_0

    .line 58
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 75
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/PopupGridView;->doLayout(IIII)V

    .line 76
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 43
    iget v0, p0, Lcom/android/camera/ui/PopupGridView;->mChildWidth:I

    iget v1, p0, Lcom/android/camera/ui/PopupGridView;->mColumnCount:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/PopupGridView;->measureDimension(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PopupGridView;->mChildHeight:I

    iget v2, p0, Lcom/android/camera/ui/PopupGridView;->mRowCount:I

    mul-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/PopupGridView;->measureDimension(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PopupGridView;->setMeasuredDimension(II)V

    .line 46
    iget v0, p0, Lcom/android/camera/ui/PopupGridView;->mChildWidth:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PopupGridView;->mChildHeight:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PopupGridView;->measureChildren(II)V

    .line 49
    return-void
.end method

.method public set(IIII)V
    .locals 2
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PopupGridView;->mRowCount:I

    .line 31
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PopupGridView;->mColumnCount:I

    .line 32
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PopupGridView;->mChildHeight:I

    .line 33
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PopupGridView;->mChildWidth:I

    .line 34
    return-void
.end method
