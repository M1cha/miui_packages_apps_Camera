.class Lcom/android/camera/snap/SnapTrigger$1;
.super Ljava/lang/Object;
.source "SnapTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapTrigger;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-get2(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-get4(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-get4(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isScreenOn is true, stop take snap"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-get3(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-wrap0(Lcom/android/camera/snap/SnapTrigger;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-get2(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-wrap2(Lcom/android/camera/snap/SnapTrigger;)V

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-wrap5(Lcom/android/camera/snap/SnapTrigger;)V

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-get2(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->startCamcorder()V

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "take movie"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/snap/SnapTrigger;->-wrap3(Lcom/android/camera/snap/SnapTrigger;Z)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0, v4}, Lcom/android/camera/snap/SnapTrigger;->-wrap4(Lcom/android/camera/snap/SnapTrigger;Z)V

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-get2(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->takeSnap()V

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->-get1(Lcom/android/camera/snap/SnapTrigger;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/snap/SnapTrigger;->-set0(Lcom/android/camera/snap/SnapTrigger;I)I

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "take snap"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0, v4}, Lcom/android/camera/snap/SnapTrigger;->-wrap3(Lcom/android/camera/snap/SnapTrigger;Z)V

    goto :goto_0
.end method
