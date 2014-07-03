.class Lcom/android/camera/MotionFocusManager$MainHandler;
.super Landroid/os/Handler;
.source "MotionFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MotionFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MotionFocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/MotionFocusManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/camera/MotionFocusManager$MainHandler;->this$0:Lcom/android/camera/MotionFocusManager;

    .line 216
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 217
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager$MainHandler;->this$0:Lcom/android/camera/MotionFocusManager;

    # invokes: Lcom/android/camera/MotionFocusManager;->deviceBecomeStable()V
    invoke-static {v0}, Lcom/android/camera/MotionFocusManager;->access$1000(Lcom/android/camera/MotionFocusManager;)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
