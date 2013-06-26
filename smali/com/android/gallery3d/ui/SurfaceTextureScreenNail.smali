.class public abstract Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/gallery3d/ui/ScreenNail;


# instance fields
.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mAnimTextureNext:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsCamera:Z

.field private mIsFullScreen:Z

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    .line 42
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsCamera:Z

    .line 46
    return-void
.end method

.method private updateRenderSize()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeed:Z

    if-nez v0, :cond_1

    .line 106
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 107
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 110
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    goto :goto_0
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ExtTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    .line 51
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 54
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 55
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTextureNext:Lcom/android/gallery3d/ui/RawTexture;

    .line 56
    monitor-enter p0

    .line 57
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 58
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
    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 150
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 138
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 140
    div-int/lit8 v0, p4, 0x2

    add-int v7, p2, v0

    .line 141
    .local v7, cx:I
    div-int/lit8 v0, p5, 0x2

    add-int v8, p3, v0

    .line 142
    .local v8, cy:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 143
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 144
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 145
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 147
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 148
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 149
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
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    monitor-enter p0

    .line 67
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 70
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 72
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 74
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 75
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTextureNext:Lcom/android/gallery3d/ui/RawTexture;

    .line 76
    return-void

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMode(Z)V
    .locals 0
    .parameter "isCamera"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsCamera:Z

    .line 80
    return-void
.end method

.method public setRenderSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 100
    iput p2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 102
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsCamera:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isFullScreen(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 93
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    .line 94
    iput p2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    .line 95
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 96
    return-void

    .line 87
    :cond_1
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeed:Z

    if-eqz v0, :cond_2

    .line 88
    mul-int/lit8 v0, p1, 0x10

    div-int/lit8 p2, v0, 0x9

    .line 90
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto :goto_0
.end method

.method public updateTransformMatrix([F)V
    .locals 4
    .parameter "matrix"

    .prologue
    const/16 v3, 0xd

    const/4 v2, 0x1

    .line 153
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsCamera:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeed:Z

    if-eqz v0, :cond_0

    .line 154
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-nez v0, :cond_0

    .line 155
    const/high16 v0, 0x3f40

    aget v1, p1, v2

    mul-float/2addr v0, v1

    aput v0, p1, v2

    .line 156
    const/high16 v0, 0x3f60

    aget v1, p1, v3

    mul-float/2addr v0, v1

    aput v0, p1, v3

    .line 159
    :cond_0
    return-void
.end method
