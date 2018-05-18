.class public abstract Lcom/android/camera/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final MOVIE_SOLID_CROPPED_X:F

.field private static final MOVIE_SOLID_CROPPED_Y:F

.field private static sFrameListener:Landroid/os/HandlerThread;

.field private static sMaxHighPriorityFrameCount:I


# instance fields
.field private currentFrameCount:I

.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mCameraHeight:I

.field private mCameraWidth:I

.field protected mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field protected mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field protected mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsFullScreen:Z

.field private mIsRatio16_9:Z

.field protected mModuleSwitching:Z

.field private mNeedCropped:Z

.field private mRenderHeight:I

.field protected mRenderLayoutRect:Landroid/graphics/Rect;

.field private mRenderOffsetX:I

.field private mRenderOffsetY:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field protected mSkipFirstFrame:Z

.field protected mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mSurfaceWidth:I

.field private mTargetRatio:I

.field protected mTheight:I

.field private mTransform:[F

.field protected mTwidth:I

.field protected mTx:I

.field protected mTy:I

.field private mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

.field private mVideoStabilizationCropped:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    const/16 v0, 0x8

    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHighPriorityFrameCount:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    return-void
.end method

.method private checkThreadPriority()V
    .locals 2

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHighPriorityFrameCount:I

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "STScreenNail"

    const-string/jumbo v1, "normalHandlerCapacity:set normal"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHighPriorityFrameCount:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0
.end method

.method private computeRatio()V
    .locals 13

    const/high16 v12, 0x41100000    # 9.0f

    const/high16 v11, 0x3f400000    # 0.75f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {v6, v7}, Lcom/android/camera/CameraSettings;->getStrictAspectRatio(II)I

    move-result v6

    const/4 v7, -0x1

    if-gt v6, v7, :cond_0

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {v6, v7, v8, v9}, Lcom/android/camera/CameraSettings;->isNearAspectRatio(IIII)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    :cond_0
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_0
    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    return-void

    :pswitch_0
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v6

    if-nez v6, :cond_4

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    mul-int/lit8 v6, v3, 0x10

    mul-int/lit8 v7, v0, 0x9

    if-le v6, v7, :cond_3

    move v2, v3

    int-to-float v6, v0

    mul-float/2addr v6, v12

    const/high16 v7, 0x41800000    # 16.0f

    div-float/2addr v6, v7

    float-to-int v3, v6

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    :goto_2
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    int-to-float v4, v0

    mul-float/2addr v4, v11

    float-to-int v0, v4

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v4, v11

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    :cond_3
    move v1, v0

    int-to-float v6, v3

    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v6, v7

    div-float/2addr v6, v12

    float-to-int v0, v6

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_2

    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_2

    :pswitch_1
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v6

    if-nez v6, :cond_7

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    mul-int/lit8 v5, v3, 0x4

    mul-int/lit8 v6, v0, 0x3

    if-le v5, v6, :cond_6

    move v2, v3

    int-to-float v5, v0

    mul-float/2addr v5, v11

    float-to-int v3, v5

    int-to-float v5, v3

    int-to-float v6, v2

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    :goto_3
    sget-boolean v5, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v5, :cond_5

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    int-to-float v5, v3

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v5, v6

    div-float/2addr v5, v12

    float-to-int v0, v5

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v5, v11

    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto/16 :goto_0

    :cond_6
    move v1, v0

    int-to-float v5, v3

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    float-to-int v0, v5

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_3

    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_3

    :pswitch_2
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eq v3, v0, :cond_1

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    move v1, v0

    move v0, v3

    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto/16 :goto_0

    :cond_8
    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    mul-int/2addr v7, v8

    if-eq v6, v7, :cond_a

    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_9

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    :goto_4
    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sget v7, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v7, v7

    sget v8, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x3dcccccd    # 0.1f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    :goto_5
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto/16 :goto_1

    :cond_9
    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_4

    :cond_a
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iput v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    goto :goto_4

    :cond_b
    move v4, v5

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initializeTexture()V
    .locals 10

    const/16 v9, 0x15

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/camera/Device;->isSubThreadFrameListener()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v9, :cond_2

    :try_start_0
    const-class v4, Landroid/graphics/SurfaceTexture;

    const-string/jumbo v5, "(ILandroid/os/Looper;)V"

    invoke-static {v4, v5}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/SurfaceTexture;

    iput-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/SurfaceTexture;

    iput-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    const-string/jumbo v4, "STScreenNail"

    const-string/jumbo v5, "fullHandlerCapacity:set urgent display"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    const/4 v5, -0x8

    invoke-static {v4, v5}, Landroid/os/Process;->setThreadPriority(II)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v4, :cond_3

    new-instance v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v4, :cond_4

    new-array v3, v7, [I

    invoke-static {v7, v3, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v4, Landroid/graphics/SurfaceTexture;

    aget v5, v3, v8

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_4
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v7, v7}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_5
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isSubThreadFrameListener()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v5, Landroid/os/Handler;

    sget-object v6, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v4, p0, v5}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v5, Landroid/os/Handler;

    sget-object v6, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v4, p0, v5}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "STScreenNail"

    const-string/jumbo v5, "SurfaceTexture Constructor IllegalArgumentException"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v4, "STScreenNail"

    const-string/jumbo v5, "SurfaceTexture Constructor NoSuchMethodException"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_1
.end method

.method private notifyVideoEncoder(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/encoder/MediaVideoEncoder;->frameAvailableSoon(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateRenderSize()V
    .locals 2

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    goto :goto_0
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x2d0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "STScreenNail"

    const-string/jumbo v1, "texture has been initialized!"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->initializeTexture()V

    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    mul-int/lit16 v1, v1, 0x2d0

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/2addr v1, v2

    invoke-direct {v0, v4, v1, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iput-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iput-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Util;->sIsNotchDevice:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/camera/Device;->isSubThreadFrameListener()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->checkThreadPriority()V

    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateExtraTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFunModule()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->notifyVideoEncoder(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    :cond_3
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderTargetRatio()I
    .locals 1

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getUDCFExtraSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract releaseBitmapIfNeeded()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUDCFExtraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    :cond_4
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setRenderArea(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->computeRatio()V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    if-le p1, p2, :cond_0

    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    :goto_0
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getRenderAspectRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->computeRatio()V

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    goto :goto_0
.end method

.method public setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVideoStabilizationCropped(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->needVideoStabilizationCropped()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    :goto_1
    return-void

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    goto :goto_1
.end method

.method protected updateExtraTransformMatrix([F)V
    .locals 0

    return-void
.end method

.method protected updateRenderRect()V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    div-int/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    div-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    div-int/2addr v0, v2

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    div-int/2addr v0, v2

    goto :goto_4
.end method

.method protected updateTransformMatrix([F)V
    .locals 9

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    mul-float v1, v4, v3

    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    mul-float v2, v4, v3

    const/4 v0, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v3

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p1, v5, v8, v8, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p1, v5, v1, v2, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {p1, v5, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_2
    return-void
.end method
