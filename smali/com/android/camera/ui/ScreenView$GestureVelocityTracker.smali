.class Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# instance fields
.field private mFoldX:F

.field private mPointerId:I

.field private mPrevX:F

.field private mStartX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ScreenView;)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;)V

    return-void
.end method

.method private reset()V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    return-void

    :cond_2
    iput v4, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void

    :cond_4
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    :goto_1
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iput v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    :cond_5
    :goto_2
    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void

    :cond_6
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    :goto_3
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iput v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    goto :goto_3
.end method

.method public getFlingDirection(F)I
    .locals 5

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x3

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v0, v2, :cond_2

    return v4

    :cond_2
    return v1

    :cond_3
    iget v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v1, v2, :cond_4

    return v4

    :cond_4
    return v0

    :cond_5
    return v4

    :cond_6
    const/4 v0, 0x4

    return v0
.end method

.method public getXVelocity(III)F
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public init(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->reset()V

    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->reset()V

    return-void
.end method
