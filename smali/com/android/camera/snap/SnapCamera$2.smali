.class Lcom/android/camera/snap/SnapCamera$2;
.super Landroid/view/OrientationEventListener;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    const/16 v5, 0xe1

    const/16 v4, 0x87

    const/4 v0, 0x0

    const/16 v3, 0x2d

    if-gt v3, p1, :cond_1

    if-ge p1, v4, :cond_1

    const/16 v0, 0xb4

    :goto_0
    const/4 v2, -0x1

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v4}, Lcom/android/camera/snap/SnapCamera;->-get2(Lcom/android/camera/snap/SnapCamera;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    rsub-int v3, v0, 0x168

    rem-int/lit16 v2, v3, 0x168

    :goto_1
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v3}, Lcom/android/camera/snap/SnapCamera;->-get5(Lcom/android/camera/snap/SnapCamera;)I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v3, v2}, Lcom/android/camera/snap/SnapCamera;->updateCameraOrientation(I)V

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v3, v2}, Lcom/android/camera/snap/SnapCamera;->-set0(Lcom/android/camera/snap/SnapCamera;I)I

    :cond_0
    return-void

    :cond_1
    if-gt v4, p1, :cond_2

    if-ge p1, v5, :cond_2

    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    if-gt v5, p1, :cond_3

    const/16 v3, 0x13b

    if-ge p1, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    goto :goto_0

    :cond_4
    rem-int/lit16 v2, v0, 0x168

    goto :goto_1

    :cond_5
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_1
.end method
