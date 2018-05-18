.class Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;
.super Ljava/lang/Object;
.source "FragmentStickerPager.java"

# interfaces
.implements Lcom/android/camera/network/resource/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/sticker/FragmentStickerPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(JI)V
    .locals 5

    const-string/jumbo v1, "FragmentStickerPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->-get3(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->-get3(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/sticker/StickerInfo;

    iget-wide v2, v1, Lcom/android/camera/sticker/StickerInfo;->id:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->-get3(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/sticker/StickerInfo;

    iput p3, v1, Lcom/android/camera/sticker/StickerInfo;->downloadState:I

    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->-get2(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
