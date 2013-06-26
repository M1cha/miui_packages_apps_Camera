.class public Lcom/android/camera/FocusManager;
.super Lcom/android/camera/AbstractFocusManager;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/view/View;

.field private mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastFocusMode:I

.field private mLastState:I

.field private mLatestFocusFace:Landroid/graphics/RectF;

.field private mLatestFocusTime:J

.field mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 1
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "focusIndicatorRotate"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0}, Lcom/android/camera/AbstractFocusManager;-><init>()V

    .line 139
    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 140
    iput v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusMode:I

    .line 220
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p7}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 222
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 223
    iput-object p2, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 224
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 225
    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 226
    iput-object p5, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 227
    invoke-virtual {p0, p6}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 228
    return-void
.end method

.method private InitFoucusVariables(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->checkFocusMeteringArea()V

    .line 416
    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_AREA_HEIGHT:I

    const/high16 v3, 0x3f80

    iget v6, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 418
    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_AREA_HEIGHT:I

    const/high16 v3, 0x3fc0

    iget v6, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 422
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 424
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_WIDTH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v9

    .line 426
    .local v9, left:I
    iget v0, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_WIDTH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    iget v3, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v12

    .line 428
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v10, v9, v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 430
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 431
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v1, 0x0

    aput v1, v11, v0

    .line 432
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->requestLayout()V

    .line 433
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->unlockAeAwbLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/FocusManager;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    return-object v0
.end method

.method private autoFocus(I)V
    .locals 4
    .parameter "focusMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 514
    invoke-direct {p0, p1}, Lcom/android/camera/FocusManager;->isFocusValide(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 518
    :cond_0
    if-eq p1, v1, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eq p1, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection(Z)V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 522
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 525
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 527
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 519
    goto :goto_1
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 534
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 536
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 537
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 538
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 539
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    :cond_0
    return-void
.end method

.method private checkFocusMeteringArea()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 402
    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mFocusArea:Ljava/util/List;

    .line 404
    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mMeteringArea:Ljava/util/List;

    .line 406
    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_1
    return-void
.end method

.method private focusPoint(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "focusMode"

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 447
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 449
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusManager;->InitFoucusVariables(II)V

    .line 451
    if-ne p3, v2, :cond_4

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->isFaceBigEnough()Z

    move-result v0

    if-nez v0, :cond_4

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mMeteringArea:Ljava/util/List;

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 456
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 457
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0
.end method

.method private isFocusEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 686
    iget-boolean v1, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusValide(I)Z
    .locals 7
    .parameter "focusMode"

    .prologue
    const/4 v6, 0x1

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 499
    .local v0, now:J
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-wide/16 v4, 0x1388

    .line 501
    .local v4, timeout:J
    :goto_0
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusMode:I

    if-ge p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    :cond_0
    const-string v2, "FocusManager"

    const-string v3, "Start autofocus."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    .line 504
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastFocusMode:I

    move v2, v6

    .line 510
    :goto_1
    return v2

    .line 499
    .end local v4           #timeout:J
    :cond_1
    const-wide/16 v4, 0xfa0

    goto :goto_0

    .line 507
    .restart local v4       #timeout:J
    :cond_2
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusMode:I

    if-ne v2, v6, :cond_3

    .line 508
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 510
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 656
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lockAeAwbLock()V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 294
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 296
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setFocusState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 256
    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 259
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 260
    return-void
.end method

.method private unlockAeAwbLock()V
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 303
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 129
    invoke-super/range {p0 .. p8}, Lcom/android/camera/AbstractFocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mMirror:Z

    if-eqz v0, :cond_3

    .line 328
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 329
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 333
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    goto :goto_0

    .line 334
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public focusFaceArea()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/high16 v9, 0x42a0

    const/high16 v8, 0x4000

    const/4 v4, 0x1

    .line 462
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-nez v5, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v3

    .line 463
    :cond_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FaceView;->getFocusFaceRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 464
    .local v0, rect:Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/camera/FocusManager;->mLastFocusMode:I

    if-ne v5, v4, :cond_2

    .line 465
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_2

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_0

    .line 471
    :cond_2
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 472
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    div-float/2addr v3, v8

    float-to-int v1, v3

    .line 473
    .local v1, x:I
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    div-float/2addr v3, v8

    float-to-int v2, v3

    .line 474
    .local v2, y:I
    invoke-direct {p0, v1, v2, v4}, Lcom/android/camera/FocusManager;->focusPoint(III)V

    move v3, v4

    .line 475
    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 551
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 578
    :goto_0
    return-object v3

    .line 552
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 554
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 558
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 559
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 560
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 561
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 562
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 568
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 571
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 573
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 578
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 559
    .restart local v0       #i:I
    .restart local v1       #mode:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 628
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 344
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 348
    if-eqz p1, :cond_1

    .line 349
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 350
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 355
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 356
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    .line 384
    :cond_0
    :goto_1
    return-void

    .line 352
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 353
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0

    .line 357
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v1, :cond_6

    .line 361
    if-eqz p1, :cond_4

    .line 362
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 363
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 367
    const-string v0, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusMode:I

    if-eq v0, v1, :cond_3

    .line 369
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 375
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 378
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 372
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mMirror:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 373
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 372
    goto :goto_3

    .line 380
    :cond_6
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 2
    .parameter "moving"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 394
    if-eqz p1, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 495
    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 1

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExisted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 671
    :cond_1
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7
    .parameter "a"

    .prologue
    const/4 v6, 0x0

    .line 674
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    const-wide/16 v4, 0x190

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 677
    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 678
    const-wide/high16 v0, 0x3ff8

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 683
    :cond_1
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 485
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 490
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 491
    return-void
.end method

.method public onShutter()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->unlockAeAwbLock()V

    .line 480
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 481
    return-void
.end method

.method public onShutterDown(I)V
    .locals 2
    .parameter "fromWhat"

    .prologue
    const/4 v1, 0x3

    .line 267
    iget-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 271
    iget v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    if-eq v0, v1, :cond_0

    .line 276
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->lockAeAwbLock()V

    .line 278
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    goto :goto_0

    .line 285
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 314
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 436
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    .line 437
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/FocusManager;->focusPoint(III)V

    .line 438
    return-void
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 613
    iget-boolean v2, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 625
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 618
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 619
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 620
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 621
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 622
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    .line 623
    iput-object v5, p0, Lcom/android/camera/AbstractFocusManager;->mFocusArea:Ljava/util/List;

    .line 624
    iput-object v5, p0, Lcom/android/camera/AbstractFocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 648
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 649
    return-void
.end method

.method public bridge synthetic setDisplayOrientation(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/camera/AbstractFocusManager;->setDisplayOrientation(I)V

    return-void
.end method

.method public setFaceView(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .parameter "faceView"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 251
    return-void
.end method

.method public setFocusAreaIndicator(Landroid/view/View;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 209
    move-object v1, p1

    check-cast v1, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 210
    const v1, 0x7f0c0043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    .line 212
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 213
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    return-void
.end method

.method public bridge synthetic setMirror(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/camera/AbstractFocusManager;->setMirror(Z)V

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 232
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 235
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 237
    return-void

    :cond_2
    move v0, v2

    .line 232
    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 241
    iget v0, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 242
    :cond_0
    iput p1, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    .line 243
    iput p2, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    .line 244
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 246
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 590
    iget-boolean v1, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget v1, p0, Lcom/android/camera/FocusManager;->mLastFocusMode:I

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 596
    .local v0, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :goto_1
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v1, :cond_3

    .line 597
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 593
    .end local v0           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    goto :goto_1

    .line 598
    .restart local v0       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_3
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 599
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 601
    :cond_5
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 603
    invoke-interface {v0, v3}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 604
    :cond_6
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 605
    invoke-interface {v0, v3}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 606
    :cond_7
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 607
    invoke-interface {v0, v3}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    goto :goto_0
.end method
