.class Lcom/android/camera/module/VideoModule$SavingTask;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingTask"
.end annotation


# instance fields
.field private mRestart:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/VideoModule;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    iput-boolean p2, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$SavingTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SavingTask run mMediaRecorderRecording = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->-get10(Lcom/android/camera/module/VideoModule;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->-set6(Lcom/android/camera/module/VideoModule;Z)Z

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get10(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->subStopRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get5(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get2(Lcom/android/camera/module/VideoModule;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set1(Lcom/android/camera/module/VideoModule;I)I

    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get5(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get2(Lcom/android/camera/module/VideoModule;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get2(Lcom/android/camera/module/VideoModule;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set1(Lcom/android/camera/module/VideoModule;I)I

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->-wrap0(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v6}, Lcom/android/camera/module/VideoModule;->-set6(Lcom/android/camera/module/VideoModule;Z)Z

    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v2, v1, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get18(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get18(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set10(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1, v6}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    :goto_1
    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v5}, Lcom/android/camera/module/VideoModule;->-set2(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.camera.action.stop_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get16(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v3, v3, Lcom/android/camera/module/VideoModule;->mPaused:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v5, v3, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->-get12(Lcom/android/camera/module/VideoModule;)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/android/camera/module/VideoModule;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "listen none"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get18(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get18(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->-get15(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->-get15(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set5(Lcom/android/camera/module/VideoModule;Z)Z

    invoke-static {}, Lcom/android/camera/module/VideoModule;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop recording at SavingTask, space="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set10(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get9(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get9(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_8
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    new-instance v3, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {v3, v4}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;-><init>(Lcom/android/camera/module/VideoModule;)V

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set4(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_9
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v5}, Lcom/android/camera/module/VideoModule;->-set10(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;

    goto/16 :goto_1
.end method
