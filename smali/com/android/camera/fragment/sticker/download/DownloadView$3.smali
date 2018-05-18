.class Lcom/android/camera/fragment/sticker/download/DownloadView$3;
.super Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/sticker/download/DownloadView;->endDownloading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/download/DownloadView;Lcom/android/camera/fragment/sticker/download/DownloadView;)V
    .locals 1

    iput-object p2, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    invoke-static {v0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->-get0(Lcom/android/camera/fragment/sticker/download/DownloadView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    iget-object v1, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    invoke-static {v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->-get0(Lcom/android/camera/fragment/sticker/download/DownloadView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;

    iget-object v3, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView$3;Lcom/android/camera/fragment/sticker/download/DownloadView;)V

    invoke-static {v0, v1, v2}, Lcom/android/camera/fragment/sticker/download/DownloadView;->-wrap3(Lcom/android/camera/fragment/sticker/download/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
