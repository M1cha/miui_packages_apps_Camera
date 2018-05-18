.class Lcom/android/camera/animation/type/BaseOnSubScribe$2;
.super Ljava/lang/Object;
.source "BaseOnSubScribe.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/animation/type/BaseOnSubScribe;->subscribe(Lio/reactivex/CompletableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;


# direct methods
.method constructor <init>(Lcom/android/camera/animation/type/BaseOnSubScribe;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$2;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$2;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$2;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$2;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    iget-object v2, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$2;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    iget v2, v2, Lcom/android/camera/animation/type/BaseOnSubScribe;->mDurationTime:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/animation/AnimationMonitor;->animationStart(Ljava/lang/Object;I)V

    return-void
.end method
