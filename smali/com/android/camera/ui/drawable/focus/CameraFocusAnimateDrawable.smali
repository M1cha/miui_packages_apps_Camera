.class public Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraFocusAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$PendingState;
    }
.end annotation


# static fields
.field public static BIG_RADIUS:I

.field public static CENTER_BASE_RADIUS:I


# instance fields
.field private mEvAdjustVisible:I

.field private mFocusingAnimator:Landroid/animation/ValueAnimator;

.field private mIsTouchFocus:Z

.field private mMiddleX:F

.field private mMiddleY:F

.field private mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

.field private mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

.field private mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field private mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

.field private mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

.field private mResetCenterAnimator:Landroid/animation/ValueAnimator;

.field private mShowSplitCircle:Z

.field private mSuccessFlag:I

.field private mTouchDownAnimator:Landroid/animation/ValueAnimator;

.field private pendingState:I
    .annotation build Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$PendingState;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusingAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/16 v2, 0xcd

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->CENTER_BASE_RADIUS:I

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, p2, v2, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->setTargetValues(FIIF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, p2, v2, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->setTargetValues(FIIF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setTargetValues(FIIF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setTargetValues(FIIF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0xf0

    invoke-virtual {v0, v3, p2, v2, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setTargetValues(FIIF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->setResult()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->setResult()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setResult()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setResult()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setResult()V

    return-void
.end method

.method private isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFocusingAnimation()V
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data
.end method


# virtual methods
.method public cancelFocusingAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public cancelResetCenter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v1, -0x40800000    # -1.0f

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mShowSplitCircle:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->drawCanvas(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCanvas(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mEvAdjustVisible:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->drawCanvas(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->drawCanvas(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->drawCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setDistanceY(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setEvValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setEvValue(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    return-void
.end method

.method public setCenter(II)V
    .locals 4

    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    int-to-float v1, p1

    int-to-float v2, p2

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    int-to-float v1, p1

    int-to-float v2, p2

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    int-to-float v1, p1

    int-to-float v2, p2

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setVisible(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    int-to-float v1, p1

    int-to-float v2, p2

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    int-to-float v1, p1

    int-to-float v2, p2

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setMiddle(FFF)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setEvAdjustVisible(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mEvAdjustVisible:I

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->invalidateSelf()V

    return-void
.end method

.method public setEvChanged(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setEvValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setDistanceY(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setEvValue(F)V

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->invalidateSelf()V

    return-void
.end method

.method public setEvTextVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setVisible(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->invalidateSelf()V

    return-void
.end method

.method public setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setOrientation(I)V

    return-void
.end method

.method public setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public setShowSplitCircle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mShowSplitCircle:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startFocusFailAnimation()V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$7;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$7;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startFocusSuccessAnimation(IZ)V
    .locals 6

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    if-nez v1, :cond_0

    iput v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->getVisible()I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setVisible(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setStartOffsetY(F)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$5;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$6;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$6;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startTouchDownAnimation()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 0

    return-void
.end method
