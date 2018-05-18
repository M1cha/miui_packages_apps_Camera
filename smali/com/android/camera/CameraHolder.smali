.class public Lcom/android/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sHolder:Lcom/android/camera/CameraHolder;


# instance fields
.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraOpened:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeepBeforeTime:J

.field private mLastMode:I

.field private mOriginalParameters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Camera$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/camera/CameraHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    return v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CameraHolder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraHolder$MyHandler;-><init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cloneParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    return-object v0
.end method

.method public static injectMockCamera([Landroid/hardware/Camera$CameraInfo;[Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 1

    sput-object p0, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    sput-object p1, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v0, Lcom/android/camera/CameraHolder;

    invoke-direct {v0}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/CameraHolder;
    .locals 2

    const-class v1, Lcom/android/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/CameraHolder;

    invoke-direct {v0}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    :cond_0
    sget-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    return v0
.end method

.method public getLastMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    return v0
.end method

.method public injectDummyParameters(Lcom/android/camera/CameraManager$CameraProxy;I)Landroid/hardware/Camera$Parameters;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1}, Lcom/android/camera/CameraHolder;->cloneParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-object v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(IZI)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open.cameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", currentMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mLastMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lcom/android/camera/CameraDataContainer;->getActualOpenCameraId(II)I

    move-result p1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    if-eq v2, p1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    :try_start_1
    const-string/jumbo v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraManager;->openCamera(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    :goto_0
    iput p1, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    iput p3, p0, Lcom/android/camera/CameraHolder;->mLastMode:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    if-nez v2, :cond_3

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/CameraHolder;->cloneParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_5
    :try_start_3
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v2, "CameraHolder"

    const-string/jumbo v3, "fail to connect Camera"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/android/camera/CameraHardwareException;

    invoke-direct {v2, v1}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6
    :try_start_5
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_7
    :try_start_6
    const-string/jumbo v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reconnect camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->reconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v2, "CameraHolder"

    const-string/jumbo v3, "reconnect failed."

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized release(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v3, :cond_0

    const-string/jumbo v3, "CameraHolder"

    const-string/jumbo v4, "null camera device"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_2

    iget-wide v4, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized tryOpen(II)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/camera/CameraHolder;->open(IZI)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    monitor-exit p0

    return-object v1
.end method
