.class Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;
.super Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/sticker/download/DownloadView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/sticker/download/DownloadView$3;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/download/DownloadView$3;Lcom/android/camera/fragment/sticker/download/DownloadView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;->this$1:Lcom/android/camera/fragment/sticker/download/DownloadView$3;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;->this$1:Lcom/android/camera/fragment/sticker/download/DownloadView$3;

    iget-object v0, v0, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    iget-object v1, p0, Lcom/android/camera/fragment/sticker/download/DownloadView$3$1;->this$1:Lcom/android/camera/fragment/sticker/download/DownloadView$3;

    iget-object v1, v1, Lcom/android/camera/fragment/sticker/download/DownloadView$3;->this$0:Lcom/android/camera/fragment/sticker/download/DownloadView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/fragment/sticker/download/DownloadView;->-wrap1(Lcom/android/camera/fragment/sticker/download/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
