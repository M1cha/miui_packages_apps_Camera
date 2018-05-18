.class Lcom/android/camera/effect/renders/StickerRender$1;
.super Ljava/lang/Object;
.source "StickerRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/renders/StickerRender;->initHumanAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/renders/StickerRender;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/renders/StickerRender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/StickerRender;->-get1(Lcom/android/camera/effect/renders/StickerRender;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/StickerRender;->-get2(Lcom/android/camera/effect/renders/StickerRender;)Lcom/sensetime/stmobile/STMobileHumanActionNative;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/sticker/StickerHelper;->getInstance()Lcom/android/camera/sticker/StickerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/sticker/StickerHelper;->getTrackModelPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f0

    invoke-virtual {v1, v3, v4}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->createInstance(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/StickerRender;->-get2(Lcom/android/camera/effect/renders/StickerRender;)Lcom/sensetime/stmobile/STMobileHumanActionNative;

    move-result-object v1

    const/4 v3, 0x2

    const v4, 0x3eb33333    # 0.35f

    invoke-virtual {v1, v3, v4}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/camera/effect/renders/StickerRender;->-set0(Lcom/android/camera/effect/renders/StickerRender;Z)Z

    iget-object v1, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/StickerRender;->-get1(Lcom/android/camera/effect/renders/StickerRender;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    invoke-static {}, Lcom/android/camera/effect/renders/StickerRender;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initHumanAction: result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
