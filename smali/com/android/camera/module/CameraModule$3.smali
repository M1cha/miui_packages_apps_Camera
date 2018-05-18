.class Lcom/android/camera/module/CameraModule$3;
.super Landroid/content/BroadcastReceiver;
.source "CameraModule.java"


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

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "on Receive xiaoai broadcast action intent"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get3(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/voiceassist/XiaoAiHelper;->isActionFromXiaoAi(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    new-instance v2, Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-direct {v2, p2}, Lcom/android/camera/voiceassist/XiaoAiHelper;-><init>(Landroid/content/Intent;)V

    iput-object v2, v1, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    const-string/jumbo v1, "com.android.camera.action.XIAOAI_CONTROL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1, p2}, Lcom/android/camera/module/CameraModule;->-wrap17(Lcom/android/camera/module/CameraModule;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
