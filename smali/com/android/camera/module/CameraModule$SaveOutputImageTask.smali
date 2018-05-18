.class Lcom/android/camera/module/CameraModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
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
.field private mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

.field private mHeight:I

.field private mLocation:Landroid/location/Location;

.field private mOrientation:I

.field private mStartTime:J

.field private mTimeTaken:J

.field private mTitle:Ljava/lang/String;

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/groupshot/GroupShot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p2, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTimeTaken:J

    iput-object p4, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mLocation:Landroid/location/Location;

    iput p5, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mWidth:I

    iput p6, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mHeight:I

    iput p7, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mOrientation:I

    iput-object p8, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTitle:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    return-void
.end method

.method private finishGroupShot()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->clearImages()I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->finish()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    :cond_0
    iput-object v1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-get7(Lcom/android/camera/module/CameraModule;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-set4(Lcom/android/camera/module/CameraModule;I)I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 18

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "doInBackground start"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5}, Lcom/android/camera/groupshot/GroupShot;->attach_end()I

    move-result v13

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "attach_end() = 0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/groupshot/GroupShot;->setBaseImage(I)I

    move-result v13

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setBaseImage() = 0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5}, Lcom/android/camera/groupshot/GroupShot;->setBestFace()I

    move-result v13

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groupshot attach end & setbestface cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTitle:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get6(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/camera/groupshot/GroupShot;->saveInputImages(Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    return-object v5

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5, v4}, Lcom/android/camera/groupshot/GroupShot;->getImageAndSaveJpeg(Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groupshot finish group cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    return-object v5

    :catch_0
    move-exception v11

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SaveOutputImageTask exception occurs, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3
    const/4 v5, 0x0

    return-object v5

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mOrientation:I

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTimeTaken:J

    invoke-static {v4, v5, v6, v8, v9}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mOrientation:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTimeTaken:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mHeight:I

    invoke-static/range {v3 .. v10}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v15

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groupshot insert db cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v5, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v2, :cond_5

    const/4 v5, 0x0

    return-object v5

    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    if-eqz v15, :cond_6

    invoke-virtual {v2, v15}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    invoke-static {v3, v15}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v15, v6}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v14

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v14, v6, v7}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_6
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groupshot asynctask cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SaveOutputImageTask onCancelled"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->finishGroupShot()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SaveOutputImageTask onPostExecute"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "groupshot image process cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->finishGroupShot()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    return-void
.end method
