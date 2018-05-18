.class Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StereoButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/StereoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

.field final synthetic this$0:Lcom/android/camera/ui/StereoButton;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/StereoButton;)V
    .locals 1

    sget-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/StereoButton;Lcom/android/camera/ui/StereoButton$AnimationType;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/StereoButton;Lcom/android/camera/ui/StereoButton$AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->updateParameters()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0}, Lcom/android/camera/ui/StereoButton;->-get1(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0, v2}, Lcom/android/camera/ui/StereoButton;->-set0(Lcom/android/camera/ui/StereoButton;Z)Z

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    return-void
.end method

.method public updateParameters()V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v2}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v2}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v3}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/camera/ui/StereoButton;->-set1(Lcom/android/camera/ui/StereoButton;I)I

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    div-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3}, Lcom/android/camera/ui/StereoButton;->-set2(Lcom/android/camera/ui/StereoButton;I)I

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v3}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/StereoButton;->-set3(Lcom/android/camera/ui/StereoButton;I)I

    return-void
.end method
