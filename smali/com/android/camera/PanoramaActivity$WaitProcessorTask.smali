.class Lcom/android/camera/PanoramaActivity$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PanoramaActivity;
    .param p2, "x1"    # Lcom/android/camera/PanoramaActivity$1;

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;-><init>(Lcom/android/camera/PanoramaActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1299
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    monitor-enter v1

    .line 1303
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1306
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1310
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 1311
    const/4 v0, 0x0

    return-object v0

    .line 1310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1299
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1316
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    const/4 v3, 0x0

    # setter for: Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v2, v3}, Lcom/android/camera/PanoramaActivity;->access$3402(Lcom/android/camera/PanoramaActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1317
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$1400(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/RotateDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1318
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v2}, Lcom/android/camera/PanoramaActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/GLRootView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1319
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # invokes: Lcom/android/camera/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$3500(Lcom/android/camera/PanoramaActivity;)V

    .line 1320
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$3600(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1321
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # getter for: Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$3600(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1322
    .local v0, "h":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # invokes: Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V
    invoke-static {v2, v1, v0}, Lcom/android/camera/PanoramaActivity;->access$3700(Lcom/android/camera/PanoramaActivity;II)V

    .line 1325
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->this$0:Lcom/android/camera/PanoramaActivity;

    # invokes: Lcom/android/camera/PanoramaActivity;->resetToPreview()V
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$900(Lcom/android/camera/PanoramaActivity;)V

    .line 1326
    return-void
.end method
