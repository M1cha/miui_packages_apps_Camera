.class Lcom/android/camera/camera_adapter/CameraQcom$1;
.super Ljava/lang/Object;
.source "CameraQcom.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/CameraQcom;->getSupportedPortraitPictureSizes()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraQcom;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/CameraQcom;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraQcom$1;->this$0:Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 3

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v0, v1

    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/camera_adapter/CameraQcom$1;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
