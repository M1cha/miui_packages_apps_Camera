.class public Lcom/android/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mOrientation:I

.field private mPreviewFrameLayoutWidth:I

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    .line 51
    return-void
.end method


# virtual methods
.method public continueAnimation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 73
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    .line 74
    return-void
.end method

.method public drawAnimationFirst(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 23
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v21, v2, v6

    .line 82
    .local v21, timeDiff:J
    move-wide/from16 v0, v21

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 127
    :goto_0
    return v2

    .line 83
    :cond_0
    move-wide/from16 v0, v21

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    div-float v16, v2, v3

    .line 86
    .local v16, fraction:F
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v14, v2, v3

    .line 87
    .local v14, centerX:F
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v15, v2, v3

    .line 89
    .local v15, centerY:F
    const/high16 v2, 0x3f00

    cmpg-float v2, v16, v2

    if-gez v2, :cond_1

    .line 90
    const/high16 v2, 0x3f80

    const v3, 0x3e4ccccd

    const/high16 v6, 0x3f00

    div-float v6, v16, v6

    mul-float/2addr v3, v6

    sub-float v17, v2, v3

    .line 91
    .local v17, previewAnimScale:F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v19, v2, v17

    .line 92
    .local v19, previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v18, v2, v17

    .line 93
    .local v18, previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v19, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 94
    .local v4, previewX:I
    const/high16 v2, 0x4000

    div-float v2, v18, v2

    sub-float v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 96
    .local v5, previewY:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 127
    .end local v17           #previewAnimScale:F
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 99
    .end local v4           #previewX:I
    .end local v5           #previewY:I
    .end local v18           #previewHeight:F
    .end local v19           #previewWidth:F
    :cond_1
    move/from16 v0, p4

    int-to-float v2, v0

    const v3, 0x3f4ccccd

    mul-float v19, v2, v3

    .line 100
    .restart local v19       #previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    const v3, 0x3f4ccccd

    mul-float v18, v2, v3

    .line 102
    .restart local v18       #previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v19, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 103
    .restart local v4       #previewX:I
    const/high16 v2, 0x4000

    div-float v2, v18, v2

    sub-float v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 105
    .restart local v5       #previewY:I
    const/high16 v2, 0x3f00

    sub-float v2, v16, v2

    const/high16 v3, 0x3f00

    div-float v20, v2, v3

    .line 106
    .local v20, rate:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    .line 107
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    if-nez v2, :cond_3

    .line 109
    const/high16 v2, 0x42b4

    mul-float v7, v20, v2

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v2, p5, 0x2

    int-to-float v12, v2

    const v13, 0x44bb8000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v13}, Lcom/android/gallery3d/ui/GLCanvas;->rotateProjectionToXOY(FFFFFFF)V

    .line 113
    :goto_2
    neg-float v2, v14

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 123
    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1

    .line 111
    :cond_3
    move/from16 v0, v20

    neg-float v2, v0

    const/high16 v3, 0x42b4

    mul-float v7, v2, v3

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v2, p5, 0x2

    int-to-float v12, v2

    const v13, 0x44bb8000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v13}, Lcom/android/gallery3d/ui/GLCanvas;->rotateProjectionToXOY(FFFFFFF)V

    goto :goto_2

    .line 115
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_5

    .line 117
    const/high16 v2, 0x42b4

    mul-float v7, v20, v2

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    int-to-float v11, v0

    const/4 v12, 0x0

    const v13, 0x44bb8000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v13}, Lcom/android/gallery3d/ui/GLCanvas;->rotateProjectionToXOY(FFFFFFF)V

    .line 121
    :goto_4
    const/4 v2, 0x0

    neg-float v3, v15

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_3

    .line 119
    :cond_5
    move/from16 v0, v20

    neg-float v2, v0

    const/high16 v3, 0x42b4

    mul-float v7, v2, v3

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    int-to-float v11, v0

    const/4 v12, 0x0

    const v13, 0x44bb8000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v13}, Lcom/android/gallery3d/ui/GLCanvas;->rotateProjectionToXOY(FFFFFFF)V

    goto :goto_4
.end method

.method public drawAnimationNext(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 21
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "preview"
    .parameter "reviewNext"

    .prologue
    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v19, v2, v6

    .line 133
    .local v19, timeDiff:J
    move-wide/from16 v0, v19

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 177
    :goto_0
    return v2

    .line 134
    :cond_0
    move-wide/from16 v0, v19

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    div-float v12, v2, v3

    .line 137
    .local v12, fraction:F
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v10, v2, v3

    .line 138
    .local v10, centerX:F
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v11, v2, v3

    .line 140
    .local v11, centerY:F
    const/high16 v2, 0x3f00

    cmpg-float v2, v12, v2

    if-gez v2, :cond_5

    .line 141
    move/from16 v0, p4

    int-to-float v2, v0

    const v3, 0x3f4ccccd

    mul-float v15, v2, v3

    .line 142
    .local v15, previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    const v3, 0x3f4ccccd

    mul-float v14, v2, v3

    .line 144
    .local v14, previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v15, v2

    sub-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 145
    .local v16, previewX:I
    const/high16 v2, 0x4000

    div-float v2, v14, v2

    sub-float v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 147
    .local v17, previewY:I
    const/high16 v2, 0x3f00

    div-float v18, v12, v2

    .line 148
    .local v18, rate:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 149
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 150
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    if-nez v2, :cond_2

    .line 151
    const/high16 v2, 0x42b4

    mul-float v2, v2, v18

    const/high16 v3, 0x4387

    add-float/2addr v3, v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    div-int/lit8 v2, p5, 0x2

    int-to-float v8, v2

    const v9, 0x44bb8000

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/gallery3d/ui/GLCanvas;->rotateProjectionToXOY(FFFFFFF)V

    .line 155
    :goto_1
    neg-float v2, v10

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 165
    :goto_2
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 177
    .end local v16           #previewX:I
    .end local v17           #previewY:I
    .end local v18           #rate:F
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 153
    .restart local v16       #previewX:I
    .restart local v17       #previewY:I
    .restart local v18       #rate:F
    :cond_2
    const/high16 v2, 0x42b4

    mul-float v2, v2, v18

    const/high16 v3, 0x4387

    add-float/2addr v2, v3

    neg-float v3, v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    div-int/lit8 v2, p5, 0x2

    int-to-float v8, v2

    const v9, 0x44bb8000

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/gallery3d/ui/GLCanvas;->rotateProjectionToXOY(FFFFFFF)V

    goto :goto_1

    .line 157
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v11}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_4

    .line 159
    const/high16 v2, 0x42b4

    mul-float v2, v2, v18

    const/high16 v3, 0x4387

    add-float/2addr v3, v2

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x0

    const v9, 0x44bb8000

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/gallery3d/ui/GLCanvas;->rotateProjectionToXOY(FFFFFFF)V

    .line 163
    :goto_4
    const/4 v2, 0x0

    neg-float v3, v11

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_2

    .line 161
    :cond_4
    const/high16 v2, 0x42b4

    mul-float v2, v2, v18

    const/high16 v3, 0x4387

    add-float/2addr v2, v3

    neg-float v3, v2

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x0

    const v9, 0x44bb8000

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/gallery3d/ui/GLCanvas;->rotateProjectionToXOY(FFFFFFF)V

    goto :goto_4

    .line 168
    .end local v14           #previewHeight:F
    .end local v15           #previewWidth:F
    .end local v16           #previewX:I
    .end local v17           #previewY:I
    .end local v18           #rate:F
    :cond_5
    const/high16 v2, 0x3f80

    const v3, 0x3e4ccccd

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v12

    const/high16 v7, 0x3f00

    div-float/2addr v6, v7

    mul-float/2addr v3, v6

    sub-float v13, v2, v3

    .line 169
    .local v13, previewAnimScale:F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v15, v2, v13

    .line 170
    .restart local v15       #previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v14, v2, v13

    .line 171
    .restart local v14       #previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v15, v2

    sub-float v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 172
    .local v4, previewX:I
    const/high16 v2, 0x4000

    div-float v2, v14, v2

    sub-float v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 174
    .local v5, previewY:I
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_3
.end method

.method public drawDarkPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z
    .locals 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "review"

    .prologue
    .line 183
    int-to-float v1, p2

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v8, v1, v2

    .line 184
    .local v8, centerX:F
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v9, v1, v2

    .line 185
    .local v9, centerY:F
    const/high16 v12, 0x3f80

    .line 186
    .local v12, scaleRatio:F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v1, :cond_0

    .line 187
    move/from16 v0, p4

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 191
    :goto_0
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v1, v1

    mul-float v11, v1, v12

    .line 192
    .local v11, reviewWidth:F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v1, v1

    mul-float v10, v1, v12

    .line 193
    .local v10, reviewHeight:F
    const/high16 v1, 0x4000

    div-float v1, v11, v1

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 194
    .local v3, reviewX:I
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 197
    .local v4, reviewY:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v7

    .line 198
    .local v7, alpha:F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 200
    invoke-interface {p1, v7}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 201
    const/4 v1, 0x1

    return v1

    .line 189
    .end local v3           #reviewX:I
    .end local v4           #reviewY:I
    .end local v7           #alpha:F
    .end local v10           #reviewHeight:F
    .end local v11           #reviewWidth:F
    :cond_0
    const-string v1, "SwitchAnimManager"

    const-string v2, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    .line 63
    return-void
.end method

.method public setReviewDrawingSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    .line 55
    iput p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    .line 56
    return-void
.end method

.method public startAnimation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 68
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mOrientation:I

    .line 69
    return-void
.end method
