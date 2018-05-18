.class Lcom/android/zxing/QRCodeManager$MyHandler;
.super Landroid/os/Handler;
.source "QRCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/QRCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/QRCodeManager;


# direct methods
.method public constructor <init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v3, 0xaf

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->recode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/zxing/QRCodeManager;->-set0(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-wrap0(Lcom/android/zxing/QRCodeManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showQrCodeTip()V

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-get3(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->findQRCode()V

    :cond_0
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    const/16 v2, 0xfa0

    invoke-static {v1, v2}, Lcom/android/zxing/QRCodeManager;->-wrap2(Lcom/android/zxing/QRCodeManager;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-wrap0(Lcom/android/zxing/QRCodeManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-get1(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->-get4(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/zxing/QRCodeManager;->-wrap2(Lcom/android/zxing/QRCodeManager;I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-wrap1(Lcom/android/zxing/QRCodeManager;)V

    const-string/jumbo v1, "QRCodeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exit decode qrcode for timeout, mResumeTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/zxing/QRCodeManager$MyHandler;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v3}, Lcom/android/zxing/QRCodeManager;->-get7(Lcom/android/zxing/QRCodeManager;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " decodetime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/zxing/QRCodeManager;->-get0()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0006
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
