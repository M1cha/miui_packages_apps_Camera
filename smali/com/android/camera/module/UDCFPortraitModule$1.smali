.class Lcom/android/camera/module/UDCFPortraitModule$1;
.super Ljava/lang/Object;
.source "UDCFPortraitModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/UDCFPortraitModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/UDCFPortraitModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/UDCFPortraitModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 8

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v4}, Lcom/android/camera/module/UDCFPortraitModule;->-get1(Lcom/android/camera/module/UDCFPortraitModule;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/camera/module/UDCFPortraitModule;->-set0(Lcom/android/camera/module/UDCFPortraitModule;I)I

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-boolean v4, v4, Lcom/android/camera/module/UDCFPortraitModule;->mPaused:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-object v4, v4, Lcom/android/camera/module/UDCFPortraitModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/module/UDCFPortraitModule;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAutoFocus: paused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-boolean v6, v6, Lcom/android/camera/module/UDCFPortraitModule;->mPaused:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " focused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-object v4, v4, Lcom/android/camera/module/UDCFPortraitModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v4}, Lcom/android/camera/module/UDCFPortraitModule;->-get3(Lcom/android/camera/module/UDCFPortraitModule;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/hardware/Camera;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v6}, Lcom/android/camera/module/UDCFPortraitModule;->-get4(Lcom/android/camera/module/UDCFPortraitModule;)J

    move-result-wide v6

    sub-long v2, v4, v6

    invoke-static {}, Lcom/android/camera/module/UDCFPortraitModule;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Vice Camera mAutoFocusTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " focused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v4, p1}, Lcom/android/camera/module/UDCFPortraitModule;->-set2(Lcom/android/camera/module/UDCFPortraitModule;Z)Z

    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v4}, Lcom/android/camera/module/UDCFPortraitModule;->-get1(Lcom/android/camera/module/UDCFPortraitModule;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-wide v6, v6, Lcom/android/camera/module/UDCFPortraitModule;->mFocusStartTime:J

    sub-long v0, v4, v6

    invoke-static {}, Lcom/android/camera/module/UDCFPortraitModule;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Primary Camera mAutoFocusTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " focused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v4, p1}, Lcom/android/camera/module/UDCFPortraitModule;->-set1(Lcom/android/camera/module/UDCFPortraitModule;Z)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-object v4, v4, Lcom/android/camera/module/UDCFPortraitModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget v4, v4, Lcom/android/camera/module/UDCFPortraitModule;->mCameraState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/module/UDCFPortraitModule;->setCameraState(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-object v5, v4, Lcom/android/camera/module/UDCFPortraitModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v4}, Lcom/android/camera/module/UDCFPortraitModule;->-get2(Lcom/android/camera/module/UDCFPortraitModule;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v4}, Lcom/android/camera/module/UDCFPortraitModule;->-get5(Lcom/android/camera/module/UDCFPortraitModule;)Z

    move-result v4

    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/camera/FocusManager;->onAutoFocus(Z)V

    iget-object v4, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-object v4, v4, Lcom/android/camera/module/UDCFPortraitModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/SensorStateManager;->reset()V

    return-void

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method
