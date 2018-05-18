.class Lcom/android/camera/ui/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

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

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLTextureView;",
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
.method static synthetic -set0(Lcom/android/camera/ui/GLTextureView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;II)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    iput p3, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    iput v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private guardedRun()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v20, Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/camera/ui/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v21

    monitor-enter v21
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    move/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v20, :cond_1

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v21

    monitor-enter v21

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v21

    return-void

    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Runnable;

    move-object v8, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    monitor-exit v21

    if-eqz v8, :cond_14

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v2, 0x1

    :cond_4
    if-eqz v11, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v11, 0x0

    :cond_5
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_6
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ui/GLTextureView;

    if-nez v17, :cond_11

    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_7

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v20

    if-eqz v20, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    :cond_8
    if-eqz v12, :cond_9

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :cond_c
    if-eqz v6, :cond_d

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v20, v0

    if-nez v20, :cond_e

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_f

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v14, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    const/16 v19, 0x1

    const/4 v4, 0x1

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    :cond_10
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v20

    :try_start_7
    monitor-exit v21

    throw v20
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_0
    move-exception v7

    :try_start_8
    const-string/jumbo v20, "GLThread"

    const-string/jumbo v21, "got exception"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v21

    monitor-enter v21

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    monitor-exit v21

    return-void

    :cond_11
    :try_start_a
    invoke-static/range {v17 .. v17}, Lcom/android/camera/ui/GLTextureView;->-get6(Lcom/android/camera/ui/GLTextureView;)Z

    move-result v13

    goto/16 :goto_3

    :cond_12
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v20

    if-eqz v20, :cond_e

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$EglHelper;->start()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/16 v20, 0x1

    :try_start_c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    goto/16 :goto_4

    :catch_1
    move-exception v16

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    throw v16

    :cond_13
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    :cond_14
    if-eqz v4, :cond_15

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createSurface()Z

    move-result v20

    if-eqz v20, :cond_1c

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v21

    monitor-enter v21
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/16 v20, 0x1

    :try_start_e
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    monitor-exit v21

    const/4 v4, 0x0

    :cond_15
    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v9, v0

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v5, 0x0

    :cond_16
    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ui/GLTextureView;

    if-eqz v17, :cond_17

    invoke-static/range {v17 .. v17}, Lcom/android/camera/ui/GLTextureView;->-get7(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v9, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_17
    const/4 v3, 0x0

    :cond_18
    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ui/GLTextureView;

    if-eqz v17, :cond_19

    invoke-static/range {v17 .. v17}, Lcom/android/camera/ui/GLTextureView;->-get7(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v9, v1, v10}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_19
    const/4 v14, 0x0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ui/GLTextureView;

    if-eqz v17, :cond_1b

    invoke-static/range {v17 .. v17}, Lcom/android/camera/ui/GLTextureView;->-get7(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$EglHelper;->swap()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    const-string/jumbo v20, "GLThread"

    const-string/jumbo v21, "eglSwapBuffers"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v15}, Lcom/android/camera/ui/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v21

    monitor-enter v21
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const/16 v20, 0x1

    :try_start_10
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    monitor-exit v21

    :goto_5
    :sswitch_0
    if-eqz v19, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v20

    monitor-exit v21

    throw v20
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catchall_3
    move-exception v20

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v21

    monitor-enter v21

    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    monitor-exit v21

    throw v20

    :cond_1c
    :try_start_13
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v21

    monitor-enter v21
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const/16 v20, 0x1

    :try_start_14
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    monitor-exit v21

    goto/16 :goto_0

    :catchall_4
    move-exception v20

    monitor-exit v21

    throw v20

    :sswitch_1
    const/4 v11, 0x1

    goto :goto_5

    :catchall_5
    move-exception v20

    monitor-exit v21

    throw v20
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_6
    move-exception v20

    monitor-exit v21

    throw v20

    :catchall_7
    move-exception v20

    monitor-exit v21

    throw v20

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

    iget-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

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

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I
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

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
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

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
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

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
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

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
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

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

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
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
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

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
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

.method public surfaceDestroyed()V
    .locals 3

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
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
