.class public Lcom/android/camera/Clapper;
.super Ljava/lang/Object;
.source "Clapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Clapper$ClapperListener;
    }
.end annotation


# static fields
.field public static final AMPLITUDE_ABSOLUTE_THRESHOLD:I

.field public static final AMPLITUDE_INIT:I

.field private static final DEFAULT_AMPLITUDE_DIFF:I

.field public static final SCALE_FACTOR:I


# instance fields
.field private mContinueRecording:Z

.field private mListener:Lcom/android/camera/Clapper$ClapperListener;

.field private mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/android/camera/Clapper;->getScaleFactor()I

    move-result v0

    sput v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    .line 15
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    .line 21
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    .line 22
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x1388

    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Clapper$ClapperListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Clapper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/camera/Clapper;->threadRecordClap()V

    return-void
.end method

.method public static getScaleFactor()I
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_MIONE:Z

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x6

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private startRecorder()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 53
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 57
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 58
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_claaper_recorder.3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, outputFilePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 63
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1           #outputFilePath:Ljava/lang/String;
    :goto_0
    return v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Clapper"

    const-string v3, "Failed to start media recorder. Maybe it is used by other app."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private threadRecordClap()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3fe0

    .line 127
    sget v1, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    .line 135
    .local v1, averageAmplitude:I
    :cond_0
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-object v6, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v3

    .line 142
    .local v3, finishAmplitude:I
    if-le v3, v1, :cond_3

    .line 143
    int-to-double v6, v1

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    int-to-double v8, v3

    const-wide v10, 0x3fb9999999999998L

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v1, v6

    .line 150
    :goto_1
    sub-int v0, v3, v1

    .line 151
    .local v0, ampDifference:I
    sget v6, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    if-le v1, v6, :cond_4

    sget v6, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    int-to-double v6, v6

    int-to-double v8, v1

    mul-double/2addr v8, v12

    sget v10, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    add-double/2addr v8, v12

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 160
    .local v5, threshold:I
    :goto_2
    iget-object v6, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    if-eqz v6, :cond_2

    .line 162
    sget v6, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    if-gt v3, v6, :cond_1

    if-lt v0, v5, :cond_5

    .line 165
    :cond_1
    iget-object v6, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    sget v7, Lcom/android/camera/AudioCapture;->SHUTTER_BUTTON_DRAWABLE_LENGHT:I

    invoke-interface {v6, v7}, Lcom/android/camera/Clapper$ClapperListener;->heard(I)V

    .line 166
    iget-object v6, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v6}, Lcom/android/camera/Clapper$ClapperListener;->releaseShutter()V

    .line 174
    :cond_2
    :goto_3
    iget-boolean v6, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    if-nez v6, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/Clapper;->stopRecorder()V

    .line 182
    return-void

    .line 136
    .end local v0           #ampDifference:I
    .end local v3           #finishAmplitude:I
    .end local v5           #threshold:I
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "Clapper"

    const-string v7, "Thread.sleep() interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v3       #finishAmplitude:I
    :cond_3
    int-to-double v6, v1

    const-wide v8, 0x3fe999999999999aL

    mul-double/2addr v6, v8

    int-to-double v8, v3

    const-wide v10, 0x3fc9999999999998L

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v1, v6

    goto :goto_1

    .line 151
    .restart local v0       #ampDifference:I
    :cond_4
    sget v5, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    goto :goto_2

    .line 168
    .restart local v5       #threshold:I
    :cond_5
    int-to-float v6, v3

    sget v7, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, v0

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 171
    .local v4, progress:F
    iget-object v6, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    sget v7, Lcom/android/camera/AudioCapture;->SHUTTER_BUTTON_DRAWABLE_LENGHT:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    invoke-interface {v6, v7}, Lcom/android/camera/Clapper$ClapperListener;->heard(I)V

    goto :goto_3
.end method


# virtual methods
.method public start()Z
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/Clapper;->startRecorder()Z

    move-result v0

    .line 75
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 78
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/Clapper$1;

    invoke-direct {v2, p0}, Lcom/android/camera/Clapper$1;-><init>(Lcom/android/camera/Clapper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 85
    :cond_0
    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 91
    return-void
.end method

.method public stopRecorder()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 111
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 112
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Clapper"

    const-string v2, "Failed to stop media recorder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
