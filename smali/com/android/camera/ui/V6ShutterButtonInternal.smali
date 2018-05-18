.class public Lcom/android/camera/ui/V6ShutterButtonInternal;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ShutterButtonInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6ShutterButtonInternal$1;
    }
.end annotation


# static fields
.field private static LONG_PRESSED_TRIGGER_TIME:I

.field private static final OUTER_CIRCLE_WIDTH:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private FLING_DISTANCE_THRESHOLD:I

.field private FLING_VELOCITY_THRESHOLD:I

.field private mActionDown:Z

.field private mAnimationType:I

.field private mBigRadius:F

.field private mCameraOpened:Z

.field private mCenterMaxRadius:F

.field private mCenterMinRadius:F

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mCenterPath:Landroid/graphics/Path;

.field private mCenterRadius:F

.field private mCenterThresholdRadius:F

.field private mCenterX:I

.field private mCenterY:I

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mIncreaseFlag:Z

.field private mIsVideo:Z

.field private mLongClickable:Z

.field private mOutTime:J

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mShutterRect:Landroid/graphics/Rect;

.field private mStartTime:J

.field private mTargetImage:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6ShutterButtonInternal;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6ShutterButtonInternal;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V6ShutterButtonInternal;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mDuration:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/V6ShutterButtonInternal;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/V6ShutterButtonInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/V6ShutterButtonInternal;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/V6ShutterButtonInternal;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->animationDone()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onLongPress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->OUTER_CIRCLE_WIDTH:I

    const/16 v0, 0x1f4

    sput v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->LONG_PRESSED_TRIGGER_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_VELOCITY_THRESHOLD:I

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_DISTANCE_THRESHOLD:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    iput v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    iput-boolean v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    new-instance v0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6ShutterButtonInternal$1;-><init>(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6ShutterButtonInternal;->enablePressFilter(Z)V

    return-void
.end method

.method private animationDone()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iput v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    return-void

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mTargetImage:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkGesture(II)V
    .locals 8

    iget-wide v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v2, p1, v4

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v3, p2, v4

    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int v0, v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    sget-object v4, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gesture d2(d*d)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_2

    iget v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_VELOCITY_THRESHOLD:I

    div-int v5, v0, v1

    if-gt v4, v5, :cond_2

    :goto_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_1
    return-void

    :cond_2
    iget v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_DISTANCE_THRESHOLD:I

    if-ge v4, v0, :cond_1

    goto :goto_0
.end method

.method private doAnimate(IJ)V
    .locals 6

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v3, 0x3f67c1be    # 0.9053f

    iget-object v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->animationDone()V

    :cond_1
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mStartTime:J

    iput-wide p2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mDuration:J

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    :goto_1
    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_0
    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    const v3, 0x3f5094c4

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-ne v2, v0, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    const v1, 0x3ef14e3c    # 0.4713f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    sub-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterThresholdRadius:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onClick()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0a0014

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const v2, 0x7f0a0014

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onFocused(Z)V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocused  mMessageDispatcher+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v1, 0x3

    const v2, 0x7f0a0014

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onLongPress()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x1

    const v2, 0x7f0a0014

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const-wide/16 v10, 0xc8

    const-wide/16 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCameraOpened:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dispatchTouchEvent: drop event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v9

    :pswitch_1
    iget-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    :goto_1
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onClick()V

    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFocused(Z)V

    iput-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    iput-boolean v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    float-to-int v4, v2

    float-to-int v5, v3

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->checkGesture(II)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v9, v10, v11}, Lcom/android/camera/ui/V6ShutterButtonInternal;->doAnimate(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    :goto_4
    iput-boolean v9, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    invoke-direct {p0, v9}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFocused(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onClick()V

    :cond_8
    iget-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    sget v5, Lcom/android/camera/ui/V6ShutterButtonInternal;->LONG_PRESSED_TRIGGER_TIME:I

    int-to-long v6, v5

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x2

    invoke-direct {p0, v4, v10, v11}, Lcom/android/camera/ui/V6ShutterButtonInternal;->doAnimate(IJ)V

    goto :goto_4

    :pswitch_3
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    iput-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto/16 :goto_0

    :cond_a
    iget-wide v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-nez v6, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    :cond_1
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterThresholdRadius:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    :cond_2
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget-object v9, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    const v7, 0x3f35c28f    # 0.71f

    mul-float v3, v6, v7

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v6, v6

    sub-float v2, v6, v3

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v6, v6

    add-float v4, v6, v3

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v6, v6

    sub-float v5, v6, v3

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v6, v6

    add-float v0, v6, v3

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    sub-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterThresholdRadius:F

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    mul-float v1, v3, v6

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v8, v8

    add-float/2addr v8, v1

    invoke-virtual {v6, v7, v8, v2, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8, v2, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setLongClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    return-void
.end method
