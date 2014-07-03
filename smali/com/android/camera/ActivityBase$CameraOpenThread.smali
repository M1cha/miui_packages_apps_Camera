.class public Lcom/android/camera/ActivityBase$CameraOpenThread;
.super Ljava/lang/Thread;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraOpenThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v2, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v3, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iget v3, v3, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 209
    iget-object v1, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v2, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 210
    iget-object v1, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v2, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/ActivityBase;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iput-boolean v4, v1, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    goto :goto_0

    .line 213
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/camera/ActivityBase;

    iput-boolean v4, v1, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    goto :goto_0
.end method
