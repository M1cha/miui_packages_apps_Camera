.class Lcom/android/camera/fragment/sticker/download/DownloadView$2;
.super Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/sticker/download/DownloadView;->doDownloading()V
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

    iput-object p2, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$2;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$2;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    invoke-static {v0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->-wrap2(Lcom/android/camera/fragment/sticker/download/DownloadView;)V

    return-void
.end method
