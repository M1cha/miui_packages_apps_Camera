.class final Lcom/android/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-object p2, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 881
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 21
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v2, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #setter for: Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$4102(Lcom/android/camera/Camera;I)I

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2, v0, v1}, Lcom/android/camera/Camera;->access$4202(Lcom/android/camera/Camera;J)J

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)J

    move-result-wide v2

    const-wide/16 v17, 0x0

    cmp-long v2, v2, v17

    if-eqz v2, :cond_5

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 905
    :goto_1
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v0, v6, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)I

    move-result v3

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSnapshotMode:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4400(Lcom/android/camera/Camera;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mNeedFlash:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4500(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/Camera;->mNeedFlash:Z
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Z)Z

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)V

    .line 920
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 929
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)I

    move-result v3

    if-lt v2, v3, :cond_0

    :cond_4
    if-eqz p1, :cond_0

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 936
    .local v16, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v10

    .line 938
    .local v10, orientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegRotation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)I

    move-result v2

    add-int/2addr v2, v10

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_7

    .line 939
    move-object/from16 v0, v16

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .line 940
    .local v7, width:I
    move-object/from16 v0, v16

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 945
    .local v8, height:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 947
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "camera_picture_taken_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget v9, v3, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIIZ)V

    .line 967
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #title:Ljava/lang/String;
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 968
    .local v13, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)J

    move-result-wide v17

    sub-long v17, v13, v17

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    .line 969
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v0, v6, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v2, :cond_0

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/Camera;->showHDRExit(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;Z)V

    goto/16 :goto_0

    .line 900
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v10           #orientation:I
    .end local v13           #now:J
    .end local v16           #s:Landroid/hardware/Camera$Size;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 922
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->cancelAutoFocus()V

    goto/16 :goto_2

    .line 942
    .restart local v10       #orientation:I
    .restart local v16       #s:Landroid/hardware/Camera$Size;
    :cond_7
    move-object/from16 v0, v16

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 943
    .restart local v7       #width:I
    move-object/from16 v0, v16

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v8       #height:I
    goto/16 :goto_3

    .line 952
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p1

    #setter for: Lcom/android/camera/Camera;->mJpegImageData:[B
    invoke-static {v2, v0}, Lcom/android/camera/Camera;->access$4802(Lcom/android/camera/Camera;[B)[B

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mQuickCapture:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showPostCaptureAlert()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)V

    .line 955
    int-to-double v2, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreviewHeight:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v17, v0

    div-double v2, v2, v17

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v15, v2

    .line 956
    .local v15, ratio:I
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    .line 957
    .local v12, inSampleSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v2, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6, v12}, Lcom/android/camera/Thumbnail;->createBitmap([BIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    goto :goto_5

    .line 963
    .end local v12           #inSampleSize:I
    .end local v15           #ratio:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doAttach()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)V

    goto/16 :goto_4
.end method
