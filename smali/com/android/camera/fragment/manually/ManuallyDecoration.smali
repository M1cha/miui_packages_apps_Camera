.class public Lcom/android/camera/fragment/manually/ManuallyDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ManuallyDecoration.java"


# instance fields
.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    iput p1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    div-int v2, v6, v7

    iget v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    sub-int v1, v6, v2

    iget v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    rem-int v6, p2, v6

    mul-int v3, v6, v1

    sub-int v4, v2, v3

    iget v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    invoke-virtual {p1, v3, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v14, v1, v2

    iget v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int v7, v14, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    int-to-float v2, v12

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int v7, v1, v2

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v12, v1, v2

    iget v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int v13, v12, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    int-to-float v2, v12

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    return-void
.end method
