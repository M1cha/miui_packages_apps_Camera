.class Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;
.super Landroid/os/Handler;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveHandler"
.end annotation


# instance fields
.field private mXmpJpegData:[B

.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private saveFile([BLjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->-get9(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->-get7(Lcom/android/camera/camera_adapter/CameraMTK;)I

    move-result v2

    add-int/2addr v2, v13

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    move-object/from16 v0, v18

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v18

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->-get1(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/CameraMTK;->-get6(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->getLocation()Landroid/location/Location;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap1(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/PictureInfo;

    move-result-object v17

    const/16 v3, 0x8

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    return-void

    :cond_0
    move-object/from16 v0, v18

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, v18

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Save handleMessage msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", msg.obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/camera/stereo/StereoDataGroup;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getPictureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getOriginalJpegData()[B

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getJpsData()[B

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getMaskAndConfigData()[B

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getClearImage()[B

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getDepthMap()[B

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getLdcData()[B

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap0(Lcom/android/camera/camera_adapter/CameraMTK;Ljava/lang/String;[B[B[B[B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyMergeData mXmpJpegData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getPictureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->saveFile([BLjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_0
    .end packed-switch
.end method
