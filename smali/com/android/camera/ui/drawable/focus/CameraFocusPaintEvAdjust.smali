.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintEvAdjust.java"


# static fields
.field private static final MARGIN:I

.field private static final TRIANGLE_BASE_DIS:I

.field private static final TRIANGLE_BASE_HEIGHT:I

.field private static final TRIANGLE_BASE_LEN:I

.field private static final TRIANGLE_MIN_MARGIN:I


# instance fields
.field private mCurrentDistanceY:F

.field private mCurrentOffsetY:F

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mEvValue:F

.field private mLineColor:I

.field private mLineHeight:I

.field private mLineMargin:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:I

.field private mRotation:I

.field private mRtl:Z

.field private mShowLine:Z

.field private mStartOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_DIS:I

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    return-void
.end method

.method private isNearlyOutOfEdge()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRotation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleX:F

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    int-to-float v4, v1

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleX:F

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRotation:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_5

    int-to-float v4, v0

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleY:F

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    :goto_2
    return v2

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRotation:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleY:F

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    :goto_3
    return v2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    return v3
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->isNearlyOutOfEdge()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleX:F

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v6, v0, v5

    :goto_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleY:F

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    add-float/2addr v0, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_DIS:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v7, v0, v5

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v6

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v5, v5

    sub-float v5, v7, v5

    invoke-virtual {v8, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v1, v6, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v3, v6, v0

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleY:F

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v2, v0, v5

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v0, v0

    sub-float v0, v7, v0

    sub-float/2addr v0, v2

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v0, v0

    sub-float v0, v7, v0

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v5, v5

    sub-float v4, v0, v5

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleY:F

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    add-float/2addr v0, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_DIS:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v7, v0, v5

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v6

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    invoke-virtual {v8, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleY:F

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v4, v0, v5

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v0, v0

    add-float/2addr v0, v7

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v5, v5

    add-float v2, v0, v5

    iget-object v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mMiddleX:F

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v6, v0, v5

    goto/16 :goto_0
.end method

.method public getEvValue()F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    return v0
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0xff

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineWidth:I

    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDistanceY(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    return-void
.end method

.method public setEvValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    return-void
.end method

.method public setLineColor(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineColor:I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRotation:I

    return-void
.end method

.method public setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setShowLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    return-void
.end method

.method public setStartOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    return-void
.end method

.method public updateValue(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    return-void
.end method
