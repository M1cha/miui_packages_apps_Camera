.class Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;
.super Landroid/view/animation/LinearInterpolator;
.source "CameraSnapAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v2, p1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->-get3(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v2

    iput v0, v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    invoke-super {p0, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->invalidateSelf()V

    return v1
.end method
