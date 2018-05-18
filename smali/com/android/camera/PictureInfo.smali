.class public Lcom/android/camera/PictureInfo;
.super Ljava/lang/Object;
.source "PictureInfo.java"


# instance fields
.field private mInfo:Lorg/json/JSONObject;

.field private mSensorType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "rear"

    iput-object v0, p0, Lcom/android/camera/PictureInfo;->mSensorType:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PictureInfo;->mInfo:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public setMirror(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string/jumbo v2, "mirror"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CAM_PictureInfo"

    const-string/jumbo v2, "setMirror JSONException occurs "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSensorType(I)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "front"

    :goto_0
    iput-object v1, p0, Lcom/android/camera/PictureInfo;->mSensorType:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string/jumbo v2, "sensor_type"

    iget-object v3, p0, Lcom/android/camera/PictureInfo;->mSensorType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "rear"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CAM_PictureInfo"

    const-string/jumbo v2, "setSensorType JSONException occurs "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/PictureInfo;->mInfo:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
