.class public Lcom/android/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mExtScale:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveBack:Z

.field private mNewPreview:Z

.field private mPreviewFrameLayoutWidth:I

.field private mRecurBlur:Z

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I

.field private mReviewDrawingX:I

.field private mReviewDrawingY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SwitchAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private drawAnimationBlend(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 12

    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v8, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v10, v0, v2

    long-to-float v0, v10

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v8, 0x0

    const-wide/16 v10, 0x12c

    :cond_1
    if-nez v8, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    :cond_2
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v1, v10

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V

    return v8
.end method

.method private drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    if-eqz v0, :cond_0

    invoke-virtual {p6, p1}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingX:I

    iget v3, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingY:I

    iget v4, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    iget v5, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    move-object v0, p6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraScreenNail;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/camera/SwitchAnimManager;->drawAnimationBlend(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v0

    return v0
.end method

.method public drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z
    .locals 13

    int-to-float v1, p2

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v8, v1, v2

    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v9, v1, v2

    const/high16 v12, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v1, :cond_0

    move/from16 v0, p4

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v2, v2

    div-float v12, v1, v2

    :goto_0
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v1, v1

    mul-float v11, v1, v12

    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v1, v1

    mul-float v10, v1, v12

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "SwitchAnimManager"

    const-string/jumbo v2, "previewFrameLayoutWidth=0"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExtScaleX()F
    .locals 1

    iget v0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    return v0
.end method

.method public getExtScaleY()F
    .locals 1

    iget v0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    return v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 3

    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-nez p1, :cond_0

    const-string/jumbo v0, "SwitchAnimManager"

    const-string/jumbo v1, "invalid preview frame width"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setReviewDrawingSize(IIII)V
    .locals 1

    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingX:I

    iput p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingY:I

    iput p3, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    iput p4, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mMoveBack:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const-string/jumbo v0, "SwitchAnimManager"

    const-string/jumbo v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    return-void
.end method

.method public startResume()V
    .locals 2

    const-string/jumbo v0, "SwitchAnimManager"

    const-string/jumbo v1, "startResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    return-void
.end method
