.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintEvText.java"


# instance fields
.field private mEvTextMargin:I

.field private mEvValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mEvValue:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mEvValue:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const-string/jumbo v0, "-"

    :goto_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "%s %.1f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    iget v7, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mEvValue:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mMiddleX:F

    div-float v5, v3, v9

    sub-float/2addr v4, v5

    div-float v5, v1, v9

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mMiddleY:F

    sget v6, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mEvTextMargin:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    const-string/jumbo v0, "+"

    goto :goto_0
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v1, 0x1010095

    const v2, 0x1010098

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, 0x7f110010

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mEvTextMargin:I

    return-void
.end method

.method public setEvValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->mEvValue:F

    return-void
.end method
