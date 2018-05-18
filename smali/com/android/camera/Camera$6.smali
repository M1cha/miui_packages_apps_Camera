.class Lcom/android/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$lastModule:Lcom/android/camera/module/BaseModule;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/module/BaseModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$6;->val$lastModule:Lcom/android/camera/module/BaseModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/Camera$6;->val$lastModule:Lcom/android/camera/module/BaseModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$6;->val$lastModule:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/BaseModule;->setHandlerFinishEmitter(Lio/reactivex/CompletableEmitter;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    goto :goto_0
.end method
