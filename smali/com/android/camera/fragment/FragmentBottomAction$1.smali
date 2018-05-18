.class Lcom/android/camera/fragment/FragmentBottomAction$1;
.super Landroid/os/Handler;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomAction;
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

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get11(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get12(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get8(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get8(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get13(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get7(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$1;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->-get7(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
