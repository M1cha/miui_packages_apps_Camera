.class final Lcom/android/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 926
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusStartTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/Camera;->mAutoFocusTime:J

    .line 934
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v2, v2, Lcom/android/camera/Camera;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;I)V

    .line 936
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManager;->onAutoFocus(Z)V

    .line 937
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;)Lcom/android/camera/MotionFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->reset()V

    goto :goto_0
.end method
