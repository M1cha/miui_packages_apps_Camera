.class Lcom/android/camera/VideoCamera$1;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->readVideoPreferences()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1100(Lcom/android/camera/VideoCamera;)V

    .line 470
    iget-object v0, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$600(Lcom/android/camera/VideoCamera;)V

    .line 471
    return-void
.end method
