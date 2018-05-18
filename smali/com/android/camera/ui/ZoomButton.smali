.class public Lcom/android/camera/ui/ZoomButton;
.super Landroid/widget/TextView;
.source "ZoomButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mHandler:Landroid/os/Handler;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mPopup:Lcom/android/camera/ui/ZoomPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mTouchDownEventOriginX:F

.field private mTouchDownEventPassed:Z

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomPopupAdjusting:Z

.field private mZoomRatio:I

.field private mZoomRatioTele:I

.field private mZoomRatioWide:I

.field private mZoomRequestAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method private getKey()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getPreferenceSize()I
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ZoomButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomPopup;->reloadPreference()V

    return-void

    :cond_2
    return-void
.end method

.method private isPopupShown()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/ZoomPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVisible()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestZoomRatio(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    return-void
.end method

.method private requestZoomRatio(IZ)V
    .locals 3

    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    if-eq p1, v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->onZoomRatioChanged(IZ)V

    :cond_0
    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private toggle()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->reloadPreference()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->requestSwitchCamera()V

    return-void
.end method

.method private triggerPopup()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomButton;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->showPopup()V

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->sendHideMessage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomButton;->setPressed(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/ZoomPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_0
    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->sendHideMessage()V

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->toggle()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [I

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [I

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    invoke-static {p0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->triggerPopup()V

    iput-boolean v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    return v2

    :cond_0
    return v1
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    iput-boolean v3, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_5

    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    if-nez v1, :cond_6

    iput v0, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    iput-boolean v5, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public reloadPreference()V
    .locals 9

    const/16 v8, 0x21

    iget-object v6, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isVisible()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f0f022c

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    iput v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v7, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    if-ne v6, v7, :cond_7

    :cond_2
    :goto_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    div-int/lit8 v2, v6, 0xa

    div-int/lit8 v5, v2, 0xa

    rem-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/ZoomButton;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :goto_2
    const-string/jumbo v6, "X"

    iget-object v7, p0, Lcom/android/camera/ui/ZoomButton;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomButton;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    iput v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v4

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_6

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    iput v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    :cond_7
    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v7, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/ZoomButton;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_2
.end method

.method public requestSwitchCamera()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->onZoomSwitchCamera()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomPopup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setZoomRatio(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    return-void
.end method

.method public showPopup()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/ZoomPopup;->setOrientation(IZ)V

    :cond_0
    return-void
.end method
