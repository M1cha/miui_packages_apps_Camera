.class Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field private mZoomScaled:Z

.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    const/16 v3, 0x9

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v1, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->-wrap1(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v1

    if-ne v1, v3, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->-get2(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/module/Module;->onScale(FFF)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->-wrap2(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->-get2(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/Module;->onScaleBegin(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u624b\u52bf"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->trackZoomAdjusted(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->-get2(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->-get2(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onScaleEnd()V

    :cond_1
    return-void
.end method
