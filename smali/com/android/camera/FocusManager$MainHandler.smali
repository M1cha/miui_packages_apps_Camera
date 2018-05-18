.class Lcom/android/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->reShowFaceRect()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {v1}, Lcom/android/camera/FocusManager;->-wrap0(Lcom/android/camera/FocusManager;)V

    iget-object v1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {v1}, Lcom/android/camera/FocusManager;->-get0(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->startFaceDetection()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
