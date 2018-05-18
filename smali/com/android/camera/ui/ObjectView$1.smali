.class Lcom/android/camera/ui/ObjectView$1;
.super Landroid/os/Handler;
.source "ObjectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ObjectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ObjectView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ObjectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ObjectView$1;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView$1;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->showStart()V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView$1;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-static {v0}, Lcom/android/camera/ui/ObjectView;->-get1(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView$1;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView$1;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-static {v0}, Lcom/android/camera/ui/ObjectView;->-get1(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->startObjectTracking()V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView$1;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-static {v0}, Lcom/android/camera/ui/ObjectView;->-get0(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$Filter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView$Filter;->resetState()V

    :cond_1
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/camera/ui/ObjectView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView$1;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-static {v0}, Lcom/android/camera/ui/ObjectView;->-get1(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView$1;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-static {v0}, Lcom/android/camera/ui/ObjectView;->-get1(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->stopObjectTracking(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
