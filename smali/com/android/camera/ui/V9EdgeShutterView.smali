.class public Lcom/android/camera/ui/V9EdgeShutterView;
.super Landroid/view/View;
.source "V9EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V9EdgeShutterView$1;,
        Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;,
        Lcom/android/camera/ui/V9EdgeShutterView$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final CENTER_RADIUS:I

.field private static final NEAR_THRESHOLD:I

.field private static NORMAL_TAP_MAXY:I

.field private static NORMAL_TOUCH_MAXY:I

.field private static final OUTER_CIRCLE_WIDTH:I

.field private static final OUT_RADIUS:I

.field private static final VIEW_WIDTH:I


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mClickAnim:Landroid/animation/ValueAnimator;

.field private mFlyOutAnim:Landroid/animation/ValueAnimator;

.field private mFlyinAnim:Landroid/animation/ValueAnimator;

.field private mFlyinInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mMoveAnim:Landroid/animation/ValueAnimator;

.field private mMoveInterpolator:Landroid/view/animation/Interpolator;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mPressInterpolator:Landroid/view/animation/Interpolator;

.field private mVisibleBounds:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/V9EdgeShutterView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/V9EdgeShutterView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V9EdgeShutterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->checkPosture()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V9EdgeShutterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->hideShutterView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/V9EdgeShutterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V9EdgeShutterView;->setRelateVisible(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const v0, 0x4285570a    # 66.67f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->NEAR_THRESHOLD:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->OUT_RADIUS:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->CENTER_RADIUS:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    const-string/jumbo v1, "camera_edge_max"

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TAP_MAXY:I

    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TAP_MAXY:I

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->NEAR_THRESHOLD:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TOUCH_MAXY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/camera/ui/V9EdgeShutterView$ReverseInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V9EdgeShutterView$ReverseInterpolator;-><init>(Lcom/android/camera/ui/V9EdgeShutterView;Lcom/android/camera/ui/V9EdgeShutterView$ReverseInterpolator;)V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mPressInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/camera/ui/V9EdgeShutterView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V9EdgeShutterView$1;-><init>(Lcom/android/camera/ui/V9EdgeShutterView;)V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private checkPosture()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCapturePosture()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->hideShutterView()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getTop()I

    move-result v1

    sget v2, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TAP_MAXY:I

    if-le v1, v2, :cond_1

    goto :goto_0
.end method

.method private couldTouch(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/android/camera/ui/V9EdgeShutterView;->NEAR_THRESHOLD:I

    if-gt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/android/camera/ui/V9EdgeShutterView;->NEAR_THRESHOLD:I

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private createClickAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    const-string/jumbo v2, "x"

    const/4 v1, 0x1

    new-array v3, v1, [F

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v1

    sget v4, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    if-ge v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v1

    sget v4, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v1, v4

    :goto_0
    int-to-float v1, v1

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mPressInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v1

    sget v4, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v4, v4, 0x5

    sub-int/2addr v1, v4

    goto :goto_0
.end method

.method private createFlyInAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v3

    sget v4, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    if-ge v3, v4, :cond_0

    sget v3, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    neg-int v2, v3

    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float v5, v2

    const/4 v6, 0x0

    aput v5, v4, v6

    int-to-float v5, v1

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_0
    sget v2, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createFlyOutAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v3

    sget v4, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x0

    sget v3, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    neg-int v1, v3

    :goto_0
    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float v5, v2

    const/4 v6, 0x0

    aput v5, v4, v6

    int-to-float v5, v1

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    goto :goto_0
.end method

.method private createMoveAnimation(Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "x"

    new-array v4, v7, [F

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string/jumbo v3, "y"

    new-array v4, v7, [F

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private flyto(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/ui/V9EdgeShutterView;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v1, "CameraEdgeShutterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "flyto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getViewState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9EdgeShutterView;->setInitLayoutParameters(Landroid/graphics/Rect;)V

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/ui/V9EdgeShutterView;->layout(IIII)V

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->createFlyInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    invoke-direct {p0, v5}, Lcom/android/camera/ui/V9EdgeShutterView;->setRelateVisible(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9EdgeShutterView;->createMoveAnimation(Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/ui/V9EdgeShutterView;->layout(IIII)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V9EdgeShutterView;->setX(F)V

    goto :goto_0
.end method

.method private getViewState()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "View state mleft=%d mtop=%d width=%d height=%d mVisibleState=%d getVisibility()=%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideShutterView()V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->createFlyOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    :cond_0
    return-void
.end method

.method private isDeviceStateReady(III)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isStable()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CameraEdgeShutterView"

    const-string/jumbo v3, "Device is not stable, ignore edgetouch"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCapturePosture()I

    move-result v1

    if-nez v1, :cond_1

    if-le p2, p3, :cond_1

    const-string/jumbo v2, "CameraEdgeShutterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device post wrong, y is too big, capturePosture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " maxY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    if-ne v1, v3, :cond_3

    if-eqz p1, :cond_3

    :cond_2
    const-string/jumbo v2, "CameraEdgeShutterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device post wrong, touching bottom edge, capturePosture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_2

    :cond_4
    return v3
.end method

.method private resendUnusedMessage()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    const-string/jumbo v2, "CameraEdgeShutterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flyto reviseLocation x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " viewstate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getViewState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    mul-int/2addr v2, p2

    sget v3, Lcom/android/camera/Util;->sWindowHeight:I

    div-int v0, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    sub-int v2, p2, v0

    sget v3, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    add-int/2addr v3, p1

    sub-int v4, p2, v0

    sget v5, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    add-int/2addr v4, v5

    invoke-direct {v1, p1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_3

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_4

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private setInitLayoutParameters(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V9EdgeShutterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRelateVisible(I)V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V9EdgeShutterView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onDeviceMoving()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDevicePostureChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/V9EdgeShutterView;->OUT_RADIUS:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/V9EdgeShutterView;->CENTER_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onEdgeTap(II)Z
    .locals 3

    const-string/jumbo v0, "CameraEdgeShutterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEdgeTouch x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " viewstate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getViewState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V9EdgeShutterView;->couldTouch(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TAP_MAXY:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/V9EdgeShutterView;->isDeviceStateReady(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V9EdgeShutterView;->flyto(II)V

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->resendUnusedMessage()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouch(II)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "CameraEdgeShutterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEdgeTouch x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->getViewState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V9EdgeShutterView;->couldTouch(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TOUCH_MAXY:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/V9EdgeShutterView;->isDeviceStateReady(III)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const v2, 0x7f0a00ee

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->createClickAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->resendUnusedMessage()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V9EdgeShutterView;Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V9EdgeShutterView;->setMeasuredDimension(II)V

    return-void
.end method
