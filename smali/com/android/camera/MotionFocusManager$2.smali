.class Lcom/android/camera/MotionFocusManager$2;
.super Ljava/lang/Object;
.source "MotionFocusManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MotionFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MotionFocusManager;


# direct methods
.method constructor <init>(Lcom/android/camera/MotionFocusManager;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 149
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J
    invoke-static {v6}, Lcom/android/camera/MotionFocusManager;->access$400(Lcom/android/camera/MotionFocusManager;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 150
    .local v2, "elapseTime":J
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$100(Lcom/android/camera/MotionFocusManager;)Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->isWorking()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x5f5e100

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$400(Lcom/android/camera/MotionFocusManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 155
    :cond_2
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J
    invoke-static {v4, v5, v6}, Lcom/android/camera/MotionFocusManager;->access$402(Lcom/android/camera/MotionFocusManager;J)J

    goto :goto_0

    .line 159
    :cond_3
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v9

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 162
    .local v0, "a":D
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J
    invoke-static {v4, v5, v6}, Lcom/android/camera/MotionFocusManager;->access$402(Lcom/android/camera/MotionFocusManager;J)J

    .line 164
    const-wide v4, 0x3fe99999a0000000L

    cmpl-double v4, v0, v4

    if-lez v4, :cond_5

    .line 165
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$500(Lcom/android/camera/MotionFocusManager;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # setter for: Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z
    invoke-static {v4, v9}, Lcom/android/camera/MotionFocusManager;->access$502(Lcom/android/camera/MotionFocusManager;Z)Z

    .line 167
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # setter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I
    invoke-static {v4, v9}, Lcom/android/camera/MotionFocusManager;->access$602(Lcom/android/camera/MotionFocusManager;I)I

    .line 168
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # invokes: Lcom/android/camera/MotionFocusManager;->deviceBeginMoving()V
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$700(Lcom/android/camera/MotionFocusManager;)V

    goto :goto_0

    .line 171
    :cond_4
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # invokes: Lcom/android/camera/MotionFocusManager;->deviceKeepMoving(D)V
    invoke-static {v4, v0, v1}, Lcom/android/camera/MotionFocusManager;->access$800(Lcom/android/camera/MotionFocusManager;D)V

    goto :goto_0

    .line 174
    :cond_5
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$500(Lcom/android/camera/MotionFocusManager;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 175
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # += operator for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I
    invoke-static {v4, v8}, Lcom/android/camera/MotionFocusManager;->access$612(Lcom/android/camera/MotionFocusManager;I)I

    .line 176
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$600(Lcom/android/camera/MotionFocusManager;)I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # setter for: Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z
    invoke-static {v4, v8}, Lcom/android/camera/MotionFocusManager;->access$502(Lcom/android/camera/MotionFocusManager;Z)Z

    .line 178
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 183
    :cond_6
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    # invokes: Lcom/android/camera/MotionFocusManager;->deviceKeepStable()V
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$900(Lcom/android/camera/MotionFocusManager;)V

    goto/16 :goto_0
.end method
