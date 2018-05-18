.class public Lcom/android/camera/SensorStateManager;
.super Ljava/lang/Object;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SensorStateManager$1;,
        Lcom/android/camera/SensorStateManager$2;,
        Lcom/android/camera/SensorStateManager$3;,
        Lcom/android/camera/SensorStateManager$MainHandler;,
        Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;,
        Lcom/android/camera/SensorStateManager$SensorStateListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_POSTURE_DEGREE:I

.field private static final GYROSCOPE_MOVING_THRESHOLD:D

.field private static final GYROSCOPE_STABLE_THRESHOLD:D


# instance fields
.field private final mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

.field private mAccelerometerTag:I

.field private mAccelerometerTimeStamp:J

.field private mAngleSpeed:[D

.field private mAngleSpeedIndex:I

.field private mAngleTotal:D

.field private mCapturePosture:I

.field private mDeviceStable:Z

.field private mEdgeTouchEnabled:Z

.field private mFocusSensorEnabled:Z

.field private mGradienterEnabled:Z

.field private final mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private mGyroscopeTimeStamp:J

.field private mHandler:Landroid/os/Handler;

.field private mIsLying:Z

.field private mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

.field private final mLinearAccelerometer:Landroid/hardware/Sensor;

.field private mOrientation:F

.field private final mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mRate:I

.field private mRotationFlagEnabled:Z

.field private mSensorListenerThread:Landroid/os/HandlerThread;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegister:I

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return v0
.end method

.method static synthetic -get1()D
    .locals 2

    sget-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/camera/SensorStateManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/camera/SensorStateManager;)[D
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/SensorStateManager;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/SensorStateManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/camera/SensorStateManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/camera/SensorStateManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/SensorStateManager;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/SensorStateManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/camera/SensorStateManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/SensorStateManager;D)D
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/camera/SensorStateManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/camera/SensorStateManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/SensorStateManager;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/SensorStateManager;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->normalizeDegree(F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/SensorStateManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBecomeStable()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBeginMoving()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/SensorStateManager;D)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->deviceKeepMoving(D)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/SensorStateManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x41200000    # 10.0f

    const-string/jumbo v0, "camera_stable_threshold"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    sput-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    const-string/jumbo v0, "camera_moving_threshold"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    sput-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    const-string/jumbo v0, "capture_degree"

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    iput-boolean v4, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    iput v4, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    iput v4, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTag:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    const/4 v0, 0x5

    new-array v0, v0, [D

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v4

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v5

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v6

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    iput-wide v8, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    iput-wide v8, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    new-instance v0, Lcom/android/camera/SensorStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$1;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/camera/SensorStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$2;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/camera/SensorStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$3;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/camera/SensorStateManager$MainHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/SensorStateManager$MainHandler;-><init>(Lcom/android/camera/SensorStateManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SensorListenerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method private changeCapturePosture(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->notifyDevicePostureChanged()V

    :cond_0
    return-void
.end method

.method private deviceBecomeStable()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBecomeStable()V

    :cond_0
    return-void
.end method

.method private deviceBeginMoving()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBeginMoving()V

    return-void
.end method

.method private deviceKeepMoving(D)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method

.method private filterUnregisterSensor(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, -0x3

    and-int/lit8 p1, v0, -0x5

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, -0x5

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, -0x2

    and-int/lit8 p1, v0, -0x3

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, -0x9

    and-int/lit8 p1, v0, -0x5

    :cond_3
    return p1
.end method

.method private isContains(II)Z
    .locals 1

    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPartialContains(II)Z
    .locals 2

    const/4 v0, 0x0

    and-int v1, p1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private normalizeDegree(F)F
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    :goto_0
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr p1, v1

    goto :goto_1

    :cond_1
    return p1
.end method

.method private update(IZ)V
    .locals 1

    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->register(I)V

    goto :goto_0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCapturePosture()I
    .locals 1

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    return v0
.end method

.method public isDeviceLying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return v0
.end method

.method public isStable()Z
    .locals 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    if-ltz v10, :cond_2

    const-wide/16 v6, 0x0

    iget-object v11, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_0

    aget-wide v4, v11, v10

    add-double/2addr v6, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    array-length v10, v10

    int-to-double v10, v10

    div-double v0, v6, v10

    iget-object v10, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    iget v11, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    iget-object v12, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v9, v12}, Lcom/android/camera/Util;->clamp(III)I

    move-result v11

    aget-wide v2, v10, v11

    const-string/jumbo v10, "SensorStateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isStable mAngleSpeed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " lastSpeed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " threshold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v10, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    cmpg-double v10, v0, v10

    if-gtz v10, :cond_1

    sget-wide v10, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    cmpg-double v10, v2, v10

    if-gtz v10, :cond_1

    :goto_1
    return v8

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    const-string/jumbo v9, "SensorStateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isStable return true for mAngleSpeedIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v12, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public register()V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    or-int/lit8 v0, v1, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x2

    or-int/lit8 v0, v1, 0x4

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x8

    or-int/lit8 v0, v1, 0x4

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->register(I)V

    return-void
.end method

.method public register(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/camera/SensorStateManager;->mDeviceStable:Z

    or-int/lit8 v0, p1, 0x1

    or-int/lit8 p1, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v6}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_5
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    iput-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mDeviceStable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTag:I

    return-void
.end method

.method public setEdgeTouchEnabled(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0x3

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_2
    return-void
.end method

.method public setFocusSensorEnabled(Z)V
    .locals 6

    const/4 v4, 0x2

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/SensorStateManager;->filterUnregisterSensor(I)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGradienterEnabled(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/SensorStateManager;->filterUnregisterSensor(I)I

    move-result v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public setRotationIndicatorEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/Device;->isOrientationIndicatorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/SensorStateManager;->filterUnregisterSensor(I)I

    move-result v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    :cond_1
    return-void
.end method

.method public setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public unregister(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x1

    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    iput-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    invoke-direct {p0, v2}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    :cond_6
    return-void
.end method
