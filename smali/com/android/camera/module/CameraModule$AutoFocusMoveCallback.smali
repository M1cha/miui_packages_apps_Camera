.class final Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAutoFocusMoving: paused!"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAutoFocusMoving moving="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3, v6}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const-string/jumbo v1, "onAutoFocusMoving start"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3, v6}, Lcom/android/camera/module/CameraModule;->-set0(Lcom/android/camera/module/CameraModule;I)I

    :cond_1
    :goto_1
    sget-boolean v3, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, p1, v0}, Lcom/android/camera/FocusManager;->onAutoFocusMoving(ZZ)V

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/zxing/QRCodeManager;->requestDecode()V

    :cond_5
    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result v0

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get0(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoFocusMoving end. result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get0(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-set0(Lcom/android/camera/module/CameraModule;I)I

    goto :goto_1
.end method
