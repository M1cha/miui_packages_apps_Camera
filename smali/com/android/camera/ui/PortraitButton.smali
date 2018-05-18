.class public Lcom/android/camera/ui/PortraitButton;
.super Landroid/widget/ImageView;
.source "PortraitButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PortraitButton$1;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHintShowAnimator:Landroid/animation/AnimatorSet;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSwitchOnAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/PortraitButton;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/camera/ui/PortraitButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PortraitButton$1;-><init>(Lcom/android/camera/ui/PortraitButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/PortraitButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    return-void
.end method

.method private requestPortraitModeChange()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const-string/jumbo v4, "pref_camera_portrait_mode_key"

    const/4 v1, 0x0

    const v2, 0x7f0a00c6

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private reverseTransition()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    :cond_0
    return-void
.end method

.method private startTransition()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setActivated(Z)V

    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->reverseTransition()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->updatePreference()V

    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->requestPortraitModeChange()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setActivated(Z)V

    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->startTransition()V

    goto :goto_0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public updatePreference()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
