.class public Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$DualController;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;,
        Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$2;
    }
.end annotation


# instance fields
.field private mCurrentState:I

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mDualParentLayout:Landroid/view/ViewGroup;

.field private mDualZoomButton:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalSlideLayout:Landroid/view/ViewGroup;

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mIsHiding:Z

.field private mPassTouchFromZoomButtonToSlide:Z

.field private mSlideLayoutHeight:I

.field private mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

.field private mSnapStyle:Landroid/text/style/TextAppearanceSpan;

.field private mStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomInOutAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;

.field private mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

.field private mZoomRatio:I

.field private mZoomRatioTele:I

.field private mZoomRatioWide:I

.field private mZoomRequestAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Lcom/android/camera/ui/HorizontalSlideView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->sendHideMessage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$2;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 1

    const v0, 0x7f0d000c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private hideSlideView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->setEnable(Z)V

    new-instance v0, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$6;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$6;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    new-instance v0, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->notifyTipsMargin(I)V

    return-void
.end method

.method private initSlideZoomView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 7

    new-instance v4, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    invoke-direct {v4, v5, p1, v6, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    iput-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/HorizontalSlideView;->setOnPositionSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;)V

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/HorizontalSlideView;->setJustifyEnabled(Z)V

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v3

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {v4, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mapZoomRatioToPosition(I)F

    move-result v0

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {v5}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(F)V

    return-void
.end method

.method private notifyTipsMargin(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipBottomMargin(IZ)V

    return-void
.end method

.method private notifyZoomAnimationStart()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xae

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualLensNotifyToTele()V

    :cond_0
    return-void
.end method

.method private requestZoomRatio(IZ)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xae

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualZoomValueChanged(IZ)V

    :cond_0
    return-void
.end method

.method private resetZoomIcon()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wide"

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->setZoomText()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0
.end method

.method private sendHideMessage()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setZoomText()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v6, 0x0

    const/16 v8, 0x21

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    div-int/lit8 v0, v3, 0xa

    div-int/lit8 v2, v0, 0xa

    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    aput-object v5, v4, v6

    const v5, 0x7f0f012d

    invoke-virtual {p0, v5, v4}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$5;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$5;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v4, "X"

    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private showSlideView()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->setEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    new-instance v0, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    new-instance v0, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v1, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->notifyTipsMargin(I)V

    return-void
.end method

.method private toggle()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xae

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    invoke-interface {v1, v0, v3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomValue()V

    :cond_0
    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    const-string/jumbo v3, "wide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "1x"

    :goto_0
    invoke-direct {p0, v4, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->trackDualZoomChanged(ILjava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v3, "2x"

    goto :goto_0
.end method

.method private trackDualZoomChanged(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "\u53d8\u7126"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "dual_zoom_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xff4

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f040010

    return v0
.end method

.method public hideZoomButton()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 5

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v2, 0x7f0a004a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a004b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    const v2, 0x7f0a004c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HorizontalSlideView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11002c

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11002d

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060008

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060004

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060003

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060005

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v3, v1

    const/high16 v4, 0x3f400000    # 0.75f

    div-float/2addr v3, v4

    int-to-float v4, v1

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->adjustViewBackground(Landroid/view/View;I)V

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->provideAnimateElement(ILjava/util/List;)V

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isZoomVisible()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public notifyDataChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->provideAnimateElement(ILjava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->adjustViewBackground(Landroid/view/View;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->hideSlideView()V

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->toggle()V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onBackEvent(I)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    const-string/jumbo v1, "2x"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->trackDualZoomChanged(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [I

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->notifyZoomAnimationStart()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    const-string/jumbo v1, "1x"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->trackDualZoomChanged(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [I

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    const-string/jumbo v1, "1x"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->trackDualZoomChanged(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(IZ)V

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(IZ)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a004b
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return v2

    :pswitch_0
    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyDualZoom;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/data/data/config/ComponentManuallyDualZoom;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initSlideZoomView(Lcom/android/camera/data/data/ComponentData;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->showSlideView()V

    iput-boolean v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a004b
        :pswitch_0
    .end packed-switch
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isInModeChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(IZ)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    const/16 v6, 0xa5

    const/16 v5, 0x50

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-ne v1, v4, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onBackEvent(I)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v1, -0x1

    :cond_0
    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    if-ne v2, v1, :cond_2

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->resetZoomIcon()V

    :cond_1
    return-void

    :pswitch_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDegree:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    :pswitch_3
    return-void

    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-static {v2, v5}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-static {v2, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->resetZoomIcon()V

    if-eqz p2, :cond_4

    if-ne p1, v6, :cond_5

    const/16 v2, 0xa7

    if-eq v0, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    const/16 v2, 0xa7

    if-ne v0, v2, :cond_6

    new-instance v2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    if-nez p2, :cond_7

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_7
    new-instance v2, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_9

    if-ne v0, v6, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    :cond_a
    new-instance v2, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11002b

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSnapNumVisible(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->hideSlideView()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomValue()V

    goto :goto_0
.end method

.method public showZoomButton()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    return-void
.end method

.method public updateZoomValue()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "wide"

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    if-ne v2, v3, :cond_5

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->setZoomText()V

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_4

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    if-ne v2, v3, :cond_1

    goto :goto_1
.end method

.method public visibleHeight()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    return v0
.end method
