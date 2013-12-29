.class Lcom/android/camera/ShutterButton$1;
.super Landroid/os/Handler;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ShutterButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ShutterButton;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ShutterButton$1;->this$0:Lcom/android/camera/ShutterButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ShutterButton$1;->this$0:Lcom/android/camera/ShutterButton;

    #getter for: Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    invoke-static {v0}, Lcom/android/camera/ShutterButton;->access$000(Lcom/android/camera/ShutterButton;)Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ShutterButton$1;->this$0:Lcom/android/camera/ShutterButton;

    #getter for: Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    invoke-static {v0}, Lcom/android/camera/ShutterButton;->access$000(Lcom/android/camera/ShutterButton;)Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonLongClick()Z

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
