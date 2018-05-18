.class Lcom/android/camera/module/CameraModule$6;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v1, v1, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb8

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;->setSnapNumVisible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$6;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1, v3}, Lcom/android/camera/module/CameraModule;->-set16(Lcom/android/camera/module/CameraModule;Z)Z

    return-void
.end method
