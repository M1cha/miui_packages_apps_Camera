.class public abstract Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/gallery3d/ui/ScreenNail;


# instance fields
.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsFullScreen:Z

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 47
    iput v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    .line 48
    iput v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    .line 50
    return-void
.end method

.method private updateRenderSize()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeed:Z

    if-nez v0, :cond_1

    .line 111
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 112
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    .line 117
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    .line 118
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    .line 119
    return-void

    .line 114
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 115
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    goto :goto_0
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 53
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ExtTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 55
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 58
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 59
    monitor-enter p0

    .line 60
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 9
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 157
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 145
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 147
    div-int/lit8 v0, p4, 0x2

    add-int v7, p2, v0

    .line 148
    .local v7, cx:I
    div-int/lit8 v0, p5, 0x2

    add-int v8, p3, v0

    .line 149
    .local v8, cy:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 150
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 151
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 152
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 154
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 155
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 156
    monitor-exit p0

    goto :goto_0

    .end local v7           #cx:I
    .end local v8           #cy:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public releaseBitmapIfNeeded()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 187
    :cond_0
    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    monitor-enter p0

    .line 70
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 74
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 80
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 84
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    .line 87
    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setRenderSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 105
    iput p2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 106
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 107
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isFullScreen(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 98
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    .line 99
    iput p2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    .line 100
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 101
    return-void

    .line 93
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeed:Z

    if-eqz v0, :cond_1

    .line 94
    mul-int/lit8 v0, p1, 0x10

    div-int/lit8 p2, v0, 0x9

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto :goto_0
.end method

.method protected updateTransformMatrix([F)V
    .locals 10
    .parameter "matrix"

    .prologue
    const v9, 0x3f4ccccd

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const/high16 v6, -0x4100

    const/4 v5, 0x0

    .line 160
    const/high16 v1, 0x3f80

    .line 161
    .local v1, scaleX:F
    const/high16 v2, 0x3f80

    .line 162
    .local v2, scaleY:F
    const/4 v0, 0x0

    .line 163
    .local v0, change:Z
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->getCurrentMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    mul-float/2addr v1, v9

    .line 166
    mul-float/2addr v2, v9

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_0
    sget-boolean v3, Lcom/android/camera/CameraSettings;->sCroppedIfNeed:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-nez v3, :cond_1

    .line 171
    iget v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v1, v3

    .line 172
    iget v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v3

    .line 173
    const/4 v0, 0x1

    .line 175
    :cond_1
    if-eqz v0, :cond_2

    .line 176
    invoke-static {p1, v5, v8, v8, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 177
    const/high16 v3, 0x3f80

    invoke-static {p1, v5, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 178
    invoke-static {p1, v5, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 180
    :cond_2
    return-void
.end method
