.class Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;
.super Landroid/view/animation/DecelerateInterpolator;
.source "CameraSnapAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startModeChangeAnimation()V
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

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->-get0(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->updateValue(F)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->-get4(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->updateValue(F)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->-get5(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->updateValue(F)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->-get2(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->updateValue(F)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->invalidateSelf()V

    return v0
.end method
