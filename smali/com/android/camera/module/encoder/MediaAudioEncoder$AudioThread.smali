.class Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field final synthetic this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/encoder/MediaAudioEncoder;Landroid/media/AudioRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v2, -0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-boolean v2, v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mIsCapturing:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "audioThread>>>"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v3, v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-boolean v2, v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mRequestStop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    :try_start_3
    monitor-exit v3

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v2}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->frameAvailableSoon()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    invoke-static {}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "audioThread<<<"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_5
    monitor-exit v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    const/16 v3, 0x400

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v3, v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v4}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->getPTSUs()J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v3

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v2}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->frameAvailableSoon()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_8
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    throw v2

    :catchall_2
    move-exception v2

    :try_start_9
    monitor-exit v3

    throw v2

    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method
