.class Lcom/android/camera/Camera$9;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/MotionFocusManager$MotionFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .prologue
    .line 3480
    iput-object p1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraState:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$6500(Lcom/android/camera/Camera;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isShutterButtonUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceBecomeStable()V
    .locals 5

    .prologue
    .line 3489
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusAreaSupported:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6600(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMeteringAreaSupported:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6700(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3520
    :cond_0
    :goto_0
    return-void

    .line 3495
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSelectingCapturedImage()Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6800(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    if-nez v1, :cond_0

    .line 3502
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraState:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6500(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnapStatus:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6900(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3508
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    .line 3509
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_flashmode_key"

    iget-object v3, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    const v4, 0x7f0d0071

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3512
    .local v0, flashMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v1, :cond_2

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3513
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3514
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3518
    .end local v0           #flashMode:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onDeviceBecomeStable()V

    goto/16 :goto_0
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    .prologue
    .line 3533
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 1
    .parameter "a"

    .prologue
    .line 3524
    iget-object v0, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnapStatus:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$6900(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3525
    iget-object v0, p0, Lcom/android/camera/Camera$9;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->onDeviceKeepMoving(D)V

    .line 3528
    :cond_0
    return-void
.end method

.method public onDeviceKeepStable()V
    .locals 0

    .prologue
    .line 3538
    return-void
.end method
