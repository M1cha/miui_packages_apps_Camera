.class Lcom/android/zxing/QRCodeManager$1;
.super Ljava/lang/Object;
.source "QRCodeManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/QRCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/QRCodeManager;


# direct methods
.method constructor <init>(Lcom/android/zxing/QRCodeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5

    const v4, 0x7f0a0005

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-get2(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-get2(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/zxing/DecodeHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-get2(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->-get5(Lcom/android/zxing/QRCodeManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/zxing/QRCodeManager$1;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v3}, Lcom/android/zxing/QRCodeManager;->-get6(Lcom/android/zxing/QRCodeManager;)I

    move-result v3

    invoke-virtual {v1, v4, v2, v3, p1}, Lcom/android/zxing/DecodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
