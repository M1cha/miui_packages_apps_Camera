.class public Lcom/android/camera/ui/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ScreenView$ArrowIndicator;,
        Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;,
        Lcom/android/camera/ui/ScreenView$Indicator;,
        Lcom/android/camera/ui/ScreenView$SavedState;,
        Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;,
        Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;,
        Lcom/android/camera/ui/ScreenView$SeekBarIndicator;,
        Lcom/android/camera/ui/ScreenView$SlideBar;
    }
.end annotation


# static fields
.field protected static final INDICATOR_MEASURE_SPEC:I

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SMOOTHING_CONSTANT:F


# instance fields
.field protected final DEFAULT_CAMERA_DISTANCE:F

.field private isFromcomputeScroll:Z

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field private mScreenCounter:I

.field protected mScreenOffset:I

.field protected mScreenPaddingBottom:I

.field protected mScreenPaddingTop:I

.field protected mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBounds:I

.field protected mScrollOffset:I

.field protected mScrollRightBounds:I

.field protected mScrollWholeScreen:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field protected mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ScreenView;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ScreenView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ScreenView;->INDICATOR_MEASURE_SPEC:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    div-double v0, v2, v0

    double-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    const v0, 0x7f020175

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    const v0, 0x7f020176

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    const v0, 0x7f020177

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    const v0, 0x7f020178

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    const v0, 0x7f020179

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    new-instance v0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    const v0, 0x7f020175

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    const v0, 0x7f020176

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    const v0, 0x7f020177

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    const v0, 0x7f020178

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    const v0, 0x7f020179

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    new-instance v0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    return-void
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setClipToPadding(Z)V

    new-instance v1, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lcom/android/camera/ui/ScreenView;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setMaximumSnapVelocity(I)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method private refreshScrollBounds()V
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBounds:I

    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBounds:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBounds:I

    goto :goto_0
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private snapByVelocity(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v6, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v4

    float-to-int v2, v4

    iget-object v4, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    if-ne v0, v5, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    add-int/2addr v4, v6

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int v1, v6, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v4

    shr-int/lit8 v6, v1, 0x1

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int v3, v4, v6

    invoke-virtual {p0, v3, v8, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    if-gtz p1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mArrowRight:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->setImageResource(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateIndicatorPositions(I)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getWidth()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getHeight()I

    move-result v11

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v3, v14, :cond_6

    add-int v14, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    and-int/lit8 v2, v1, 0x7

    and-int/lit8 v13, v1, 0x70

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    sparse-switch v13, :sswitch_data_0

    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_0
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lez v14, :cond_3

    :cond_1
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-le v14, v15, :cond_5

    move/from16 v0, p1

    int-to-float v14, v0

    invoke-virtual {v5, v14}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :pswitch_2
    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    goto :goto_1

    :pswitch_3
    sub-int v14, v12, v9

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    goto :goto_1

    :sswitch_0
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :sswitch_1
    sub-int v14, v11, v6

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    goto :goto_2

    :sswitch_2
    sub-int v14, v11, v6

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    if-nez v14, :cond_1

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-le v14, v15, :cond_4

    const/16 p1, 0x0

    :cond_4
    add-int v14, p1, v7

    add-int v15, p1, v7

    add-int/2addr v15, v9

    add-int v16, v8, v6

    move/from16 v0, v16

    invoke-virtual {v5, v14, v8, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_5
    move-object v14, v5

    check-cast v14, Lcom/android/camera/ui/ScreenView$Indicator;

    add-int v15, p1, v7

    invoke-interface {v14, v15}, Lcom/android/camera/ui/ScreenView$Indicator;->fastOffset(I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenOffset:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSeekPoints(II)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-gt v0, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    if-ge v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_2

    add-int v2, p2, v1

    if-ge v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenView$SlideBar;->getSlideWidth()I

    move-result v2

    div-int v5, v2, v0

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    if-gt v1, v2, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v6}, Lcom/android/camera/ui/ScreenView$SlideBar;->setPosition(II)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenView$SlideBar;->invalidate()V

    :cond_0
    return-void

    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int v4, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-gez p2, :cond_1

    move p2, v0

    :goto_0
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBounds()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    const v6, 0x4e6e6b28    # 1.0E9f

    iput-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->setScrollX(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v3, v6

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->setScrollY(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->postInvalidate()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateSlidePointPosition(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateArrowIndicatorResource(I)V

    iput-boolean v7, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    return-void

    :cond_1
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    if-eq v3, v5, :cond_2

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    iput v5, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v3, v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v3, v4

    div-float v2, v3, v6

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->setScrollX(I)V

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    return v2

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getScreenCount()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->computeScroll()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    if-eq v3, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eq v2, v4, :cond_4

    :cond_2
    :goto_1
    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/ScreenView;->setFrame(IIII)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingLeft()I

    move-result v4

    add-int/2addr p2, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingRight()I

    move-result v4

    sub-int/2addr p4, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v4, v5

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v4, v10, :cond_0

    add-int v10, v4, v3

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    invoke-static {v9, p1}, Lcom/android/camera/ui/ScreenView;->resolveSize(II)I

    move-result v10

    invoke-static {v8, p2}, Lcom/android/camera/ui/ScreenView;->resolveSize(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/ui/ScreenView;->setMeasuredDimension(II)V

    if-lez v3, :cond_2

    iput v7, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->updateScreenOffset()V

    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v10, :cond_2

    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    :cond_2
    iget-boolean v10, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-lez v10, :cond_3

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    :cond_3
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/ScreenView$SavedState;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/android/camera/ui/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-boolean v5, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v5, :cond_0

    return v7

    :cond_0
    iget-boolean v5, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    return v7

    :pswitch_1
    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1, v7}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_3
    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v5, v7, :cond_2

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    invoke-virtual {p0, p1, v7}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float v0, v5, v4

    iput v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    add-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->awakenScrollBars()Z

    goto :goto_0

    :pswitch_2
    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v5, v7, :cond_6

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v5}, Lcom/android/camera/ui/ScreenView;->snapByVelocity(I)V

    :cond_6
    invoke-virtual {p0, p1, v6}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x8

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    if-ne v2, v5, :cond_2

    if-nez v3, :cond_7

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllScreens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/ScreenView;->removeScreensInLayout(II)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    :cond_2
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    return v1
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBounds:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBounds:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->measure(II)V

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->scrollToScreen(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/ScreenView;->updateSeekPoints(II)V

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/ui/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBounds()V

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v1, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->recycle()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_4
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7, p2}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    :goto_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int v6, v0, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    div-int v5, v0, v1

    if-lez p2, :cond_2

    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000    # 2500.0f

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-gt v7, v8, :cond_3

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_1
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 14

    const v13, 0x459c4000    # 5000.0f

    const/high16 v10, 0x40000000    # 2.0f

    const v12, 0x3e99999a    # 0.3f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    instance-of v9, p1, Lcom/android/camera/ui/ScreenView$Indicator;

    if-eqz v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v1, v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v0, v9

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v9, v10

    div-float v3, v1, v10

    div-float v2, v0, v10

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v3

    div-float v5, v9, v1

    iget v9, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v11, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    add-float/2addr v9, v12

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    :pswitch_4
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    neg-float v9, v5

    const/high16 v10, 0x41f00000    # 30.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    :pswitch_5
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleY(F)V

    cmpg-float v9, v5, v8

    if-gez v9, :cond_7

    move v1, v8

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    const/high16 v8, -0x3d4c0000    # -90.0f

    mul-float/2addr v8, v5

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    :pswitch_6
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_9

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v11, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    mul-float v9, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v1

    mul-float/2addr v10, v12

    sub-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    mul-float v9, v12, v5

    add-float v6, v11, v9

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    neg-float v8, v5

    const/high16 v9, 0x42340000    # 45.0f

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    :pswitch_7
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_a
    sub-float v9, v11, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    sub-float v9, v11, v5

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    const v10, 0x3f19999a    # 0.6f

    add-float v7, v10, v9

    sub-float v9, v11, v7

    mul-float/2addr v9, v1

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    sub-float v9, v11, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    :pswitch_8
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_c

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v11, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    mul-float v9, v1, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    neg-float v8, v5

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0

    return-void
.end method
