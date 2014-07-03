.class Lcom/android/camera/ActivityBase$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
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

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.camera.action.DELETE_PICTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getLastThumbnailUncached()V

    .line 189
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    const/4 v2, 0x1

    # setter for: Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z
    invoke-static {v1, v2}, Lcom/android/camera/ActivityBase;->access$002(Lcom/android/camera/ActivityBase;Z)Z

    goto :goto_1

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ActivityBase;->handleControllerEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
