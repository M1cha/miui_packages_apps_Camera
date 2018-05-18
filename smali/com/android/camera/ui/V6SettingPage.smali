.class public Lcom/android/camera/ui/V6SettingPage;
.super Landroid/widget/RelativeLayout;
.source "V6SettingPage.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mDefaultColumnCount:I

.field private mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorWidth:I

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mModeView:Lcom/android/camera/ui/ModeView;

.field public mOrientation:I

.field public mSettingButton:Lcom/android/camera/ui/V6SettingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0a00db

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const v2, 0x7f0a00d8

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_2

    const v2, 0x7f0a000c

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    const v2, 0x7f0a000b

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

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDefaultColumnCount:I

    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingDismissButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicatorWidth:I

    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initAnimation()V

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeView;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    iput p1, p0, Lcom/android/camera/ui/V6SettingPage;->mOrientation:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ModeView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SettingButton;->setOrientation(IZ)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string/jumbo v0, "VIEW_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6SettingPage setVisibility ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
