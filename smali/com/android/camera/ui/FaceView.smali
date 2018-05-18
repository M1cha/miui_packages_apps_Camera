.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FaceView$1;,
        Lcom/android/camera/ui/FaceView$FaceViewRectState;,
        Lcom/android/camera/ui/FaceView$PopType;
    }
.end annotation


# static fields
.field private static configuration:Landroid/content/res/Configuration;


# instance fields
.field private mAgeFemaleHonPadding:I

.field private mAgeMaleHonPadding:I

.field private mAgeVerPadding:I

.field private mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

.field private mCanvasMatrix:Landroid/graphics/Matrix;

.field private mCanvasRect:Landroid/graphics/RectF;

.field private mCorrection:I

.field private mEffectRectPaint:Landroid/graphics/Paint;

.field private mFaceAgeFormat:Ljava/lang/String;

.field private mFaceInfoNumberPaint:Landroid/graphics/Paint;

.field private mFaceInfoTextPaint:Landroid/graphics/Paint;

.field private mFacePopupBottom:I

.field private mFaceRectHideAnimator:Landroid/animation/Animator;

.field private mFaceScoreInfoFormat:Ljava/lang/String;

.field private mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field private mGap:I

.field private mHandler:Landroid/os/Handler;

.field private mIsCameraFaceDetectionAutoHidden:Z

.field private mLatestFaceIndex:I

.field private mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

.field private mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mNormalRectPaint:Landroid/graphics/Paint;

.field private mOrientation:I

.field private mPopBottomMargin:I

.field private mRect:Landroid/graphics/RectF;

.field private mRectState:I

.field private mScoreHonPadding:I

.field private mScoreVerPadding:I

.field private mSexFemaleIc:Landroid/graphics/drawable/Drawable;

.field private mSexMaleIc:Landroid/graphics/drawable/Drawable;

.field private mShowGenderAndAge:Z

.field private mShowMagicMirror:Z

.field private mSkipDraw:Z

.field private mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

.field private mWinnerIndex:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/FaceView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/FaceView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mCanvasRect:Landroid/graphics/RectF;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iput v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    iput v3, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    iput v4, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    new-instance v0, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private attemptHideFaceRect()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private cancelHideAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private clearAttemptHideFaceRect()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private drawFaceInfoText(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "\\d+\\.?\\d*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, p3

    div-float v4, v2, v6

    add-float/2addr v3, v4

    int-to-float v4, p4

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    int-to-float v3, p3

    add-float/2addr v3, v2

    float-to-int p3, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, p3

    div-float v4, v2, v6

    add-float/2addr v3, v4

    int-to-float v4, p4

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "\\d+\\.?\\d*"

    invoke-virtual {v6, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    add-float/2addr v10, v13

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    add-float/2addr v10, v13

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int v13, v13, p6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    add-float/2addr v13, v10

    move/from16 v0, p6

    int-to-float v14, v0

    add-float/2addr v13, v14

    float-to-int v12, v13

    move/from16 v0, p7

    int-to-float v13, v0

    const v14, 0x40666666    # 3.6f

    mul-float/2addr v13, v14

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-int v11, v13

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    float-to-int v13, v13

    div-int/lit8 v14, v12, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    sub-int/2addr v14, v11

    sub-int v14, v14, p9

    sub-int v14, v14, p8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    float-to-int v15, v15

    div-int/lit8 v16, v12, 0x2

    add-int v15, v15, v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v16, v16, p9

    move/from16 v0, v16

    invoke-direct {v3, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget v13, v3, Landroid/graphics/Rect;->left:I

    add-int v13, v13, p6

    iget v14, v3, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move/from16 v0, p7

    int-to-float v15, v0

    const v16, 0x3fe66666    # 1.8f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v3, Landroid/graphics/Rect;->left:I

    add-int v15, v15, p6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    add-int v15, v15, v16

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3fe66666    # 1.8f

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v13, 0x0

    cmpl-float v13, v10, v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    iget v13, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int v4, v13, v14

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iget v14, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v13, v14

    iget v14, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    div-int/lit8 v5, v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/camera/ui/FaceView;->drawFaceInfoText(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 4

    const v3, 0x3c75c28f    # 0.015f

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    return-void

    :pswitch_2
    iget v1, p4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    const/16 v2, -0x47c9

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p4}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, p4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    const v1, -0x11957f

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const v1, -0x90480c

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getAgeInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 6

    iget v1, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    float-to-int v0, v1

    iget v1, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    float-to-int v0, v1

    :cond_0
    sget-object v1, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceAgeFormat:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPopShowType([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)I
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    array-length v4, p1

    if-lez v4, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->shouldShowMagicMirror()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x0

    iput v6, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    aget-object v0, p1, v1

    iget v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-eq v4, v6, :cond_0

    iget v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    aget-object v5, p1, v5

    iget v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    :cond_0
    iput v1, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    const/4 v3, 0x2

    :cond_3
    :goto_1
    return v3

    :cond_4
    if-lez v2, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1
.end method

.method private getScoreInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceScoreInfoFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initFaceInfoStyle()V
    .locals 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "(\\D+)|(\\d+\\.?\\d*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0183

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceAgeFormat:Ljava/lang/String;

    const v2, 0x7f0f0184

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceScoreInfoFormat:Ljava/lang/String;

    const v2, 0x7f020160

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020131

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020130

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v2, 0x7f090088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    const v3, 0x3f947ae1    # 1.16f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_2
    const v2, 0x7f02015e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f09008b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    const v2, 0x7f09008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    const v2, 0x7f09008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    const v2, 0x7f09008c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    const v2, 0x7f09008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mScoreHonPadding:I

    const v2, 0x7f090090

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mScoreVerPadding:I

    const v2, 0x7f090089

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    const v2, 0x7f09008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    return-void
.end method

.method private isValidAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->prob:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v3, 0x3f19999a    # 0.6f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1

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

.method private setToVisible()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private shouldShowMagicMirror()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNormalFaceRectImmediately()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    return-void
.end method

.method private updateLatestFaces()V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    iput v4, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :goto_1
    return-void

    :cond_0
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v2, v4

    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aput-object v0, v2, v3

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    return-void
.end method

.method public clearPreviousFaces()V
    .locals 3

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public faceExists()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public forceHideRect()V
    .locals 2

    const/4 v1, 0x4

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    :cond_0
    return-void
.end method

.method public getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    return-object v0
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .locals 9

    const/4 v2, 0x0

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    if-eqz v8, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mCameraDisplayOrientation:I

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v7

    :cond_0
    return-object v2
.end method

.method public isFaceStable()Z
    .locals 13

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v5, v9, v8

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x3

    if-lt v4, v11, :cond_1

    const/4 v8, 0x0

    return v8

    :cond_0
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v3, v11

    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v0, v11

    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v11

    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v8, v8

    sub-int v6, v8, v4

    div-int/2addr v3, v6

    div-int/2addr v0, v6

    div-int/2addr v1, v6

    div-int/2addr v2, v6

    div-int/lit8 v8, v3, 0x3

    const/16 v9, 0x5a

    if-le v8, v9, :cond_4

    div-int/lit8 v7, v3, 0x3

    :goto_1
    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_8

    aget-object v5, v9, v8

    if-nez v5, :cond_5

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    const/16 v7, 0x5a

    goto :goto_1

    :cond_5
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v7, :cond_6

    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_7

    :cond_6
    :goto_3
    const/4 v8, 0x0

    return v8

    :cond_7
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_3

    goto :goto_3

    :cond_8
    const/16 v8, 0x29e

    if-gt v3, v8, :cond_9

    const/16 v8, 0x29e

    if-le v0, v8, :cond_a

    :cond_9
    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/android/camera/ui/FaceView;->mIsBigEnoughRect:Z

    const/4 v8, 0x1

    return v8

    :cond_a
    const/4 v8, 0x0

    goto :goto_4
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v3, v3

    if-lez v3, :cond_2

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/FaceView;->mPause:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/FaceView;->mCameraDisplayOrientation:I

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-static/range {v3 .. v9}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/FaceView;->getPopShowType([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)I

    move-result v21

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v23

    const/16 v19, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v4, v4, v19

    iget-object v4, v4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mCanvasRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isContains(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v4, v4, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/camera/ui/FaceView;->drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    packed-switch v21, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v19

    iget v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v4, 0x3ecccccd    # 0.4f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/FaceView;->getAgeInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    :goto_3
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    :goto_4
    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    :goto_5
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_1

    :cond_5
    const/16 v20, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    goto :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v19

    iget v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move/from16 v18, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v18}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v19

    iget v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move/from16 v18, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v18}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->pause()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    return-void
.end method

.method public reShowFaceRect()V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->resume()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraFaceDetectionAutoHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsCameraFaceDetectionAutoHidden:Z

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 3

    iput p1, p0, Lcom/android/camera/ui/FaceView;->mCameraDisplayOrientation:I

    const-string/jumbo v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCameraDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFaceRectVisible(II)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    const/16 v0, 0xff

    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/camera/ui/FaceView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FaceView$2;-><init>(Lcom/android/camera/ui/FaceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Num of faces="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v3, :cond_1

    return v4

    :cond_0
    array-length v3, p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    array-length v2, p1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v0, v3

    :goto_2
    if-eq v2, v0, :cond_5

    const/4 v1, 0x1

    :goto_3
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->shouldShowMagicMirror()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    return v7

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    if-lez v2, :cond_7

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/ui/FaceView;->mIsCameraFaceDetectionAutoHidden:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->attemptHideFaceRect()V

    :cond_8
    :goto_4
    return v7

    :cond_9
    iget v3, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq v3, v7, :cond_8

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->clearAttemptHideFaceRect()V

    goto :goto_4
.end method

.method public setMirror(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    const-string/jumbo v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz v1, :cond_1

    xor-int/lit8 v0, p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowMagicMirror(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->shouldShowMagicMirror()Z

    move-result v1

    if-eqz v1, :cond_1

    xor-int/lit8 v0, p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSkipDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    return-void
.end method

.method public showFail()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    return-void
.end method

.method public showStart()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    return-void
.end method

.method public showSuccess()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    return-void
.end method
