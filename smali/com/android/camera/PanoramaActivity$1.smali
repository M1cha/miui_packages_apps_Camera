.class Lcom/android/camera/PanoramaActivity$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 219
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-boolean v0, v0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 228
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$400(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$500(Lcom/android/camera/PanoramaActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_0

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->alignFrame()V

    .line 234
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->isFramesUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->processFrame()V

    goto :goto_0
.end method
