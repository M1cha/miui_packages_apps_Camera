.class public Lcom/android/camera/MotionFocusManager;
.super Ljava/lang/Object;
.source "MotionFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MotionFocusManager$MainHandler;,
        Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    }
.end annotation


# instance fields
.field private mAccelerationListener:Landroid/hardware/SensorEventListener;

.field private final mAccelerometer:Landroid/hardware/Sensor;

.field private mAccelerometerTag:I

.field private mAccelerometerTimeStamp:J

.field private mAngleTotal:D

.field private mDeviceStable:Z

.field private mEnabled:Z

.field private mGyrocopeTimeStamp:J

.field private final mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private mHandler:Landroid/os/Handler;

.field private mListenerRegister:Z

.field private final mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/MotionFocusManager$MotionFocusListener;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    .line 37
    iput-wide v2, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J

    .line 38
    iput-wide v2, p0, Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J

    .line 105
    new-instance v0, Lcom/android/camera/MotionFocusManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/MotionFocusManager$1;-><init>(Lcom/android/camera/MotionFocusManager;)V

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 146
    new-instance v0, Lcom/android/camera/MotionFocusManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/MotionFocusManager$2;-><init>(Lcom/android/camera/MotionFocusManager;)V

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerationListener:Landroid/hardware/SensorEventListener;

    .line 55
    iput-object p2, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    .line 56
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometer:Landroid/hardware/Sensor;

    .line 58
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mGyroscope:Landroid/hardware/Sensor;

    .line 59
    new-instance v0, Lcom/android/camera/MotionFocusManager$MainHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/camera/MotionFocusManager$MainHandler;-><init>(Lcom/android/camera/MotionFocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MotionFocusManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/camera/MotionFocusManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/camera/MotionFocusManager;)Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/MotionFocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/MotionFocusManager;->deviceBecomeStable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/MotionFocusManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$218(Lcom/android/camera/MotionFocusManager;D)D
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;
    .param p1, "x1"    # D

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/MotionFocusManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/MotionFocusManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/camera/MotionFocusManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/camera/MotionFocusManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/MotionFocusManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/MotionFocusManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/MotionFocusManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I

    return p1
.end method

.method static synthetic access$612(Lcom/android/camera/MotionFocusManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/MotionFocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/MotionFocusManager;->deviceBeginMoving()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/MotionFocusManager;D)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;
    .param p1, "x1"    # D

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MotionFocusManager;->deviceKeepMoving(D)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/MotionFocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MotionFocusManager;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/MotionFocusManager;->deviceKeepStable()V

    return-void
.end method

.method private deviceBecomeStable()V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-interface {v0}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->onDeviceBecomeStable()V

    .line 204
    :cond_0
    return-void
.end method

.method private deviceBeginMoving()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-interface {v0}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->onDeviceBeginMoving()V

    .line 198
    return-void
.end method

.method private deviceKeepMoving(D)V
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->onDeviceKeepMoving(D)V

    .line 212
    return-void
.end method

.method private deviceKeepStable()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-interface {v0}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->onDeviceKeepStable()V

    .line 208
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 84
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    :cond_0
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 75
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    if-nez v0, :cond_0

    .line 76
    iput-boolean v1, p0, Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    .line 78
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/MotionFocusManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/MotionFocusManager;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 79
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/MotionFocusManager;->mAccelerationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 81
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    .line 101
    iput-boolean v2, p0, Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I

    .line 103
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    .line 64
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    .line 93
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/MotionFocusManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/MotionFocusManager;->mAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 96
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/MotionFocusManager;->register()V

    goto :goto_0
.end method
