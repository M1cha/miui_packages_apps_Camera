.class Lcom/android/camera/ui/ScrollButton$1;
.super Landroid/os/Handler;
.source "ScrollButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScrollButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScrollButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScrollButton;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    #calls: Lcom/android/camera/ui/ScrollButton;->doAnimation()V
    invoke-static {v0}, Lcom/android/camera/ui/ScrollButton;->access$000(Lcom/android/camera/ui/ScrollButton;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
