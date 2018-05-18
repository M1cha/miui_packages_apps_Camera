.class Lcom/android/camera/ui/V9EdgeShutterView$1;
.super Landroid/os/Handler;
.source "V9EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V9EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V9EdgeShutterView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V9EdgeShutterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->-wrap1(Lcom/android/camera/ui/V9EdgeShutterView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->-wrap0(Lcom/android/camera/ui/V9EdgeShutterView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
