.class Lcom/android/camera/module/FunModule$4;
.super Landroid/os/CountDownTimer;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/FunModule;->updateRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/FunModule;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/FunModule$4;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/FunModule$4;->this$0:Lcom/android/camera/module/FunModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/FunModule;->-wrap4(Lcom/android/camera/module/FunModule;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const-wide/16 v2, 0x3b6

    add-long/2addr v2, p1

    const-wide/16 v4, 0x15e

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/camera/module/FunModule;->-wrap1(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    return-void
.end method
