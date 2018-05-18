.class Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SubScreenPopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubScreenPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mIsValueVisible:Z

.field private mLayerType:I

.field private mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

.field final synthetic this$0:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SubScreenPopup;)V
    .locals 2

    sget-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/SubScreenPopup;ZLcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/SubScreenPopup;ZLcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mIsValueVisible:Z

    iput-object p3, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const-string/jumbo v0, "V6ManualPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationCancel: animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    sget-object v1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "V6ManualPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnimationEnd: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",animation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",popup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v3}, Lcom/android/camera/ui/SubScreenPopup;->-get0(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->-get2(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->-get0(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->-get0(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1, v4}, Lcom/android/camera/ui/SubScreenPopup;->-set0(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->-get2(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->-get2(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/SubScreenPopup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/SubScreenPopup;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    iget v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/SubScreenPopup;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const-string/jumbo v0, "V6ManualPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationStart: layerType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",popup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->-get0(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v2

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->-get2(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->-get2(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-void
.end method
