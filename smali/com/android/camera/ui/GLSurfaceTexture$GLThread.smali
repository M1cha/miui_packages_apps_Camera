.class Lcom/android/camera/ui/GLSurfaceTexture$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    iput v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    iput v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    iput v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private guardedRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v19, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldExit:Z

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v19, :cond_1

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v20

    return-void

    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    monitor-exit v20

    if-eqz v7, :cond_14

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    const/4 v2, 0x1

    :cond_4
    if-eqz v10, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    const/4 v10, 0x0

    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    :cond_6
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    if-nez v14, :cond_11

    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_7

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    :cond_8
    if-eqz v11, :cond_9

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->finish()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :cond_c
    if-eqz v6, :cond_d

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_f

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v13, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    const/16 v18, 0x1

    const/4 v4, 0x1

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v19

    :try_start_7
    monitor-exit v20

    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v19

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    monitor-exit v20

    throw v19

    :cond_11
    :try_start_9
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get6(Lcom/android/camera/ui/GLSurfaceTexture;)Z

    move-result v12

    goto/16 :goto_3

    :cond_12
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v19

    if-eqz v19, :cond_e

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->start()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/16 v19, 0x1

    :try_start_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    goto/16 :goto_4

    :catch_0
    move-exception v16

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    throw v16

    :cond_13
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    :cond_14
    if-eqz v4, :cond_15

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->createSurface()Z

    move-result v19

    if-eqz v19, :cond_1c

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/16 v19, 0x1

    :try_start_d
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v20

    const/4 v4, 0x0

    :cond_15
    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v5, 0x0

    :cond_16
    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v14, :cond_17

    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_17
    const/4 v3, 0x0

    :cond_18
    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v14, :cond_19

    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_19
    const/4 v13, 0x0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v14, :cond_1b

    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->swap()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    const-string/jumbo v19, "GLThread"

    const-string/jumbo v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/16 v19, 0x1

    :try_start_f
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    monitor-exit v20

    :goto_5
    :sswitch_0
    if-eqz v18, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_1c
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/16 v19, 0x1

    :try_start_11
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    monitor-exit v20

    goto/16 :goto_0

    :catchall_4
    move-exception v19

    monitor-exit v20

    throw v19

    :sswitch_1
    const/4 v10, 0x1

    goto :goto_5

    :catchall_5
    move-exception v19

    monitor-exit v20

    throw v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catchall_6
    move-exception v19

    monitor-exit v20

    throw v19

    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->readyToDraw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method

.method public onWindowResize(II)V
    .locals 3

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method

.method public requestExitAndWait()V
    .locals 3

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldExit:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    return-void
.end method

.method public run()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method
