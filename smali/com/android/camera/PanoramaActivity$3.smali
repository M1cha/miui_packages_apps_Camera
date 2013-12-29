.class Lcom/android/camera/PanoramaActivity$3;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/camera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 4
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    .line 531
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 533
    new-instance v1, Lcom/android/camera/PanoramaActivity$ProgressData;

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/PanoramaActivity$ProgressData;-><init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V

    .line 534
    .local v1, pd:Lcom/android/camera/PanoramaActivity$ProgressData;
    iput-boolean p1, v1, Lcom/android/camera/PanoramaActivity$ProgressData;->isFinished:Z

    .line 535
    iput p2, v1, Lcom/android/camera/PanoramaActivity$ProgressData;->panningRateX:F

    .line 536
    iput p3, v1, Lcom/android/camera/PanoramaActivity$ProgressData;->panningRateY:F

    .line 537
    iput p4, v1, Lcom/android/camera/PanoramaActivity$ProgressData;->progressX:F

    .line 538
    iput p5, v1, Lcom/android/camera/PanoramaActivity$ProgressData;->progressY:F

    .line 539
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 540
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$400(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    return-void
.end method
