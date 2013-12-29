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
    .parameter
    .parameter "lookAtCache"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 458
    iput-boolean p2, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    .line 459
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 464
    iget-object v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 465
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 466
    .local v3, t:Lcom/android/camera/Thumbnail;
    iget-object v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v6, v6, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getSecureNum()I

    move-result v6

    if-gt v6, v7, :cond_1

    .line 494
    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    .line 469
    :cond_1
    iget-boolean v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v6, :cond_2

    .line 470
    iget-object v6, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v3

    .line 473
    :cond_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 475
    const/4 v4, 0x0

    .line 476
    .local v4, uri:Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 477
    invoke-virtual {v3}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 479
    :cond_3
    new-array v2, v7, [Lcom/android/camera/Thumbnail;

    .line 481
    .local v2, result:[Lcom/android/camera/Thumbnail;
    invoke-static {v1, v2, v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I

    move-result v0

    .line 483
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move-object v5, v3

    .line 485
    goto :goto_0

    .line 489
    :pswitch_2
    const/4 v5, 0x0

    aget-object v5, v2, v5

    goto :goto_0

    .line 491
    :pswitch_3
    invoke-virtual {p0, v7}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 483
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
    .parameter "x0"

    .prologue
    .line 454
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .parameter "thumbnail"

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iput-object p1, v0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 501
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->updateThumbnailView()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 454
    check-cast p1, Lcom/android/camera/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
