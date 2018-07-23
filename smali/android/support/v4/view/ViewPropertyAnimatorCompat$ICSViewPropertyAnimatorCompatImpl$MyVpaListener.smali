.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 530
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 571
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 572
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 573
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-nez v2, :cond_0

    .line 576
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :goto_0
    if-nez v0, :cond_1

    .line 579
    :goto_1
    return-void

    .restart local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :cond_0
    move-object v0, v1

    .line 574
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    goto :goto_0

    .line 577
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :cond_1
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 552
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    if-gez v2, :cond_0

    .line 556
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 559
    :goto_1
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 560
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 561
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-nez v2, :cond_2

    .line 564
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :goto_2
    if-nez v0, :cond_3

    .line 567
    :goto_3
    return-void

    .line 553
    .end local v1    # "listenerTag":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    invoke-static {p1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 554
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$402(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I

    goto :goto_0

    .line 557
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .restart local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .restart local v1    # "listenerTag":Ljava/lang/Object;
    :cond_2
    move-object v0, v1

    .line 562
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    goto :goto_2

    .line 565
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :cond_3
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_3
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    if-gez v2, :cond_0

    .line 537
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 540
    :goto_1
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 541
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 542
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-nez v2, :cond_2

    .line 545
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :goto_2
    if-nez v0, :cond_3

    .line 548
    :goto_3
    return-void

    .line 535
    .end local v1    # "listenerTag":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x2

    invoke-static {p1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .restart local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .restart local v1    # "listenerTag":Ljava/lang/Object;
    :cond_2
    move-object v0, v1

    .line 543
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    goto :goto_2

    .line 546
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :cond_3
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    goto :goto_3
.end method
