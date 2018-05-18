.class public Lcom/android/camera/FocusManager;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$Listener;,
        Lcom/android/camera/FocusManager$MainHandler;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mCafStartTime:J

.field private mContext:Landroid/content/Context;

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mKeepFocusUIState:Z

.field private mLastFocusFrom:I

.field private mLastState:I

.field private mLatestFocusFace:Landroid/graphics/RectF;

.field private mLatestFocusTime:J

.field private mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringAreaSupported:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPendingMultiCapture:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/FocusManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p5}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iput-object p3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    return-void
.end method

.method private autoFocus(I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "FocusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start autoFocus from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eq p1, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xa6

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-ne p1, v2, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v1

    if-ne v2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1, v3}, Lcom/android/camera/FocusManager$Listener;->stopObjectTracking(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->pauseIndicator(I)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v1

    if-eq v4, v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->resumeIndicator(I)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v1, "FocusManager"

    const-string/jumbo v2, "cancelAutoFocus"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method private capture()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private focusPoint(IIIZ)V
    .locals 8

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    :cond_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZZ)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_5

    xor-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4

    if-ne v7, p3, :cond_6

    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v6}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    iput-boolean v6, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    :cond_6
    iput p3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    invoke-direct {p0, v7}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private getTapAction()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x3

    return v1
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private initializeFocusIndicator(III)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewPosition(III)V

    :cond_0
    return-void
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .locals 11

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v10

    check-cast v10, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    if-eqz v10, :cond_1

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isNeedExposure(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    const v4, 0x3fe66666    # 1.8f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private initializeParameters(IIIZZ)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isFishEye()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v8, v0, [F

    int-to-float v0, p1

    aput v0, v8, v1

    int-to-float v0, p2

    aput v0, v8, v2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v8, v1

    float-to-int v3, v0

    aget v0, v8, v2

    float-to-int v4, v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    xor-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;->initializeMeteringAreas(IIIIIII)V

    :cond_2
    return-void
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFocusEnabled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusValid(I)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_0
    const/16 v2, 0x1388

    :goto_0
    int-to-long v4, v2

    if-ge p1, v7, :cond_1

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-lt p1, v2, :cond_3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    return v6

    :cond_2
    const/16 v2, 0xfa0

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v2, v6, :cond_4

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private isNeedCancelAutoFocus()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    :cond_0
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
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

    const/4 v0, 0x0

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

.method private multiCapture()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    :cond_0
    return v0
.end method

.method private resetFocusAreaToCenter()V
    .locals 7

    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(III)V

    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .locals 9

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v0

    invoke-interface {v7, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFaceExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v0

    invoke-interface {v7, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_0

    iput-object v8, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v3, v0

    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v4, v0

    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setFocusState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/FocusManager;->mState:I

    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/FocusManager;->mLastState:I

    return-void
.end method


# virtual methods
.method public cancelMultiSnapPending()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public doMultiSnap(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0
.end method

.method public doSnap()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public focusFaceArea()Z
    .locals 11

    const/high16 v10, 0x42a00000    # 80.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa6

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v4

    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    :cond_0
    return v7

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    return v7

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v4, v8, :cond_5

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gez v4, :cond_5

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gez v4, :cond_5

    return v7

    :cond_5
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v9

    float-to-int v2, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v9

    float-to-int v3, v4

    invoke-direct {p0, v2, v3, v8, v7}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    return v8
.end method

.method public getAeAwbLock()Z
    .locals 1

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

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "manual"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "manual"

    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    const-string/jumbo v2, "continuous-picture"

    invoke-static {v2, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "continuous-picture"

    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v2, "auto"

    invoke-static {v2, v1}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "auto"

    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    :cond_3
    :goto_1
    const-string/jumbo v2, "continuous-picture"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    :cond_4
    const-string/jumbo v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FocusMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    return-object v2

    :cond_5
    const-string/jumbo v2, "continuous-picture"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "continuous-video"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "macro"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    const-string/jumbo v2, "auto"

    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1
.end method

.method public getLastFocusFrom()I
    .locals 1

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    return v0
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

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_0

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_4

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    const-string/jumbo v0, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_1
.end method

.method public onAutoFocusMoving(ZZ)V
    .locals 13

    const/4 v12, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "FocusManager"

    const-string/jumbo v4, "onAutoFocusMoving"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v6, 0xa6

    invoke-virtual {v3, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFaceExists(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    const/4 v1, 0x0

    :cond_1
    const-string/jumbo v3, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAutoFocusMoving: mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " show="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v3, :cond_2

    const-string/jumbo v3, "continuous-picture"

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_6

    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v3, v4, :cond_4

    invoke-direct {p0, v8}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    :cond_4
    const-string/jumbo v3, "FocusManager"

    const-string/jumbo v5, "Camera KPI: CAF start"

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    if-eqz v1, :cond_5

    invoke-interface {v0, v4, v8}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    const-string/jumbo v3, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_8

    invoke-direct {p0, v5}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v5}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    :goto_1
    if-eqz v1, :cond_7

    if-eqz p2, :cond_9

    move v3, v4

    :goto_2
    invoke-interface {v0, v4, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    :cond_7
    if-ne v2, v4, :cond_5

    invoke-direct {p0, v5}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0

    :cond_8
    invoke-direct {p0, v12}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v12}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_1

    :cond_9
    move v3, v5

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    return-void
.end method

.method public onShutter()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterUp()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v0

    if-ne v2, v0, :cond_0

    move v1, v2

    :goto_0
    const/4 v3, 0x3

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    invoke-direct {p0, v2, p1, p2}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(III)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    return-void
.end method

.method public prepareCapture(ZI)V
    .locals 9

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    const-string/jumbo v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "macro"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget v5, p0, Lcom/android/camera/FocusManager;->mLastState:I

    if-ne v5, v6, :cond_2

    const/4 v4, 0x0

    :cond_2
    const-string/jumbo v5, "continuous-picture"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    xor-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v5, v6, :cond_6

    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa6

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFaceExists(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isHalDoesCafWhenFlashOn()Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v5, v8, :cond_4

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    invoke-direct {p0, v7}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    iput-boolean v8, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    iget v5, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    invoke-direct {p0, v5}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    iput-boolean v7, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    goto :goto_1
.end method

.method public removeMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestAutoFocus()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v2, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa6

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    if-eqz v1, :cond_2

    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iput-boolean v4, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToFaceArea()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    goto :goto_0
.end method

.method public resetAfterCapture(Z)V
    .locals 3

    const/4 v2, 0x7

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    invoke-virtual {p0, v2}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->removeMessages()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0
.end method

.method public resetFocusIndicator(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    :cond_0
    return-void
.end method

.method public resetFocusStateIfNeeded()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resetTouchFocus(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    invoke-virtual {p0, p1}, Lcom/android/camera/FocusManager;->resetFocusIndicator(I)V

    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "auto"

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 1

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    :cond_1
    return-void
.end method

.method public triggerFocusOnly(II)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZZ)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    :cond_3
    return-void
.end method

.method public updateExposure(II)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZZ)V

    return-void
.end method

.method public updateFocusUI()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa6

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v5, v3, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v0

    :cond_2
    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-ne v0, v2, :cond_3

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    goto :goto_0

    :cond_3
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearIndicator(I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v0, v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "continuous-picture"

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
