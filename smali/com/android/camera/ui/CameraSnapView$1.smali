.class Lcom/android/camera/ui/CameraSnapView$1;
.super Landroid/os/Handler;
.source "CameraSnapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraSnapView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraSnapView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Lcom/android/camera/ui/CameraSnapView;->-get0(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapClick()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Lcom/android/camera/ui/CameraSnapView;->-get0(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPress()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Lcom/android/camera/ui/CameraSnapView;->-get0(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPressCancelIn()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Lcom/android/camera/ui/CameraSnapView;->-get0(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPressCancelOut()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
