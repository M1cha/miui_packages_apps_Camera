.class Lcom/android/camera/ActivityBase$4;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$NailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isKeptBitmapTexture()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isKeptBitmapTexture()Z

    move-result v0

    return v0
.end method

.method public onFrameAvailable(I)V
    .locals 6

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/ActivityBase;->-get0(Lcom/android/camera/ActivityBase;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v1}, Lcom/android/camera/ActivityBase;->-get0(Lcom/android/camera/ActivityBase;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/camera/ActivityBase;->-wrap0(Lcom/android/camera/ActivityBase;J)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->resetStartTime()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->notifyOnFirstFrameArrived(I)V

    return-void
.end method

.method public onPreviewPixelsRead([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/module/Module;->onPreviewPixelsRead([BII)V

    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V

    return-void
.end method
