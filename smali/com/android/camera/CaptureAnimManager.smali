.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAnimOrientation:I

.field private mAnimStartTime:J

.field private mDelta:F

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f333333

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 50
    return-void
.end method

.method private getCaptureAlpha(F)F
    .locals 2
    .parameter "progress"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 20
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v15, v1, v5

    .line 84
    .local v15, timeDiff:J
    long-to-float v1, v15

    const/high16 v2, 0x43e1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 112
    :goto_0
    return v1

    .line 85
    :cond_0
    long-to-float v1, v15

    const/high16 v2, 0x43e1

    div-float v12, v1, v2

    .line 86
    .local v12, fraction:F
    const/high16 v1, 0x3f80

    const v2, 0x3ecccccd

    mul-float/2addr v2, v12

    sub-float v14, v1, v2

    .line 87
    .local v14, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move/from16 v18, v0

    .line 88
    .local v18, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move/from16 v19, v0

    .line 89
    .local v19, y:F
    move/from16 v0, v18

    float-to-int v7, v0

    .line 90
    .local v7, previewX:I
    move/from16 v0, v19

    float-to-int v8, v0

    .line 91
    .local v8, previewY:I
    move/from16 v0, v18

    float-to-int v3, v0

    .line 92
    .local v3, reviewX:I
    move/from16 v0, v19

    float-to-int v4, v0

    .line 93
    .local v4, reviewY:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    mul-float v17, v1, v14

    .line 94
    .local v17, width:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    mul-float v13, v1, v14

    .line 95
    .local v13, height:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v2, v5

    add-float v18, v1, v2

    .line 97
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    sub-float v1, v18, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 102
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v2, v2

    sub-float v2, v2, v17

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 103
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v13

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 105
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v11

    .line 106
    .local v11, alpha:F
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/camera/CaptureAnimManager;->getCaptureAlpha(F)F

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 107
    move/from16 v0, v17

    float-to-int v5, v0

    float-to-int v6, v13

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 108
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 110
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 112
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 99
    .end local v11           #alpha:F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v2, v5

    add-float v19, v1, v2

    .line 100
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    sub-float v1, v19, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "animOrientation"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    .line 54
    return-void
.end method

.method public startAnimation(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 60
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 61
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    .line 62
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    .line 63
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    .line 64
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 66
    :sswitch_0
    int-to-float v0, p3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 69
    :sswitch_1
    neg-int v0, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 72
    :sswitch_2
    neg-int v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 75
    :sswitch_3
    int-to-float v0, p4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
