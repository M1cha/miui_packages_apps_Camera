.class Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;
.super Ljava/lang/Object;
.source "FragmentPanorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;->this$1:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;->this$1:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->-get3(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;->this$1:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->-get1(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
