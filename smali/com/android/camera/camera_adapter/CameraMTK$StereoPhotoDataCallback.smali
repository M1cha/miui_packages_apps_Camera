.class Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;
.super Ljava/lang/Object;
.source "CameraMTK.java"

# interfaces
.implements Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StereoPhotoDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method private constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method


# virtual methods
.method public onClearImageCapture([B)V
    .locals 3

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClearImageCapture clearImageData"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " clearImage data is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClearImageCapture clearImageData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->-set0(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap2(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method

.method public onDepthMapCapture([B)V
    .locals 3

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDepthMapCapture depthData"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "depth data is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDepthMapCapture depthData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->-set1(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap2(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method

.method public onJpsCapture([B)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "JPS data is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onJpsCapture jpsData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->-set3(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap2(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method

.method public onLdcCapture([B)V
    .locals 3

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLdcCapture ldcData"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " ldc data is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLdcCapture ldcData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->-set4(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap2(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method

.method public onMaskCapture([B)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Mask data is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMaskCapture maskData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->-set5(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->-get8(Lcom/android/camera/camera_adapter/CameraMTK;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap3(Lcom/android/camera/camera_adapter/CameraMTK;[B)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap2(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method
