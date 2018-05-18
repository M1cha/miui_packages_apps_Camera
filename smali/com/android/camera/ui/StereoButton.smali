.class public Lcom/android/camera/ui/StereoButton;
.super Landroid/widget/ImageView;
.source "StereoButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StereoButton$AnimationType;,
        Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

.field private mExitButton:Lcom/android/camera/ui/ExitButton;

.field private mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mIsShowing:Z

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mModeExitButtonCenterX:I

.field private mModeExitButtonHalfWidth:I

.field private mModeExitButtonPadding:I

.field private mPopup:Lcom/android/camera/ui/StereoPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mRotateImageAnim:Landroid/view/animation/Animation;

.field private mSlideDownAnim:Landroid/view/animation/Animation;

.field private mSlideUpAnim:Landroid/view/animation/Animation;

.field private mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/StereoButton;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/StereoButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/StereoButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/StereoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    const v0, 0x7f050011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f050018

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f050017

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-void
.end method

.method private animateShow()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createExpandAnimator(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/StereoButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->EXPAND:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->updateParameters()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    goto :goto_1
.end method

.method private doWithPopup(ZZ)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getKey()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private initializePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "StereoButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    return-void

    :cond_2
    return-void
.end method

.method private reloadPreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method private updateActivated()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    goto :goto_0
.end method

.method private updateExitButton(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitContent(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dismissPopup(Z)Z
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->dismiss(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->dismissScale(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public dismissScale(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/camera/ui/StereoButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$2;-><init>(Lcom/android/camera/ui/StereoButton;)V

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    goto :goto_0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const v2, 0x7f0a00c7

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->reloadPreference()V

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    :cond_1
    new-instance v0, Lcom/android/camera/ui/StereoButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$1;-><init>(Lcom/android/camera/ui/StereoButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPopupVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/StereoPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    goto :goto_0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    return v0
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_0
    return-void
.end method

.method public setDeltaX(I)V
    .locals 4

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v3, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    sub-int/2addr v2, v3

    sub-int v0, v2, p1

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v3, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    add-int/2addr v2, v3

    add-int v1, v2, p1

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/ExitButton;->setExpandingSize(II)V

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setStereoValue(ZZZ)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    :goto_1
    invoke-direct {p0, p3}, Lcom/android/camera/ui/StereoButton;->updateExitButton(Z)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0a00c7

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    goto :goto_1
.end method

.method public showPopup(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->show(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StereoButton;->doWithPopup(ZZ)V

    :cond_0
    return-void
.end method

.method public showScale(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    return-void
.end method

.method public updateVisible()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCaptureIntent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    goto :goto_0
.end method
