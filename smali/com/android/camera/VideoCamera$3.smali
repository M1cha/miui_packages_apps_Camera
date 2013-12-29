.class Lcom/android/camera/VideoCamera$3;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
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
    .line 1785
    iput-object p1, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1788
    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 1789
    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->enableExitButton(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$1500(Lcom/android/camera/VideoCamera;Z)V

    .line 1790
    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1600(Lcom/android/camera/VideoCamera;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1791
    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$1700(Lcom/android/camera/VideoCamera;Z)V

    .line 1792
    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1800(Lcom/android/camera/VideoCamera;)V

    .line 1793
    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->effectsActive()Z
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->getThumbnail()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)V

    .line 1794
    :cond_0
    return-void
.end method
