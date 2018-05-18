.class public Lcom/android/camera/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got camera error callback. error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " paused="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    const-string/jumbo v1, "CameraErrorCallback"

    const-string/jumbo v2, "media server died"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->trackCameraError(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->notifyError()V

    :cond_1
    iput-object v4, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string/jumbo v1, "CameraErrorCallback"

    const-string/jumbo v2, "unspecified camera error"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "CameraErrorCallback"

    const-string/jumbo v2, " other unknown error"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
