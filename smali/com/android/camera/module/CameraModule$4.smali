.class Lcom/android/camera/module/CameraModule$4;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public notifyDevicePostureChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->onDeviceMoving()V

    :cond_0
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEvAdjusted(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isManualSplitMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 9

    const/16 v8, 0x27

    const/16 v7, 0x21

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iput p1, v3, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v6, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v6, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v3, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    add-int v3, v1, v0

    rem-int/lit16 v2, v3, 0x168

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method
