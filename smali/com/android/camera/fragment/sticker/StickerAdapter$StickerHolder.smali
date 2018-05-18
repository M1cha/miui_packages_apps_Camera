.class public Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;
.super Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
.source "StickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/sticker/StickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerHolder"
.end annotation


# instance fields
.field public mDownloadView:Lcom/android/camera/fragment/sticker/download/DownloadView;

.field private mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/camera/fragment/sticker/StickerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/sticker/StickerAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;->this$0:Lcom/android/camera/fragment/sticker/StickerAdapter;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0068

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a006a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/sticker/download/DownloadView;

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;->mDownloadView:Lcom/android/camera/fragment/sticker/download/DownloadView;

    return-void
.end method


# virtual methods
.method public bindView(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;->this$0:Lcom/android/camera/fragment/sticker/StickerAdapter;

    invoke-virtual {v2, p1}, Lcom/android/camera/fragment/sticker/StickerAdapter;->getItemData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sticker/StickerInfo;

    iget-boolean v2, v0, Lcom/android/camera/sticker/StickerInfo;->isLocal:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;->mImageView:Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/camera/sticker/StickerInfo;->imageId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/sticker/StickerInfo;->getDownloadState()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;->mDownloadView:Lcom/android/camera/fragment/sticker/download/DownloadView;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->setStateImage(I)V

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/camera/sticker/StickerInfo;->downloadState:I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/network/imageloader/ImageLoaderManager;->getInstance()Lcom/android/camera/network/imageloader/ImageLoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/camera/sticker/StickerInfo;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/network/imageloader/ImageLoaderManager;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method
