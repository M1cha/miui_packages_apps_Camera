.class Lcom/android/camera/ActivityBase$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;Z)V
    .locals 0
    .param p2, "lookAtCache"    # Z

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 472
    iput-boolean p2, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    .line 473
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 478
    iget-object v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 479
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 480
    .local v3, "t":Lcom/android/camera/Thumbnail;
    iget-object v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v6, v6, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getSecureNum()I

    move-result v6

    if-gt v6, v7, :cond_1

    .line 508
    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    .line 483
    :cond_1
    iget-boolean v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v6, :cond_2

    .line 484
    iget-object v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v3

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 489
    const/4 v4, 0x0

    .line 490
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 491
    invoke-virtual {v3}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 493
    :cond_3
    new-array v2, v7, [Lcom/android/camera/Thumbnail;

    .line 495
    .local v2, "result":[Lcom/android/camera/Thumbnail;
    invoke-static {v1, v2, v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I

    move-result v0

    .line 497
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move-object v5, v3

    .line 499
    goto :goto_0

    .line 503
    :pswitch_2
    const/4 v5, 0x0

    aget-object v5, v2, v5

    goto :goto_0

    .line 505
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->cancel(Z)Z

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 468
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .param p1, "thumbnail"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iput-object p1, v0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 515
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->updateThumbnailView()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 468
    check-cast p1, Lcom/android/camera/Thumbnail;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
