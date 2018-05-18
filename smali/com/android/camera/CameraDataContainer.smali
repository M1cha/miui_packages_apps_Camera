.class public Lcom/android/camera/CameraDataContainer;
.super Ljava/lang/Object;
.source "CameraDataContainer.java"


# static fields
.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sInstance:Lcom/android/camera/CameraDataContainer;


# instance fields
.field private mAuxBackCameraId:I

.field private mFrontCameraId:I

.field private final mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mMainBackCameraId:I

.field private mMuxCameraId:I

.field private final mNumberOfCameras:I


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    iput v3, p0, Lcom/android/camera/CameraDataContainer;->mFrontCameraId:I

    iput v3, p0, Lcom/android/camera/CameraDataContainer;->mMuxCameraId:I

    iput v3, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    sget-object v1, Lcom/android/camera/CameraDataContainer;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/CameraDataContainer;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v1, v1

    iput v1, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    sget-object v1, Lcom/android/camera/CameraDataContainer;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    if-ge v0, v1, :cond_6

    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_3

    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mFrontCameraId:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mFrontCameraId:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_5

    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mMuxCameraId:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_1

    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mMuxCameraId:I

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static getInstance()Lcom/android/camera/CameraDataContainer;
    .locals 2

    sget-object v0, Lcom/android/camera/CameraDataContainer;->sInstance:Lcom/android/camera/CameraDataContainer;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/camera/CameraDataContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraDataContainer;->sInstance:Lcom/android/camera/CameraDataContainer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/CameraDataContainer;

    invoke-direct {v0}, Lcom/android/camera/CameraDataContainer;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataContainer;->sInstance:Lcom/android/camera/CameraDataContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/camera/CameraDataContainer;->sInstance:Lcom/android/camera/CameraDataContainer;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getActualOpenCameraId(II)I
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v2

    :goto_0
    move v0, p1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v3

    if-ne p1, v3, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return v0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mMuxCameraId:I

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mMuxCameraId:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wide"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "tele"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAuxBackCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    return v0
.end method

.method public getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid camera id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mFrontCameraId:I

    return v0
.end method

.method public getMainBackCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    return v0
.end method

.method public getMuxCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mMuxCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    return v0
.end method

.method public hasMuxCamera()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mMuxCameraId:I

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->isForceCamera0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
