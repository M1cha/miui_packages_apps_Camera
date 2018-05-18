.class Lcom/android/camera/module/VideoModule$MainHandler;
.super Landroid/os/Handler;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mAbandoned:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$MainHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule$MainHandler;-><init>(Lcom/android/camera/module/VideoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v2, 0x80

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->mAbandoned:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0, v4}, Lcom/android/camera/module/VideoModule;->-set0(Lcom/android/camera/module/VideoModule;Z)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getScreenDelay()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap15(Lcom/android/camera/module/VideoModule;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget v1, v1, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-get10(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-get17(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->-get11(Lcom/android/camera/module/VideoModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap14(Lcom/android/camera/module/VideoModule;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v6, v0, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get7(Lcom/android/camera/module/VideoModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->-get6(Lcom/android/camera/module/VideoModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->-get8(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->switchCameraDone()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0, v6}, Lcom/android/camera/module/VideoModule;->-set9(Lcom/android/camera/module/VideoModule;Z)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap1(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v4}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraException()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->-wrap7(Lcom/android/camera/module/VideoModule;Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v4, v0, Lcom/android/camera/module/VideoModule;->mIgnoreFocusChanged:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap6(Lcom/android/camera/module/VideoModule;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->-set8(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$StereoSwitchThread;)Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    goto/16 :goto_0

    :sswitch_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v1, 0x6

    const v2, 0x7f0f0223

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/camera/module/VideoModule;->updateTipMessage(III)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap9(Lcom/android/camera/module/VideoModule;)V

    goto/16 :goto_0

    :sswitch_f
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule$MainHandler;->mAbandoned:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v1, v0, Lcom/android/camera/module/VideoModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_1
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0xa -> :sswitch_3
        0xc -> :sswitch_8
        0xd -> :sswitch_0
        0xe -> :sswitch_9
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x17 -> :sswitch_e
        0x2d -> :sswitch_f
    .end sparse-switch
.end method
