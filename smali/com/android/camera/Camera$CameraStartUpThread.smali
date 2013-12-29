.class Lcom/android/camera/Camera$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancelled:Z

    .line 308
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 315
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "open_camera_times_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget v3, v3, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 318
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 321
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 323
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeCapabilities()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)V

    .line 324
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFocusManager()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)V

    .line 325
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/ActivityBase;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 327
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    const/4 v2, -0x1

    #calls: Lcom/android/camera/Camera;->setCameraParameters(I)V
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;I)V

    .line 329
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    iget-boolean v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)V

    .line 332
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/Camera;->access$1202(Lcom/android/camera/Camera;J)J

    .line 334
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 337
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
