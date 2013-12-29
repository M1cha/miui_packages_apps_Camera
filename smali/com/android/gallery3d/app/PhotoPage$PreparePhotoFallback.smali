.class Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreparePhotoFallback"
.end annotation


# instance fields
.field private mPhotoFallback:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

.field private mResultReady:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 1

    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    new-instance v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 961
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 1

    .prologue
    .line 966
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    if-nez v0, :cond_0

    .line 967
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 969
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 2
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/GLView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/ui/PhotoView;->buildFallbackEffect(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 975
    monitor-enter p0

    .line 976
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    .line 977
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 978
    monitor-exit p0

    .line 979
    const/4 v0, 0x0

    return v0

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
