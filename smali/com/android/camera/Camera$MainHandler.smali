.class Lcom/android/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x5

    const/4 v7, 0x0

    const/4 v10, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 363
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 528
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 365
    :pswitch_1
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 373
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const-wide/32 v7, 0x1d4c0

    invoke-virtual {v6, v10, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 377
    :pswitch_3
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFirstTime()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 382
    :pswitch_4
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V
    invoke-static {v6, v9}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;I)V

    goto :goto_0

    .line 392
    :pswitch_5
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDisplayRotation:I
    invoke-static {v7}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 393
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)V

    .line 395
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v8}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 396
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v11, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 402
    :pswitch_6
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v7, v7, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v8, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v8, v8, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint(Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;)V

    goto/16 :goto_0

    .line 407
    :pswitch_7
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera$ImageSaver;->updateThumbnail()V

    goto/16 :goto_0

    .line 412
    :pswitch_8
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->resetSimpleMode()V

    .line 413
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->switchCamera()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 418
    :pswitch_9
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v6}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    goto/16 :goto_0

    .line 423
    :pswitch_a
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeAfterCameraOpen()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)V

    .line 424
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v7, v7, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6, v7}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    goto/16 :goto_0

    .line 429
    :pswitch_b
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v7, v6, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 430
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v7, v7, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraDataAnalytics;->trackLayoutMode(Z)V

    .line 431
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v6, v8}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;I)V

    .line 432
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->onSettingsBack()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)V

    .line 433
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 434
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->takeAPhotoIfNeeded()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 439
    :pswitch_c
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v7, v6, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 440
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-boolean v8, v6, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    .line 441
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v6

    const-string v7, "open_camera_fail_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 443
    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    const v6, 0x7f0d0002

    :goto_1
    invoke-static {v7, v6}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :cond_2
    const v6, 0x7f0d0001

    goto :goto_1

    .line 451
    :pswitch_d
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v7, v6, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 452
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-boolean v8, v6, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    .line 453
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const v7, 0x7f0d0003

    invoke-static {v6, v7}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 458
    :pswitch_e
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->multiCapture()Z
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Z

    goto/16 :goto_0

    .line 462
    :pswitch_f
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0178

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, toastStart:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0179

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, toastEnd:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnappedCount:I
    invoke-static {v7}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, toastContent:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v6, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 466
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 467
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 471
    .end local v2           #toast:Landroid/widget/Toast;
    .end local v3           #toastContent:Ljava/lang/String;
    .end local v4           #toastEnd:Ljava/lang/String;
    .end local v5           #toastStart:Ljava/lang/String;
    :pswitch_10
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isShutterButtonClickable()Z
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 474
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6, v8, v10}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    .line 475
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doCapture()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)V

    .line 476
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6, v9, v9}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    goto/16 :goto_0

    .line 478
    :cond_3
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDoCaptureRetry:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_0

    .line 479
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/Camera;->access$2808(Lcom/android/camera/Camera;)I

    .line 480
    const-string v6, "camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retry do-capture: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDoCaptureRetry:I
    invoke-static {v8}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x12

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 487
    :pswitch_11
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-static {v6}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 488
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 489
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v6}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto/16 :goto_0

    .line 490
    :cond_4
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-boolean v6, v6, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v6, :cond_0

    .line 491
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v6}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto/16 :goto_0

    .line 496
    :pswitch_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 497
    .local v1, mode:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v6, v1}, Lcom/android/camera/ui/SettingView;->sendClickTo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    .end local v1           #mode:Ljava/lang/String;
    :pswitch_13
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget v7, v7, Lcom/android/camera/ActivityBase;->mUIStyle:I

    invoke-static {v6, v7}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 505
    :pswitch_14
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHasPendingSwitching:Z
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 506
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget v7, v7, Lcom/android/camera/ActivityBase;->mUIStyle:I

    invoke-static {v6, v7}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Landroid/app/Activity;I)V

    .line 507
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreviewWidth:I
    invoke-static {v7}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;)I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreviewHeight:I
    invoke-static {v8}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)I

    move-result v8

    #calls: Lcom/android/camera/Camera;->updateCameraScreenNailSize(II)V
    invoke-static {v6, v7, v8}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;II)V

    .line 508
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mHasPendingSwitching:Z
    invoke-static {v6, v9}, Lcom/android/camera/Camera;->access$2902(Lcom/android/camera/Camera;Z)Z

    .line 510
    :cond_5
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v6}, Lcom/android/camera/CameraScreenNail;->onSwitchingPassedHalf()V

    goto/16 :goto_0

    .line 514
    :pswitch_15
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_6

    .line 515
    const/16 v6, 0x17

    invoke-virtual {p0, v6}, Lcom/android/camera/Camera$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 516
    .local v0, message:Landroid/os/Message;
    iget v6, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 517
    iget v6, p1, Landroid/os/Message;->arg2:I

    iput v6, v0, Landroid/os/Message;->arg2:I

    .line 518
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/android/camera/Camera;->setDelayStep(I)V

    .line 519
    iget v6, v0, Landroid/os/Message;->arg2:I

    int-to-long v6, v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/camera/Camera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 520
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6, v11}, Lcom/android/camera/Camera;->playSound(I)V

    goto/16 :goto_0

    .line 523
    .end local v0           #message:Landroid/os/Message;
    :cond_6
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->hideDelayNumber()V

    .line 524
    iget-object v6, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->sendDoCaptureMessage()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_2
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
