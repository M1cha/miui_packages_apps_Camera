.class Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;Landroid/support/v4/widget/AutoScrollHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/widget/AutoScrollHelper;
    .param p2, "x1"    # Landroid/support/v4/widget/AutoScrollHelper$1;

    .prologue
    .line 684
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 687
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->access$100(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->access$200(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 696
    :goto_0
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v2

    .line 697
    .local v2, "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 698
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->access$102(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    .line 699
    return-void

    .line 688
    .end local v2    # "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    :cond_1
    return-void

    .line 692
    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->access$202(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    .line 693
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->start()V

    goto :goto_0

    .line 697
    .restart local v2    # "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    :cond_3
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->access$400(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->access$500(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 707
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 709
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v0

    .line 710
    .local v0, "deltaX":I
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v1

    .line 711
    .local v1, "deltaY":I
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 714
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->access$700(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 715
    return-void

    .line 703
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :cond_4
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->access$502(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    .line 704
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->access$600(Landroid/support/v4/widget/AutoScrollHelper;)V

    goto :goto_1
.end method
