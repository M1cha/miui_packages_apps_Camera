.class Lcom/android/camera/fragment/FragmentBottomAction$3;
.super Ljava/lang/Object;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomAction;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$3;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$3;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get3(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$3;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get5(Lcom/android/camera/fragment/FragmentBottomAction;)Lcom/android/camera/ui/ModeSelectView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$3;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get3(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$3;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get3(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$3;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get3(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/animation/AnimationMonitor;->animationStart(Ljava/lang/Object;I)V

    return-void
.end method
