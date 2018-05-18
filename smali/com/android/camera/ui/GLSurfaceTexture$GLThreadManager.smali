.class Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "GLThreadManager"

    sput-object v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLESVersion()V

    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESVersion:I

    const/high16 v2, 0x20000

    if-ge v1, v2, :cond_0

    const-string/jumbo v1, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mLimitedGLESContexts:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLESVersion()V

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->-set0(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;Z)Z

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLESVersion()V

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestReleaseEglContextLocked()V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
