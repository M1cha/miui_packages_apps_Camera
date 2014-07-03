.class public Lcom/android/gallery3d/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/android/gallery3d/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLRootView$1;,
        Lcom/android/gallery3d/ui/GLRootView$IdleRunner;
    }
.end annotation


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/android/gallery3d/ui/GLView;

.field private mDisplayRotation:I

.field private final mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

.field private mFirstDraw:Z

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 61
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInvalidateColor:I

    .line 81
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 88
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 90
    new-instance v0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 99
    new-instance v0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/GLRootView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    .line 101
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 107
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 116
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 119
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/GLCanvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/GLRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method private layoutContentPane()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 195
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 197
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getWidth()I

    move-result v4

    .line 198
    .local v4, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHeight()I

    move-result v2

    .line 199
    .local v2, h:I
    const/4 v1, 0x0

    .line 200
    .local v1, displayRotation:I
    const/4 v0, 0x0

    .line 203
    .local v0, compensation:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    if-eqz v5, :cond_3

    .line 204
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v1

    .line 205
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getCompensation()I

    move-result v0

    .line 211
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    if-eq v5, v0, :cond_0

    .line 212
    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    .line 213
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_4

    .line 214
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 216
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 218
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 223
    :cond_0
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    .line 226
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_1

    .line 227
    move v3, v4

    .line 228
    .local v3, tmp:I
    move v4, v2

    .line 229
    move v2, v3

    .line 231
    .end local v3           #tmp:I
    :cond_1
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "layout content pane "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (compensation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 234
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v5, v9, v9, v4, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 238
    :cond_2
    return-void

    .line 207
    :cond_3
    const/4 v1, 0x0

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 346
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLCanvas;->deleteRecycledResources()V

    .line 349
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    .line 351
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 353
    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->layoutContentPane()V

    .line 355
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 356
    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    neg-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/GLRootView;->rotateCanvas(I)V

    .line 357
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v4, :cond_1

    .line 358
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 360
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 362
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 363
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 364
    .local v2, now:J
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 365
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v4, v2, v3}, Lcom/android/gallery3d/anim/CanvasAnimation;->setStartTime(J)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 370
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #now:J
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 374
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v5

    .line 375
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 376
    :cond_5
    monitor-exit v5

    .line 386
    return-void

    .line 376
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private rotateCanvas(I)V
    .locals 8
    .parameter "degrees"

    .prologue
    const/4 v7, 0x0

    .line 389
    if-nez p1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getWidth()I

    move-result v3

    .line 391
    .local v3, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHeight()I

    move-result v2

    .line 392
    .local v2, h:I
    div-int/lit8 v0, v3, 0x2

    .line 393
    .local v0, cx:I
    div-int/lit8 v1, v2, 0x2

    .line 394
    .local v1, cy:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 395
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    int-to-float v5, p1

    const/high16 v6, 0x3f80

    invoke-interface {v4, v5, v7, v7, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 396
    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 429
    :goto_0
    return v1

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 408
    .local v0, action:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_6

    .line 410
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 415
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    if-eqz v3, :cond_3

    .line 416
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 419
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 422
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 424
    .local v1, handled:Z
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 425
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 411
    .end local v1           #handled:Z
    :cond_6
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 567
    return-void

    .line 565
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    throw v0
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 511
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 512
    return-void
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 468
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 557
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 558
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 309
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->update()V

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 316
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 321
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 340
    return-void

    .line 323
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    .line 244
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 478
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 485
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 280
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gl10: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 283
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    .line 288
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 289
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 292
    return-void

    .line 289
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "gl1"
    .parameter "config"

    .prologue
    .line 252
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 253
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 255
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 259
    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 260
    new-instance v1, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 261
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 269
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setRenderMode(I)V

    .line 271
    return-void

    .line 263
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 187
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 174
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 145
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_3

    .line 147
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 149
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 151
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 153
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 155
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->detachFromRoot()V

    .line 156
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->yieldAllTextures()V

    .line 158
    :cond_3
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/GLView;->attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setLightsOutMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 524
    if-eqz p1, :cond_0

    const/16 v0, 0x105

    .line 529
    .local v0, flags:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setSystemUiVisibility(I)V

    .line 530
    return-void

    .line 524
    .end local v0           #flags:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    .line 490
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 539
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 540
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 545
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 546
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 551
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 552
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 518
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 519
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 520
    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 473
    return-void
.end method
