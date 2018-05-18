.class Lcom/android/camera/ui/FaceView$1;
.super Landroid/os/Handler;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {v0}, Lcom/android/camera/ui/FaceView;->-get1(Lcom/android/camera/ui/FaceView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceView;->-set0(Lcom/android/camera/ui/FaceView;I)I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    const/16 v1, 0x8

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
