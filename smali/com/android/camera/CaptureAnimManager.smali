.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mAnimType:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateHold()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public animateHoldAndSlide()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public animateSlide()V
    .locals 2

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    return-void
.end method

.method public clearAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 11

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v8, v0, v2

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-ne v0, v4, :cond_0

    const-wide/16 v0, 0x78

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    return v7

    :cond_0
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-ne v0, v10, :cond_1

    const-wide/16 v0, 0x8c

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    return v7

    :cond_1
    iget v6, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-ne v0, v10, :cond_2

    const-wide/16 v0, 0x14

    cmp-long v0, v8, v0

    if-gez v0, :cond_3

    const/4 v6, 0x2

    :cond_2
    :goto_0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_4

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v1

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :goto_1
    return v10

    :cond_3
    const/4 v6, 0x3

    goto :goto_0

    :cond_4
    if-ne v6, v4, :cond_5

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v1

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    iget v2, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    iget v3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v4, v4

    const/16 v5, 0xb2

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_1

    :cond_5
    return v7
.end method

.method public startAnimation(IIII)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    return-void
.end method
