.class public Lcom/android/camera/ui/AnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "AnimationImageView.java"

# interfaces
.implements Lcom/android/camera/ui/AnimateView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;
    }
.end annotation


# instance fields
.field private mIsEnable:Z

.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/AnimationImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/AnimationImageView;->mIsEnable:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public hide(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->clearAnimation()V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->clearAnimation()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
