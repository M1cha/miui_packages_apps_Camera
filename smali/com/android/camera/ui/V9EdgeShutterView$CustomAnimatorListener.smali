.class Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V9EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V9EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V9EdgeShutterView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V9EdgeShutterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V9EdgeShutterView;Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V9EdgeShutterView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const-string/jumbo v0, "CameraEdgeShutterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationCancel animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/V9EdgeShutterView;->-set0(Lcom/android/camera/ui/V9EdgeShutterView;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x4

    const-string/jumbo v0, "CameraEdgeShutterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationEnd animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->-get1(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->-get3(Lcom/android/camera/ui/V9EdgeShutterView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0, v3}, Lcom/android/camera/ui/V9EdgeShutterView;->-wrap2(Lcom/android/camera/ui/V9EdgeShutterView;I)V

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0, v3}, Lcom/android/camera/ui/V9EdgeShutterView;->-set0(Lcom/android/camera/ui/V9EdgeShutterView;I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V9EdgeShutterView;->setX(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->-get2(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->-get3(Lcom/android/camera/ui/V9EdgeShutterView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/V9EdgeShutterView;->-set0(Lcom/android/camera/ui/V9EdgeShutterView;I)I

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->-get0(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V9EdgeShutterView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V9EdgeShutterView;->setX(F)V

    :cond_0
    return-void
.end method
