.class Lcom/android/camera/module/MorphoPanoramaModule$1;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/MorphoPanoramaModule;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;

.field final synthetic val$data2:[B


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->val$data2:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreviewFrame mCameraDevice has been released"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get13(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get6(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-set2(Lcom/android/camera/module/MorphoPanoramaModule;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewFrame CaptureInfo run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap0(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get1()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap0(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-set5(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreviewFrame takePicture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get3(Lcom/android/camera/module/MorphoPanoramaModule;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->val$data2:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->onPictureTakenPreview([B)V

    goto :goto_1
.end method
