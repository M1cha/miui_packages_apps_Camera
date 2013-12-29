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
    .parameter
    .parameter "looper"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    .line 192
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 201
    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #calls: Lcom/android/camera/FocusManager;->unlockAeAwbLock()V
    invoke-static {v0}, Lcom/android/camera/FocusManager;->access$000(Lcom/android/camera/FocusManager;)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #calls: Lcom/android/camera/FocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/android/camera/FocusManager;->access$100(Lcom/android/camera/FocusManager;)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    #getter for: Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v0}, Lcom/android/camera/FocusManager;->access$200(Lcom/android/camera/FocusManager;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 204
    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    iget-object v0, v0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
