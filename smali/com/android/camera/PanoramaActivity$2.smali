.class Lcom/android/camera/PanoramaActivity$2;
.super Landroid/os/Handler;
.source "PanoramaActivity.java"


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
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x4320

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$800(Lcom/android/camera/PanoramaActivity;)V

    .line 268
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/camera/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/camera/PanoramaActivity;->access$900(Lcom/android/camera/PanoramaActivity;Landroid/graphics/Bitmap;)V

    .line 269
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->saveHighResMosaic()V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$800(Lcom/android/camera/PanoramaActivity;)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->saveThumbnailToFile()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1000(Lcom/android/camera/PanoramaActivity;)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1100(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 284
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$800(Lcom/android/camera/PanoramaActivity;)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1000(Lcom/android/camera/PanoramaActivity;)V

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1100(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1500(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$1200(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$1300(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PanoramaActivity;->access$1400(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PanoramaActivity$2$1;

    invoke-direct {v4, p0}, Lcom/android/camera/PanoramaActivity$2$1;-><init>(Lcom/android/camera/PanoramaActivity$2;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 300
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$800(Lcom/android/camera/PanoramaActivity;)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1000(Lcom/android/camera/PanoramaActivity;)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1100(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0

    .line 305
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 309
    :pswitch_5
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/camera/PanoramaActivity$ProgressData;

    .line 310
    .local v11, pd:Lcom/android/camera/PanoramaActivity$ProgressData;
    iget v0, v11, Lcom/android/camera/PanoramaActivity$ProgressData;->progressX:F

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$1600(Lcom/android/camera/PanoramaActivity;)F

    move-result v1

    mul-float v7, v0, v1

    .line 311
    .local v7, accumulatedHorizontalAngle:F
    iget v0, v11, Lcom/android/camera/PanoramaActivity$ProgressData;->progressY:F

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$1700(Lcom/android/camera/PanoramaActivity;)F

    move-result v1

    mul-float v8, v0, v1

    .line 312
    .local v8, accumulatedVerticalAngle:F
    iget-boolean v0, v11, Lcom/android/camera/PanoramaActivity$ProgressData;->isFinished:Z

    if-nez v0, :cond_3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V
    invoke-static {v0, v3}, Lcom/android/camera/PanoramaActivity;->access$1800(Lcom/android/camera/PanoramaActivity;Z)V

    goto/16 :goto_0

    .line 317
    :cond_4
    iget v0, v11, Lcom/android/camera/PanoramaActivity$ProgressData;->panningRateX:F

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$1600(Lcom/android/camera/PanoramaActivity;)F

    move-result v1

    mul-float v9, v0, v1

    .line 318
    .local v9, panningRateXInDegree:F
    iget v0, v11, Lcom/android/camera/PanoramaActivity$ProgressData;->panningRateY:F

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$1700(Lcom/android/camera/PanoramaActivity;)F

    move-result v1

    mul-float v10, v0, v1

    .line 319
    .local v10, panningRateYInDegree:F
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->updateProgress(FFFF)V
    invoke-static {v0, v9, v10, v7, v8}, Lcom/android/camera/PanoramaActivity;->access$1900(Lcom/android/camera/PanoramaActivity;FFFF)V

    goto/16 :goto_0

    .line 324
    .end local v7           #accumulatedHorizontalAngle:F
    .end local v8           #accumulatedVerticalAngle:F
    .end local v9           #panningRateXInDegree:F
    .end local v10           #panningRateYInDegree:F
    .end local v11           #pd:Lcom/android/camera/PanoramaActivity$ProgressData;
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
