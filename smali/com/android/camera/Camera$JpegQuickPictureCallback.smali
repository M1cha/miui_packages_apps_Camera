.class final Lcom/android/camera/Camera$JpegQuickPictureCallback;
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
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$JpegQuickPictureCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2404(Lcom/android/camera/Camera;)I

    .line 1013
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnappedCount:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v8

    .line 1016
    .local v8, orientation:I
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegRotation:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)I

    move-result v0

    add-int/2addr v0, v8

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1018
    .local v5, width:I
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1023
    .local v6, height:I
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 1025
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget v7, v1, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    const/4 v9, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIIZ)V

    .line 1029
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnappedCount:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5400(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1030
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "camera_picture_taken_key"

    iget-object v2, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnappedCount:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 1032
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->handleMultiSnapDone()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 1020
    .end local v5           #width:I
    .end local v6           #height:I
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1021
    .restart local v5       #width:I
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v6       #height:I
    goto :goto_1

    .line 1043
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->playSound(I)V

    goto/16 :goto_0
.end method

.method public reset(Landroid/location/Location;)Lcom/android/camera/Camera$JpegQuickPictureCallback;
    .locals 0
    .parameter "loc"

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/android/camera/Camera$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    .line 1003
    return-object p0
.end method
