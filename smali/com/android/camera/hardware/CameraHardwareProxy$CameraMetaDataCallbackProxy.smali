.class Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardwareProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraMetaDataCallbackProxy"
.end annotation


# instance fields
.field private mMetaDataCallback:Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCameraMetaData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;->mMetaDataCallback:Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, [B

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/hardware/Camera;

    invoke-interface {v2, v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    :cond_0
    return-object v3
.end method
