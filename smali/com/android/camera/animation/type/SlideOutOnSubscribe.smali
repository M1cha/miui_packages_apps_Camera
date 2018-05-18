.class public Lcom/android/camera/animation/type/SlideOutOnSubscribe;
.super Lcom/android/camera/animation/type/BaseOnSubScribe;
.source "SlideOutOnSubscribe.java"


# instance fields
.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;-><init>(Landroid/view/View;)V

    iput p2, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mGravity:I

    return-void
.end method

.method public static directSetResult(Landroid/view/View;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    int-to-float v4, v0

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    int-to-float v4, v1

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    return-void

    :sswitch_0
    neg-int v0, v3

    goto :goto_0

    :sswitch_1
    neg-int v1, v2

    goto :goto_0

    :sswitch_2
    move v0, v3

    goto :goto_0

    :sswitch_3
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    return-object v4

    :sswitch_0
    neg-int v0, v3

    goto :goto_0

    :sswitch_1
    neg-int v1, v2

    goto :goto_0

    :sswitch_2
    move v0, v3

    goto :goto_0

    :sswitch_3
    move v1, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onAnimationEnd()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->onAnimationEnd()V

    iget-object v0, p0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    return-void
.end method
