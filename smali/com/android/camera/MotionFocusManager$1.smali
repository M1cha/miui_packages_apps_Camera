.class Lcom/android/camera/MotionFocusManager$1;
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
    .line 105
    iput-object p1, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 142
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 108
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v7, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J
    invoke-static {v7}, Lcom/android/camera/MotionFocusManager;->access$000(Lcom/android/camera/MotionFocusManager;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 109
    .local v1, "elapseTime":J
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$100(Lcom/android/camera/MotionFocusManager;)Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->isWorking()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x5f5e100

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$000(Lcom/android/camera/MotionFocusManager;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const-wide/32 v5, 0x3b9aca00

    cmp-long v5, v1, v5

    if-lez v5, :cond_3

    .line 114
    :cond_2
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J
    invoke-static {v5, v6, v7}, Lcom/android/camera/MotionFocusManager;->access$002(Lcom/android/camera/MotionFocusManager;J)J

    goto :goto_0

    .line 118
    :cond_3
    long-to-float v5, v1

    const v6, 0x3089705f

    mul-float v0, v5, v6

    .line 119
    .local v0, "dT":F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v11

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v11

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 122
    .local v3, "w":D
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J
    invoke-static {v5, v6, v7}, Lcom/android/camera/MotionFocusManager;->access$002(Lcom/android/camera/MotionFocusManager;J)J

    .line 124
    const-wide v5, 0x3fa99999a0000000L

    cmpg-double v5, v3, v5

    if-ltz v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    float-to-double v6, v0

    mul-double/2addr v6, v3

    # += operator for: Lcom/android/camera/MotionFocusManager;->mAngleTotal:D
    invoke-static {v5, v6, v7}, Lcom/android/camera/MotionFocusManager;->access$218(Lcom/android/camera/MotionFocusManager;D)D

    .line 128
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mAngleTotal:D
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$200(Lcom/android/camera/MotionFocusManager;)D

    move-result-wide v5

    const-wide v7, 0x3fe0c152382d7365L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    .line 129
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 130
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    :cond_4
    const-wide v5, 0x3fb99999a0000000L

    cmpl-double v5, v3, v5

    if-lez v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    # getter for: Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0
.end method
