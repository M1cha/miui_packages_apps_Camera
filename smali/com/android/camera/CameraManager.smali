.class public Lcom/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraManager$CameraHandler;,
        Lcom/android/camera/CameraManager$CameraProxy;,
        Lcom/android/camera/CameraManager$CameraState;,
        Lcom/android/camera/CameraManager$HardwareErrorListener;
    }
.end annotation


# static fields
.field private static sCameraManager:Lcom/android/camera/CameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraState:I

.field private mFlashOn:Z

.field private mFocusSuccessful:Z

.field private mHardwareProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

.field private volatile mHoldException:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewEnable:Z

.field private mReconnectException:Ljava/io/IOException;

.field private mSig:Landroid/os/ConditionVariable;

.field private mWBCT:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/CameraManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/CameraManager;)Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/camera/CameraManager;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraManager;->mWBCT:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/CameraManager;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraManager;->mCameraState:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/CameraManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraManager;->mFlashOn:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/CameraManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraManager;->mFocusSuccessful:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mHardwareProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/CameraManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraManager;->mHoldException:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/CameraManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraManager;->mPreviewEnable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/camera/CameraManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraManager;->mCameraState:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/CameraManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mFlashOn:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/CameraManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mFocusSuccessful:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/CameraManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mHoldException:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/camera/CameraManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mPreviewEnable:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/camera/CameraManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraManager;->mWBCT:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/CameraManager;

    invoke-direct {v0}, Lcom/android/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mHardwareProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    return-void
.end method

.method public static instance()Lcom/android/camera/CameraManager;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-object v0
.end method


# virtual methods
.method public getCameraProxy()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getStashParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public holdException(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mHoldException:Z

    return-void
.end method

.method public openCamera(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraManager;->mHoldException:Z

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mHardwareProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraManager;->mCameraState:I

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStashParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method
