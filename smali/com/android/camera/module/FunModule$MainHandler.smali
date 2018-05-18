.class Lcom/android/camera/module/FunModule$MainHandler;
.super Landroid/os/Handler;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FunModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mAbandoned:Z

.field final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/FunModule;Lcom/android/camera/module/FunModule$MainHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/FunModule$MainHandler;-><init>(Lcom/android/camera/module/FunModule;)V

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

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->mAbandoned:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/android/camera/module/FunModule;->-get0()Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0, v4}, Lcom/android/camera/module/FunModule;->-set0(Lcom/android/camera/module/FunModule;Z)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v1}, Lcom/android/camera/module/FunModule;->getScreenDelay()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-wrap10(Lcom/android/camera/module/FunModule;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget v1, v1, Lcom/android/camera/module/FunModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-get5(Lcom/android/camera/module/FunModule;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-get8(Lcom/android/camera/module/FunModule;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->startPreview()V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v2}, Lcom/android/camera/module/FunModule;->-get6(Lcom/android/camera/module/FunModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-wrap9(Lcom/android/camera/module/FunModule;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-boolean v0, v0, Lcom/android/camera/module/FunModule;->mHasPendingSwitching:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iput-boolean v6, v0, Lcom/android/camera/module/FunModule;->mHasPendingSwitching:Z

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v1, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v1}, Lcom/android/camera/module/FunModule;->-get3(Lcom/android/camera/module/FunModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v2}, Lcom/android/camera/module/FunModule;->-get2(Lcom/android/camera/module/FunModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v3}, Lcom/android/camera/module/FunModule;->-get4(Lcom/android/camera/module/FunModule;)Lcom/android/camera/FocusManagerSimple;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/FunModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->switchCameraDone()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0, v6}, Lcom/android/camera/module/FunModule;->-set3(Lcom/android/camera/module/FunModule;Z)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-wrap0(Lcom/android/camera/module/FunModule;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0, v4}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->onCameraException()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v1, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-boolean v1, v1, Lcom/android/camera/module/FunModule;->mPaused:Z

    invoke-static {v0, v1}, Lcom/android/camera/module/FunModule;->-wrap4(Lcom/android/camera/module/FunModule;Z)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-boolean v0, v0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->closeCamera()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iput-boolean v4, v0, Lcom/android/camera/module/FunModule;->mIgnoreFocusChanged:Z

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-wrap3(Lcom/android/camera/module/FunModule;)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0, v1}, Lcom/android/camera/module/FunModule;->-set2(Lcom/android/camera/module/FunModule;Lcom/android/camera/module/FunModule$StereoSwitchThread;)Lcom/android/camera/module/FunModule$StereoSwitchThread;

    goto/16 :goto_0

    :sswitch_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    const/4 v1, 0x6

    const v2, 0x7f0f0223

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/camera/module/FunModule;->updateTipMessage(III)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-wrap7(Lcom/android/camera/module/FunModule;)V

    goto/16 :goto_0

    :sswitch_f
    iput-boolean v4, p0, Lcom/android/camera/module/FunModule$MainHandler;->mAbandoned:Z

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$MainHandler;->this$0:Lcom/android/camera/module/FunModule;

    iput-object v1, v0, Lcom/android/camera/module/FunModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

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
