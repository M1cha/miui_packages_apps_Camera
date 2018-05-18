.class Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mSaveImage:Z

.field saveType:I

.field start_time:J

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/content/Context;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->mSaveImage:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->saveType:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "doInBackground start"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap2(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->end()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->mSaveImage:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "%s:end() -> 0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get16()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getBoundingRect(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getBoundingRect() -> 0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get15(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap1(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3, v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap6(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_2
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get16()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getClippingRect() -> 0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get15(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap1(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3, v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap6(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_4
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "doInBackground end"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->finish()I

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-set4(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/panorama/MorphoPanoramaGP;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PanoramaFinish done"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SaveOutputImageTask onPostExecute"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get7(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get7(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-boolean v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap7(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get2(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v10}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-boolean v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v10}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get14(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap5(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->-set3(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get4(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-set0(Lcom/android/camera/module/MorphoPanoramaModule;I)I

    :cond_7
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "[MORTIME] PanoramaFinish time = %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->start_time:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->start_time:J

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    return-void
.end method
