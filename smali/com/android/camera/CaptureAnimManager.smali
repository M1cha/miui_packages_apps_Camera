.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private mAnimOrientation:I

.field private mAnimStartTime:J

.field private mAnimType:I

.field private mDelta:F

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public animateHoldAndSlide()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 98
    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 11
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v7, v0, v2

    .line 105
    .local v7, timeDiff:J
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x78

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 106
    :cond_0
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x8c

    cmp-long v0, v7, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    iget v6, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 109
    .local v6, animStep:I
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 110
    const-wide/16 v0, 0x14

    cmp-long v0, v7, v0

    if-gez v0, :cond_3

    const/4 v6, 0x2

    .line 111
    :goto_1
    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    .line 112
    const-wide/16 v0, 0x14

    sub-long/2addr v7, v0

    .line 116
    :cond_2
    const/4 v0, 0x2

    if-ne v6, v0, :cond_4

    .line 117
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v0

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v0

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v0, p1

    move-object v1, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 125
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_3
    const/4 v6, 0x3

    goto :goto_1

    .line 118
    :cond_4
    const/4 v0, 0x3

    if-ne v6, v0, :cond_5

    .line 119
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v0

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v0

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v0, p1

    move-object v1, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 120
    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    iget v2, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v4, v0

    const/16 v0, 0xb2

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v5, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto :goto_2

    .line 122
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
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
