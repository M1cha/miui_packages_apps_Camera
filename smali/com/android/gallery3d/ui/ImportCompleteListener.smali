.class public Lcom/android/gallery3d/ui/ImportCompleteListener;
.super Ljava/lang/Object;
.source "ImportCompleteListener.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 0
    .param p1, "galleryActivity"    # Lcom/android/gallery3d/app/GalleryActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/ui/ImportCompleteListener;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 32
    return-void
.end method

.method private goToImportedAlbum()V
    .locals 4

    .prologue
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "pathOfImportedAlbum":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "data":Landroid/os/Bundle;
    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .param p1, "confirmed"    # Z

    .prologue
    .line 59
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x1

    .line 37
    if-ne p1, v2, :cond_0

    .line 38
    const v0, 0x7f0d01ae

    .line 39
    .local v0, "message":I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ImportCompleteListener;->goToImportedAlbum()V

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/ImportCompleteListener;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 44
    return-void

    .line 41
    .end local v0    # "message":I
    :cond_0
    const v0, 0x7f0d01af

    .restart local v0    # "message":I
    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 48
    return-void
.end method
