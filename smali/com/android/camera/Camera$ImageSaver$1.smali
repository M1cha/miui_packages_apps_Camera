.class Lcom/android/camera/Camera$ImageSaver$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$ImageSaver;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$ImageSaver;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/camera/Camera$ImageSaver$1;->this$1:Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver$1;->this$1:Lcom/android/camera/Camera$ImageSaver;

    iget-object v0, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1114
    return-void
.end method
