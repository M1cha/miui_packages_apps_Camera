.class public Lcom/android/camera/ui/HorizontalSlideView;
.super Landroid/view/View;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalSlideView$1;,
        Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;,
        Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;,
        Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;
    }
.end annotation


# instance fields
.field private mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIsScrollingPerformed:Z

.field private mJustifyEnabled:Z

.field private mMaxX:I

.field private mMinX:I

.field private mNeedJustify:Z

.field private mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

.field private mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

.field private mOriginX:F

.field private mPositionX:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemIndex:I

.field private mSelectionFromSelf:Z

.field private mTouchDown:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/HorizontalSlideView;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->flingX(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setPositionX(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calculateLength(II)F
    .locals 17

    const/4 v6, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    const/4 v4, 0x0

    move v3, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v16

    add-int/lit8 v12, v16, -0x1

    :goto_0
    if-eqz v11, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-eqz v11, :cond_4

    const/4 v2, -0x1

    :goto_2
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_a

    mul-int v16, v8, v2

    add-int v1, v12, v16

    if-ne v1, v12, :cond_5

    const/4 v9, 0x1

    :goto_4
    if-ne v1, v5, :cond_6

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v15, v16

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v16, v0

    sub-float v4, v16, v7

    :cond_0
    if-eqz v9, :cond_7

    move v3, v13

    :goto_6
    if-eqz v10, :cond_8

    const/16 v16, 0x0

    :goto_7
    add-float v4, v4, v16

    move/from16 v0, p1

    if-ne v1, v0, :cond_9

    move v6, v3

    :cond_1
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    add-float v3, v4, v7

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v16

    add-float v16, v16, v15

    goto :goto_7

    :cond_9
    move/from16 v0, p2

    if-ne v1, v0, :cond_1

    move v14, v3

    goto :goto_8

    :cond_a
    sub-float v16, v14, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    return v16
.end method

.method private flingX(I)V
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v5, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void
.end method

.method private getItemGap(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureGap(I)F

    move-result v0

    return v0
.end method

.method private getItemWidth(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result v0

    return v0
.end method

.method private scroll(I)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    goto :goto_0
.end method

.method private select(I)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->isScrolling()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    invoke-interface {v1, p0, v2}, Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;->onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    :cond_2
    invoke-interface {v1, p0, v0}, Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;->onPositionSelect(Lcom/android/camera/ui/HorizontalSlideView;F)V

    :cond_3
    return-void
.end method

.method private setPositionX(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->getCurrX()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->isFinished()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_1

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v20, v22, v23

    const/4 v8, 0x0

    move/from16 v6, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v7, v22, v23

    const/16 v16, 0x1

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v22

    add-int/lit8 v19, v22, -0x1

    :goto_0
    if-eqz v18, :cond_5

    const/4 v9, 0x0

    :goto_1
    if-eqz v18, :cond_6

    const/4 v4, -0x1

    :goto_2
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    mul-int v22, v11, v4

    add-int v3, v19, v22

    move/from16 v0, v19

    if-ne v3, v0, :cond_7

    const/4 v12, 0x1

    :goto_4
    if-ne v3, v9, :cond_8

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v10, v21, v22

    if-eqz v12, :cond_9

    const/4 v14, 0x0

    :goto_6
    if-eqz v13, :cond_a

    const/16 v17, 0x0

    :goto_7
    if-eqz v12, :cond_2

    sub-float v8, v20, v10

    :cond_2
    if-eqz v12, :cond_b

    move/from16 v6, v20

    :goto_8
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v22, v0

    sub-float v5, v6, v22

    const/16 v22, 0x0

    cmpg-float v22, v5, v22

    if-gtz v22, :cond_c

    neg-float v0, v5

    move/from16 v22, v0

    add-float v23, v10, v17

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_c

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    const/16 v16, 0x0

    move v15, v5

    :cond_3
    if-eqz v13, :cond_d

    const/16 v22, 0x0

    :goto_a
    add-float v8, v8, v22

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v22

    add-int/lit8 v9, v22, -0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    :cond_9
    move/from16 v14, v17

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v22

    const/high16 v23, 0x40000000    # 2.0f

    div-float v17, v22, v23

    goto :goto_7

    :cond_b
    add-float v6, v8, v10

    goto :goto_8

    :cond_c
    const/16 v22, 0x0

    cmpl-float v22, v5, v22

    if-lez v22, :cond_3

    add-float v22, v10, v14

    cmpg-float v22, v5, v22

    if-gtz v22, :cond_3

    goto :goto_9

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v22

    add-float v22, v22, v21

    goto :goto_a

    :cond_e
    sub-float v22, v6, v20

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 v11, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_18

    mul-int v22, v11, v4

    add-int v3, v19, v22

    move/from16 v0, v19

    if-ne v3, v0, :cond_11

    const/4 v12, 0x1

    :goto_c
    if-ne v3, v9, :cond_12

    const/4 v13, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v10, v21, v22

    if-eqz v12, :cond_f

    sub-float v8, v20, v10

    :cond_f
    if-eqz v12, :cond_13

    move/from16 v6, v20

    :goto_e
    add-float v22, v8, v21

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v8, v22

    if-gtz v22, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v22

    sget-object v23, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v3, :cond_16

    const/16 v22, 0x1

    :goto_10
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_10
    if-eqz v13, :cond_17

    const/16 v22, 0x0

    :goto_11
    add-float v8, v8, v22

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    :cond_11
    const/4 v12, 0x0

    goto :goto_c

    :cond_12
    const/4 v13, 0x0

    goto :goto_d

    :cond_13
    add-float v6, v8, v10

    goto :goto_e

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v22

    sget-object v23, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_f

    :cond_15
    add-float v22, v8, v21

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_f

    :cond_16
    const/16 v22, 0x0

    goto :goto_10

    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v22

    add-float v22, v22, v21

    goto :goto_11

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->isFinished()Z

    move-result v22

    if-eqz v22, :cond_19

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    float-to-int v0, v15

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    :cond_19
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    iput v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0
.end method

.method public setJustifyEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    return-void
.end method

.method public setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    return-void
.end method

.method public setOnPositionSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    return-void
.end method

.method public setSelection(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void
.end method

.method public setSelection(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0
.end method
