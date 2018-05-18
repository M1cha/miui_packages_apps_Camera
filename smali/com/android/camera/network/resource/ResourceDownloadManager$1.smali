.class Lcom/android/camera/network/resource/ResourceDownloadManager$1;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"

# interfaces
.implements Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/resource/ResourceDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;


# direct methods
.method constructor <init>(Lcom/android/camera/network/resource/ResourceDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestComplete(Lcom/android/camera/network/download/Request;I)V
    .locals 5

    const-string/jumbo v2, "ResourceDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "download finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-static {v2}, Lcom/android/camera/network/resource/ResourceDownloadManager;->-get2(Lcom/android/camera/network/resource/ResourceDownloadManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-static {v2}, Lcom/android/camera/network/resource/ResourceDownloadManager;->-get0(Lcom/android/camera/network/resource/ResourceDownloadManager;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    const/4 v3, 0x3

    invoke-static {v2, v0, v1, v3}, Lcom/android/camera/network/resource/ResourceDownloadManager;->-wrap0(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    const/4 v3, 0x4

    invoke-static {v2, v0, v1, v3}, Lcom/android/camera/network/resource/ResourceDownloadManager;->-wrap0(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V

    goto :goto_0
.end method
