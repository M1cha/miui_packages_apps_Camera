.class Lcom/android/camera/fragment/DefaultItemAnimator$8;
.super Lcom/android/camera/fragment/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/DefaultItemAnimator;->animateChangeImpl(Lcom/android/camera/fragment/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/android/camera/fragment/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$oldViewAlpha:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/DefaultItemAnimator;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Lcom/android/camera/fragment/DefaultItemAnimator$ChangeInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/DefaultItemAnimator$8;->this$0:Lcom/android/camera/fragment/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/camera/fragment/DefaultItemAnimator$8;->val$oldViewAlpha:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p3, p0, Lcom/android/camera/fragment/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/camera/fragment/DefaultItemAnimator$ChangeInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lcom/android/camera/fragment/DefaultItemAnimator$VpaListenerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/DefaultItemAnimator$8;->val$oldViewAlpha:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/DefaultItemAnimator$8;->this$0:Lcom/android/camera/fragment/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/camera/fragment/DefaultItemAnimator$8;->val$changeInfo:Lcom/android/camera/fragment/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/android/camera/fragment/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/DefaultItemAnimator$8;->this$0:Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-static {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;->-wrap3(Lcom/android/camera/fragment/DefaultItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method
