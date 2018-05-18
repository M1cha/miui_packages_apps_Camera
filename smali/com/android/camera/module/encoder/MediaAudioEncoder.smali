.class public Lcom/android/camera/module/encoder/MediaAudioEncoder;
.super Lcom/android/camera/module/encoder/MediaEncoder;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;
    }
.end annotation


# static fields
.field private static final AUDIO_SOURCES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

.field protected final mMediaCodecLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    return-void
.end method

.method private initAudioRecord()Landroid/media/AudioRecord;
    .locals 12

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    const/16 v5, 0x6400

    const/16 v7, 0x6400

    if-ge v7, v6, :cond_0

    div-int/lit16 v7, v6, 0x400

    add-int/lit8 v7, v7, 0x1

    mul-int/lit16 v7, v7, 0x400

    mul-int/lit8 v5, v7, 0x2

    :cond_0
    const/4 v0, 0x0

    sget-object v8, Lcom/android/camera/module/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget v1, v8, v7

    new-instance v0, Landroid/media/AudioRecord;

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private static selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget-object v6, v5, v2

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v0

    :cond_2
    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepare>>>"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mTrackIndex:I

    iput-boolean v4, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMuxerStarted:Z

    iput-boolean v4, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mIsEOS:Z

    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-static {v2}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "no appropriate codec for audio/mp4a-latm"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selected codec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "audio/mp4a-latm"

    const v3, 0xac44

    invoke-static {v2, v3, v6}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v2, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "channel-mask"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "bitrate"

    const v3, 0xfa00

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "channel-count"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget-object v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v5, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v2, p0}, Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/android/camera/module/encoder/MediaEncoder;)V

    :cond_1
    sget-object v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepare<<<"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected startRecording(J)Z
    .locals 7

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(J)Z

    move-result v2

    if-nez v2, :cond_0

    return v5

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->initAudioRecord()Landroid/media/AudioRecord;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v3, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to initialize AudioRecord"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v4, v3, :cond_3

    new-instance v3, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/android/camera/module/encoder/MediaAudioEncoder;Landroid/media/AudioRecord;)V

    iput-object v3, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    invoke-virtual {v3}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_2
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method
