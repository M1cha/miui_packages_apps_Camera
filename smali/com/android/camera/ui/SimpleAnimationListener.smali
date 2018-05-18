.class public Lcom/android/camera/ui/SimpleAnimationListener;
.super Ljava/lang/Object;
.source "SimpleAnimationListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mShowAnimation:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
