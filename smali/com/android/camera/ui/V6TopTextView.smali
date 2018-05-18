.class public Lcom/android/camera/ui/V6TopTextView;
.super Landroid/widget/TextView;
.source "V6TopTextView.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/AnimateView;


# instance fields
.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTapButton()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->toggle()V

    goto :goto_0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

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

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->reloadPreference()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6TopTextView;->notifyPopupVisibleChange(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hide(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->clearAnimation()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initializePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "V6TopTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_2
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyClickToDispatcher()V
    .locals 0

    return-void
.end method

.method protected notifyPopupVisibleChange(Z)V
    .locals 0

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    return v3

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    return v3

    :cond_2
    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->doTapButton()V

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6TopTextView;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_4
    return v3

    :cond_5
    return v3
.end method

.method public recoverIfNeeded()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    return-void
.end method

.method public reloadPreference()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->updateTitle()V

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->clearAnimation()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->notifyPopupVisibleChange(Z)V

    :cond_0
    return-void
.end method

.method protected updateTitle()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6TopTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
