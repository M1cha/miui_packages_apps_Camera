.class Lcom/android/camera/module/FunModule$3;
.super Ljava/lang/Object;
.source "FunModule.java"

# interfaces
.implements Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FunModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/FunModule$3;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/android/camera/module/encoder/MediaEncoder;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/module/FunModule;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepared: encoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule$3;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-get1(Lcom/android/camera/module/FunModule;)Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    check-cast p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V

    :cond_0
    return-void
.end method

.method public onStopped(Lcom/android/camera/module/encoder/MediaEncoder;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/module/FunModule;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopped: encoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule$3;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-get1(Lcom/android/camera/module/FunModule;)Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule$3;->this$0:Lcom/android/camera/module/FunModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/FunModule;->-wrap5(Lcom/android/camera/module/FunModule;Z)V

    :cond_0
    return-void
.end method
