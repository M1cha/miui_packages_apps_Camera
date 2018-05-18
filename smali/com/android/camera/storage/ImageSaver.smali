.class public Lcom/android/camera/storage/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;,
        Lcom/android/camera/storage/ImageSaver$MemoryManager;,
        Lcom/android/camera/storage/ImageSaver$SaveRequest;,
        Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;,
        Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mHandler:Landroid/os/Handler;

.field private mHostState:I

.field private mIsCaptureIntent:Z

.field private mLastImageUri:Landroid/net/Uri;

.field private mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/storage/ImageSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldStop:Z

.field private mStop:Z

.field private mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

.field private mUpdateThumbnailLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/storage/ImageSaver;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->needThumbnail(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/storage/ImageSaver;->notifyNewImage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->notifyNewVideo(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->postHideThumbnailProgressing()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/storage/ImageSaver;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/storage/ImageSaver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->updateThumbnail(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/storage/ImageSaver$MemoryManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->start()V

    return-void
.end method

.method private addImage(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "addImage: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-virtual {p1}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->getSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap4(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isLastImageForThumbnail()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-interface {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private needThumbnail(Z)Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->isLastImageForThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyNewImage(Landroid/net/Uri;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v0, p1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyNewVideo(Landroid/net/Uri;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private postHideThumbnailProgressing()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/storage/ImageSaver$1;

    invoke-direct {v2, p0}, Lcom/android/camera/storage/ImageSaver$1;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private postUpdateThumbnail(Lcom/android/camera/Thumbnail;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/storage/ImageSaver;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    return-void
.end method

.method private postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    invoke-virtual {v0, p2}, Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;->setNeedAnimation(Z)V

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateThumbnail(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V
    .locals 20

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v19, p15

    invoke-virtual/range {v1 .. v19}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    return-void
.end method

.method public addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V
    .locals 20

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-virtual/range {v1 .. v19}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    return-void
.end method

.method public addImage(I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V
    .locals 23

    if-eqz p4, :cond_0

    if-nez p7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    move-object/from16 p7, v0

    :cond_0
    new-instance v2, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    invoke-direct/range {v2 .. v21}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)V

    return-void
.end method

.method public addVideo(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    const-string/jumbo v1, "ImageSaver"

    const-string/jumbo v2, "addVideo: host is being destroyed."

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/ActivityBase;Ljava/lang/String;Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getBurstDelay()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap3(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I

    move-result v0

    return v0
.end method

.method public getSuitableBurstShotSpeed()F
    .locals 1

    const v0, 0x3f28f5c3    # 0.66f

    return v0
.end method

.method public isNeedSlowDown()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap0(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public isNeedStopCapture()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap1(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public onHostDestroy()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "onHostDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onHostPause()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v5}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_0
    const-string/jumbo v1, "ImageSaver"

    const-string/jumbo v2, "onHostPause"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onHostResume(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const-string/jumbo v0, "ImageSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHostResume: isCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap5(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ImageSaver"

    const-string/jumbo v3, "run: exiting"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    invoke-interface {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->save()V

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-interface {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->getSize()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap6(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public shouldStopShot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    return v0
.end method

.method public updateImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object p1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->title:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->oldTitle:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->oldTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)V

    return-void
.end method
