.class public Lcom/android/camera/ui/EffectButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "EffectButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDispatching:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/EffectPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSavedValue:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "EffectButton"

    sput-object v0, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    return-void
.end method

.method private doTapButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->triggerPopup()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->toggle()V

    goto :goto_0
.end method

.method private findCurrentIndex()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

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

.method private getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPopupShown()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyClickToDispatcher()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x6

    const v2, 0x7f0a00d8

    const/4 v3, 0x2

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    return-void
.end method

.method private refreshIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->findCurrentIndex()I

    move-result v0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f02009e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectButton;->setImageResource(I)V

    return-void

    :cond_1
    const v0, 0x7f02009d

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->reloadPreference()V

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    return-void
.end method

.method private triggerPopup()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->showPopup()V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->stopEffectRender()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_0
    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected initializePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    return-void

    :cond_2
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    return v3

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->doTapButton()V

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EffectButton;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return v3

    :cond_5
    return v3
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public refreshValue()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/EffectPopup;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/EffectPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->startEffectRender()V

    :cond_0
    return-void
.end method
