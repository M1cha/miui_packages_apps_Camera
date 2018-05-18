.class final Lcom/android/camera/module/VideoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/module/VideoModule;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPictureTaken"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->-set7(Lcom/android/camera/module/VideoModule;Z)Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-static {v0, p1, v1}, Lcom/android/camera/module/VideoModule;->-wrap13(Lcom/android/camera/module/VideoModule;[BLandroid/location/Location;)V

    return-void
.end method
