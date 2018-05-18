.class public Lcom/android/camera/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalListView$1;,
        Lcom/android/camera/ui/HorizontalListView$2;,
        Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mBlockNotification:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mIsScrollingPerformed:Z

.field private mItemWidth:I

.field private mLastSelectImageListItem:Landroid/view/View;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnItemSingleTapDowned:Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;

.field private mPaddingWidth:I

.field private mPresetWidth:I

.field private mPreviousSelectViewIndex:I

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mSelectCenter:Z

.field private mSelectViewIndex:I

.field private mTouchDown:Z

.field private mTouchMoveEnable:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/HorizontalListView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/HorizontalListView;)Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSingleTapDowned:Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/HorizontalListView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/HorizontalListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchMoveEnable:Z

    new-instance v0, Lcom/android/camera/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalListView$1;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/android/camera/ui/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalListView$2;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    return-void
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4

    const/4 v1, -0x1

    const/high16 v3, -0x80000000

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private cacheChildItem(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private fillList(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListRight(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    add-int v2, p1, p2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v3, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v2, v3, :cond_0

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v2

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private fillListRight(II)V
    .locals 6

    const/4 v5, 0x0

    :goto_0
    add-int v2, p1, p2

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v3, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v2, v3, :cond_2

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v2

    add-int/2addr p1, v2

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    :cond_0
    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-gez v2, :cond_1

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    :cond_1
    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getChildWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    return v0
.end method

.method private declared-synchronized initView()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    :goto_0
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private justify()V
    .locals 6

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v2, :cond_2

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-le v1, v3, :cond_3

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    :cond_3
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    if-eq v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->scrollTo(I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V

    goto :goto_1
.end method

.method private loadItems()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyItemSelect(Landroid/view/View;IJ)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setActivated(Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    :cond_6
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method private positionItems(I)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_2

    iget v9, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v9, p1

    iput v9, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getHeight()I

    move-result v2

    iget v9, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v0, v9, 0x2

    iget v9, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v6, v9, 0x1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ge v9, v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-le v9, v0, :cond_1

    const/4 v8, 0x1

    :goto_1
    add-int v9, v7, v3

    invoke-virtual {v1, v7, v12, v9, v2}, Landroid/view/View;->layout(IIII)V

    iget-boolean v9, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v9, :cond_0

    if-ge v7, v0, :cond_0

    add-int v9, v7, v3

    if-le v9, v0, :cond_0

    xor-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_0

    invoke-direct {p0, v6}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v4

    iget-object v9, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-direct {p0, v1, v4, v10, v11}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, p1

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/HorizontalListView;->removeViewsInLayout(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    move v2, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_2

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-le v1, v2, :cond_3

    add-int/lit8 v3, v2, 0x1

    sub-int v4, v1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/HorizontalListView;->removeViewsInLayout(II)V

    :cond_3
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private toDataIndex(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method private toViewIndex(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

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

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return v0
.end method

.method public isTouchMoveEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchMoveEnable:Z

    return v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    neg-float v2, p3

    float-to-int v3, v2

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-boolean v6, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    if-eqz v6, :cond_1

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->removeAllViewsInLayout()V

    iput v4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    const/4 v1, 0x1

    :cond_1
    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    :cond_2
    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    if-gtz v6, :cond_3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_3
    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-lt v6, v7, :cond_4

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iput v6, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_4
    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int v3, v6, v7

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iput v6, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->removeNonVisibleItems(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->fillList(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->positionItems(I)V

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_7

    :cond_5
    new-instance v6, Lcom/android/camera/ui/HorizontalListView$3;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/HorizontalListView$3;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->loadItems()V

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    iget-boolean v6, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v6, :cond_8

    new-instance v6, Lcom/android/camera/ui/HorizontalListView$4;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/HorizontalListView$4;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    if-eq v6, v7, :cond_6

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le v6, v7, :cond_9

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-gt v6, v7, :cond_9

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-direct {p0, v6}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v2

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-direct {p0, v0, v2, v6, v7}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    :cond_9
    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput v6, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method public setItemWidth(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setOnItemSingleTapDownListener(Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSingleTapDowned:Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toViewIndex(I)I

    move-result p1

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v3, p1, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    :cond_1
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge p1, v3, :cond_2

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int v3, p1, v3

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    :cond_3
    return-void
.end method
