.class Lcom/android/camera/network/resource/ResourceDownloadManager$2;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"

# interfaces
.implements Lcom/android/camera/network/net/base/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/network/resource/ResourceDownloadManager;->download(Lcom/android/camera/network/resource/Resource;Lcom/android/camera/network/resource/DownloadHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/android/camera/network/resource/ResourceDownloadManager;JLjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    iput-wide p2, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->val$id:J

    iput-object p4, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 9

    const/4 v5, 0x0

    :try_start_0
    aget-object v2, p1, v5

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sha1Base16"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "ResourceDownloadManager"

    const-string/jumbo v6, "download %s, %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/network/download/Request;

    iget-wide v6, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->val$id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->val$file:Ljava/io/File;

    invoke-direct {v0, v5, v6, v7}, Lcom/android/camera/network/download/Request;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V

    new-instance v5, Lcom/android/camera/network/download/Verifier$Sha1;

    invoke-direct {v5, v3}, Lcom/android/camera/network/download/Verifier$Sha1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/camera/network/download/Request;->setVerifier(Lcom/android/camera/network/download/Verifier;)V

    monitor-enter p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-static {v5}, Lcom/android/camera/network/resource/ResourceDownloadManager;->-get0(Lcom/android/camera/network/resource/ResourceDownloadManager;)Landroid/util/LongSparseArray;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->val$id:J

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    sget-object v5, Lcom/android/camera/network/download/GalleryDownloadManager;->INSTANCE:Lcom/android/camera/network/download/GalleryDownloadManager;

    iget-object v6, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-static {v6}, Lcom/android/camera/network/resource/ResourceDownloadManager;->-get1(Lcom/android/camera/network/resource/ResourceDownloadManager;)Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/camera/network/download/GalleryDownloadManager;->enqueue(Lcom/android/camera/network/download/Request;Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "ResourceDownloadManager"

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    iget-wide v6, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->val$id:J

    const/4 v8, 0x4

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/network/resource/ResourceDownloadManager;->-wrap0(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V

    goto :goto_0
.end method

.method public onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    iget-wide v2, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;->val$id:J

    const/4 v1, 0x4

    invoke-static {v0, v2, v3, v1}, Lcom/android/camera/network/resource/ResourceDownloadManager;->-wrap0(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V

    return-void
.end method
