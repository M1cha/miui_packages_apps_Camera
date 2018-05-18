.class public Lcom/android/camera/module/VideoModule$StereoSwitchThread;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StereoSwitchThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraException()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetZoom()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap8(Lcom/android/camera/module/VideoModule;)V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap6(Lcom/android/camera/module/VideoModule;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
