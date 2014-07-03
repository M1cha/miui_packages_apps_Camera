.class Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;
.super Ljava/lang/Thread;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestartVideoRecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1800
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RestartVideoRecordingThread run mMediaRecorderRecording = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v6}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1802
    const/4 v2, 0x0

    .line 1805
    .local v2, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # invokes: Lcom/android/camera/VideoCamera;->effectsActive()Z
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1810
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$1400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/EffectsRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/EffectsRecorder;->stopRecording()V

    .line 1817
    :goto_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v5, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/VideoCamera;->access$2200(Lcom/android/camera/VideoCamera;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/camera/VideoCamera;->access$2102(Lcom/android/camera/VideoCamera;Ljava/lang/String;)Ljava/lang/String;

    .line 1818
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseVideoRecording: Setting current video filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/VideoCamera;->access$2100(Lcom/android/camera/VideoCamera;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    iget-boolean v4, v4, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1839
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # invokes: Lcom/android/camera/VideoCamera;->effectsActive()Z
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v0, 0x1

    .line 1840
    .local v0, "closeEffects":Z
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # invokes: Lcom/android/camera/VideoCamera;->closeCamera(Z)V
    invoke-static {v4, v0}, Lcom/android/camera/VideoCamera;->access$2500(Lcom/android/camera/VideoCamera;Z)V

    .line 1843
    .end local v0    # "closeEffects":Z
    :cond_0
    if-eqz v2, :cond_1

    .line 1844
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # invokes: Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$2600(Lcom/android/camera/VideoCamera;)Z

    .line 1849
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # invokes: Lcom/android/camera/VideoCamera;->effectsActive()Z
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1850
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # invokes: Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$2700(Lcom/android/camera/VideoCamera;)V

    .line 1853
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v4, v4, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v4}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1855
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    iget-boolean v4, v4, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # invokes: Lcom/android/camera/VideoCamera;->startRecordVideo()Z
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$2800(Lcom/android/camera/VideoCamera;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1856
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # setter for: Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v4, v3}, Lcom/android/camera/VideoCamera;->access$402(Lcom/android/camera/VideoCamera;Z)Z

    .line 1857
    iget-object v3, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$100(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mUIRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$2400(Lcom/android/camera/VideoCamera;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1859
    :cond_3
    iget-object v3, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # setter for: Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;
    invoke-static {v3, v7}, Lcom/android/camera/VideoCamera;->access$2902(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;)Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    .line 1860
    return-void

    .line 1812
    .restart local v2    # "shouldAddToMediaStoreNow":Z
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$2000(Lcom/android/camera/VideoCamera;)Landroid/media/MediaRecorder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1813
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$2000(Lcom/android/camera/VideoCamera;)Landroid/media/MediaRecorder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1814
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$2000(Lcom/android/camera/VideoCamera;)Landroid/media/MediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1815
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1820
    :catch_0
    move-exception v1

    .line 1821
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "videocamera"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1822
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$2200(Lcom/android/camera/VideoCamera;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v5, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/VideoCamera;->access$2200(Lcom/android/camera/VideoCamera;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/camera/VideoCamera;->access$2300(Lcom/android/camera/VideoCamera;Ljava/lang/String;)V

    .line 1823
    :cond_5
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # setter for: Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v4, v3}, Lcom/android/camera/VideoCamera;->access$402(Lcom/android/camera/VideoCamera;Z)Z

    .line 1824
    iget-object v4, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$100(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->this$0:Lcom/android/camera/VideoCamera;

    # getter for: Lcom/android/camera/VideoCamera;->mUIRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/camera/VideoCamera;->access$2400(Lcom/android/camera/VideoCamera;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_6
    move v0, v3

    .line 1839
    goto/16 :goto_2
.end method
