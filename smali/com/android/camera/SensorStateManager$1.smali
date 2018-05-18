.class Lcom/android/camera/SensorStateManager$1;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->-get6(Lcom/android/camera/SensorStateManager;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/SensorStateManager$SensorStateListener;->isWorking()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-wide/32 v6, 0x5f5e100

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->-get6(Lcom/android/camera/SensorStateManager;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    const-wide/32 v6, 0x3b9aca00

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v6, v7}, Lcom/android/camera/SensorStateManager;->-set3(Lcom/android/camera/SensorStateManager;J)J

    return-void

    :cond_3
    long-to-float v1, v2

    const v6, 0x3089705f    # 1.0E-9f

    mul-float v0, v1, v6

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v10

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    mul-float/2addr v1, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v11

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v11

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v12

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v12

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v6, v7}, Lcom/android/camera/SensorStateManager;->-set3(Lcom/android/camera/SensorStateManager;J)J

    invoke-static {}, Lcom/android/camera/SensorStateManager;->-get1()D

    move-result-wide v6

    cmpg-double v1, v6, v4

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->-wrap3(Lcom/android/camera/SensorStateManager;)V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get4(Lcom/android/camera/SensorStateManager;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/android/camera/SensorStateManager;->-set1(Lcom/android/camera/SensorStateManager;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get3(Lcom/android/camera/SensorStateManager;)[D

    move-result-object v7

    array-length v7, v7

    rem-int/2addr v6, v7

    invoke-static {v1, v6}, Lcom/android/camera/SensorStateManager;->-set1(Lcom/android/camera/SensorStateManager;I)I

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->-get3(Lcom/android/camera/SensorStateManager;)[D

    move-result-object v1

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get4(Lcom/android/camera/SensorStateManager;)I

    move-result v6

    aput-wide v4, v1, v6

    const-wide v6, 0x3fa99999a0000000L    # 0.05000000074505806

    cmpg-double v1, v4, v6

    if-gez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->-get5(Lcom/android/camera/SensorStateManager;)D

    move-result-wide v6

    float-to-double v8, v0

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/android/camera/SensorStateManager;->-set2(Lcom/android/camera/SensorStateManager;D)D

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->-get5(Lcom/android/camera/SensorStateManager;)D

    move-result-wide v6

    const-wide v8, 0x3ff0c152382d7365L    # 1.0471975511965976

    cmpl-double v1, v6, v8

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcom/android/camera/SensorStateManager;->-set2(Lcom/android/camera/SensorStateManager;D)D

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$1;->this$0:Lcom/android/camera/SensorStateManager;

    const-wide v6, 0x40c3880000000000L    # 10000.0

    invoke-static {v1, v6, v7}, Lcom/android/camera/SensorStateManager;->-wrap4(Lcom/android/camera/SensorStateManager;D)V

    :cond_6
    return-void
.end method
