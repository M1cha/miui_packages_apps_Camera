.class Lcom/android/zxing/QRCodeManager$MyHander;
.super Landroid/os/Handler;
.source "QRCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/QRCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/QRCodeManager;


# direct methods
.method public constructor <init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x7f0c0007

    const v4, 0x7f0c0005

    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$300(Lcom/android/zxing/QRCodeManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->requestAutoFocus()V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/zxing/QRCodeManager;->access$502(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$300(Lcom/android/zxing/QRCodeManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$500(Lcom/android/zxing/QRCodeManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 137
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$500(Lcom/android/zxing/QRCodeManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/zxing/QRCodeMatcher;->match(Ljava/lang/String;)Lcom/android/zxing/QRCodeType;

    move-result-object v2

    #setter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1, v2}, Lcom/android/zxing/QRCodeManager;->access$802(Lcom/android/zxing/QRCodeManager;Lcom/android/zxing/QRCodeType;)Lcom/android/zxing/QRCodeType;

    .line 139
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_3

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01de

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->findQRCode()V

    .line 154
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_4

    .line 143
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_5

    .line 145
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01df

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;

    move-result-object v1

    sget-object v2, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_7

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 150
    :cond_7
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01e2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 161
    :pswitch_2
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 166
    :pswitch_3
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mInitialized:Z
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1100(Lcom/android/zxing/QRCodeManager;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$200(Lcom/android/zxing/QRCodeManager;)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1200(Lcom/android/zxing/QRCodeManager;)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1300(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 168
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->scanQRCodeEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    .line 170
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1300(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$1400(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 171
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1500(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/ui/ViewFinderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/ui/ViewFinderView;->drawViewFinder()V

    .line 174
    :cond_8
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    #getter for: Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x7f0c0005
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
