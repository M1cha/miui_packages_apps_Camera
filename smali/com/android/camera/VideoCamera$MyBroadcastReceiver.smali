.class Lcom/android/camera/VideoCamera$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoCamera;
    .param p2, "x1"    # Lcom/android/camera/VideoCamera$1;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, v1, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 389
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    # invokes: Lcom/android/camera/VideoCamera;->stopVideoRecording()Z
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1000(Lcom/android/camera/VideoCamera;)Z

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, v1, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 392
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v1}, Lcom/android/camera/VideoCamera;->getLastThumbnail()V

    goto :goto_0

    .line 393
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 399
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, v1, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    goto :goto_0
.end method
