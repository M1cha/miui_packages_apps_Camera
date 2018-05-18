.class public abstract Lcom/android/camera/animation/type/BaseOnSubScribe;
.super Ljava/lang/Object;
.source "BaseOnSubScribe.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field protected mAniView:Landroid/view/View;

.field protected mDurationTime:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field protected mStartDelayTime:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mDurationTime:I

    iput-object p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    return-void
.end method

.method protected static final setAnimateViewVisible(Landroid/view/View;I)V
    .locals 1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end method

.method protected onAnimationEnd()V
    .locals 0

    return-void
.end method

.method public setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;
    .locals 0

    iput p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mDurationTime:I

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;
    .locals 0

    iput p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mStartDelayTime:I

    return-object p0
.end method

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mStartDelayTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mDurationTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/android/camera/animation/type/BaseOnSubScribe$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe$1;-><init>(Lcom/android/camera/animation/type/BaseOnSubScribe;Lio/reactivex/CompletableEmitter;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/android/camera/animation/type/BaseOnSubScribe$2;

    invoke-direct {v1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe$2;-><init>(Lcom/android/camera/animation/type/BaseOnSubScribe;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/animation/AnimationDelegate;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method
