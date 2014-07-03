.class public Lcom/android/gallery3d/ui/SynchronizedHandler;
.super Landroid/os/Handler;
.source "SynchronizedHandler.java"


# instance fields
.field private mContext:Lcom/android/gallery3d/app/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 1
    .param p1, "context"    # Lcom/android/gallery3d/app/GalleryActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 40
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SynchronizedHandler;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method
