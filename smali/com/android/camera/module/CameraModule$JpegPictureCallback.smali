.class public Lcom/android/camera/module/CameraModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field protected mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 61

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Invalid state: mParameters is null. Is your module alive?"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v6, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "JpegPictureCallback#onPictureTaken data "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_3

    const-string/jumbo v5, "null"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v5, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/camera/module/CameraModule;->-set6(Lcom/android/camera/module/CameraModule;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get15(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v6}, Lcom/android/camera/module/CameraModule;->-get9(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v10}, Lcom/android/camera/module/CameraModule;->-get15(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v10

    sub-long/2addr v6, v10

    iput-wide v6, v5, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_1
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v10, v7, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v5}, Lcom/android/camera/FocusManager;->onShutter()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v6, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap0(Lcom/android/camera/module/CameraModule;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    :cond_1
    if-nez p1, :cond_6

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p1

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get18(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v6}, Lcom/android/camera/module/CameraModule;->-get9(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v10}, Lcom/android/camera/module/CameraModule;->-get18(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v10

    sub-long/2addr v6, v10

    iput-wide v6, v5, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v6}, Lcom/android/camera/module/CameraModule;->-get9(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v10}, Lcom/android/camera/module/CameraModule;->-get21(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v10

    sub-long/2addr v6, v10

    iput-wide v6, v5, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v5, v5, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    xor-int/lit8 v5, v5, 0x1

    :goto_2
    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v6, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/camera/module/CameraModule;->-wrap28(Lcom/android/camera/module/CameraModule;ZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap8(Lcom/android/camera/module/CameraModule;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v56

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v17

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "orientation from exif -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", jpeg rottaion-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v7, v7, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isUDCFPortraitNeedRotation()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v5, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    move/from16 v17, v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    new-instance v47, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct/range {v47 .. v47}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    new-instance v42, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v42 .. v42}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/exif/ExifInterface;->addOrientation(I)Z

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    invoke-virtual/range {v42 .. v42}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reset orientation takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v10, v48, v58

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int v5, v5, v17

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_12

    move-object/from16 v0, v56

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v56

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/module/CameraModule;->getParallelProcessingFileTitle()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, v50

    invoke-static {v5, v0}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileTitle is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v20, 0x0

    invoke-static {}, Lcom/android/camera/Device;->enableAlgorithmInFileSuffix()Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->getAlgorithmName()Ljava/lang/String;

    move-result-object v20

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v7}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/module/CameraModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v21

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get5(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v5

    if-eqz v5, :cond_c

    new-instance v4, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    if-le v8, v9, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v6}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_5
    if-le v9, v8, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_6
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v10

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectController;->copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    if-nez v5, :cond_15

    const/4 v12, 0x0

    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get19(Lcom/android/camera/module/CameraModule;)I

    move-result v16

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get20(Lcom/android/camera/module/CameraModule;)F

    move-result v5

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v5, v5, v18

    if-nez v5, :cond_16

    const/16 v18, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    xor-int/lit8 v19, v5, 0x1

    :goto_9
    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v21}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;-><init>([BIIIIILcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/module/CameraModule;->trackGeneralInfo(IZ)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    :goto_a
    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10, v5}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v5, v5, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v5, :cond_21

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get5(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Z

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set9(Lcom/android/camera/module/CameraModule;Z)Z

    :goto_b
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_d

    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    :cond_e
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v6}, Lcom/android/camera/module/CameraModule;->-get9(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v6

    sub-long v6, v52, v6

    iput-wide v6, v5, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mJpegCallbackFinishTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v10, v7, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v6, v6, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long v6, v52, v6

    invoke-static {v5, v6, v7}, Lcom/android/camera/module/CameraModule;->-wrap26(Lcom/android/camera/module/CameraModule;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v6, v6, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long v6, v52, v6

    iput-wide v6, v5, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v10, v7, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get13(Lcom/android/camera/module/CameraModule;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap27(Lcom/android/camera/module/CameraModule;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set10(Lcom/android/camera/module/CameraModule;Z)Z

    :cond_10
    return-void

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v46

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Exception when add orientation EXIF tag"

    move-object/from16 v0, v46

    invoke-static {v5, v6, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, v56

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, v56

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v6}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_6

    :cond_15
    new-instance v12, Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-direct {v12, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get20(Lcom/android/camera/module/CameraModule;)F

    move-result v18

    goto/16 :goto_8

    :cond_17
    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap0(Lcom/android/camera/module/CameraModule;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get6(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/camera/groupshot/GroupShot;->attach([B)I

    move-result v55

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v7, "mGroupShot attach() = 0x%08x index=%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v11, v11, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v6, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v5, v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    const-string/jumbo v6, "pref_groupshot_with_primitive_picture_key"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v29, v0

    const/16 v23, 0xa

    const/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v33, v17

    move-object/from16 v37, v21

    invoke-virtual/range {v22 .. v37}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v5, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v6, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1d

    const/16 v45, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    move/from16 v0, v45

    int-to-long v6, v0

    const/16 v10, 0x1e

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1d
    const/16 v45, 0x64

    goto :goto_d

    :cond_1e
    new-instance v22, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v23, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get6(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v31

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v17

    move-object/from16 v30, v13

    invoke-direct/range {v22 .. v31}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;-><init>(Lcom/android/camera/module/CameraModule;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/groupshot/GroupShot;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get7(Lcom/android/camera/module/CameraModule;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set4(Lcom/android/camera/module/CameraModule;I)I

    goto/16 :goto_b

    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v5

    if-eqz v5, :cond_20

    const/16 v25, 0x2

    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v5}, Lcom/android/camera/module/CameraModule;->isParallelProcessing()Z

    move-result v39

    const/16 v30, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    move-object/from16 v26, p1

    move-object/from16 v27, v13

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v35, v17

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    invoke-virtual/range {v24 .. v41}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    goto/16 :goto_b

    :cond_20
    const/16 v25, 0x1

    goto :goto_e

    :cond_21
    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get5(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v6, v4, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set5(Lcom/android/camera/module/CameraModule;[B)[B

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap4(Lcom/android/camera/module/CameraModule;)Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap6(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string/jumbo v43, "no-fusion-id!"

    :cond_22
    invoke-static/range {v43 .. v43}, Lcom/android/camera/module/CameraModule;->-wrap5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    int-to-float v5, v8

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap10(Lcom/android/camera/module/CameraModule;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, v60

    move/from16 v1, v57

    invoke-static {v5, v0, v1}, Lcom/android/camera/module/CameraModule;->-wrap14(Lcom/android/camera/module/CameraModule;Ljava/lang/String;I)V

    return-void

    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/PictureInfo;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set5(Lcom/android/camera/module/CameraModule;[B)[B

    goto :goto_f

    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v5, v5, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    if-nez v5, :cond_25

    int-to-double v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    int-to-double v10, v5

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v51

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get8(Lcom/android/camera/module/CameraModule;)[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v6}, Lcom/android/camera/module/CameraModule;->-get19(Lcom/android/camera/module/CameraModule;)I

    move-result v6

    rsub-int v6, v6, 0x168

    add-int v6, v6, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v7, v7, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    add-int/2addr v6, v7

    const/4 v7, 0x0

    move/from16 v0, v51

    invoke-static {v5, v6, v7, v0}, Lcom/android/camera/Thumbnail;->createBitmap([BIZI)Landroid/graphics/Bitmap;

    move-result-object v44

    if-eqz v44, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap23(Lcom/android/camera/module/CameraModule;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/module/CameraModule;->-set7(Lcom/android/camera/module/CameraModule;Z)Z

    goto/16 :goto_c

    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap13(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_c
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method
