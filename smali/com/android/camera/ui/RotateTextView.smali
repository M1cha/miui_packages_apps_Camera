.class public Lcom/android/camera/ui/RotateTextView;
.super Lcom/android/camera/ui/TwoStateTextView;
.source "RotateTextView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateTextView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 19
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 20
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 24
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 25
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 19
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 20
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 24
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 25
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 84
    .local v7, text:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 115
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iget v13, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-eq v12, v13, :cond_1

    .line 89
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 90
    .local v8, time:J
    iget-wide v12, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    cmp-long v12, v8, v12

    if-gez v12, :cond_4

    .line 91
    iget-wide v12, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    sub-long v12, v8, v12

    long-to-int v2, v12

    .line 92
    .local v2, deltaTime:I
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    iget-boolean v13, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    if-eqz v13, :cond_2

    .end local v2           #deltaTime:I
    :goto_1
    mul-int/lit16 v13, v2, 0x10e

    div-int/lit16 v13, v13, 0x3e8

    add-int v1, v12, v13

    .line 94
    .local v1, degree:I
    if-ltz v1, :cond_3

    rem-int/lit16 v1, v1, 0x168

    .line 95
    :goto_2
    iput v1, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 102
    .end local v1           #degree:I
    .end local v8           #time:J
    :cond_1
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 104
    .local v6, saveCount:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 105
    .local v4, left:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    .line 106
    .local v10, top:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 107
    .local v5, right:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 108
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v12, v4

    sub-int v11, v12, v5

    .line 109
    .local v11, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v10

    sub-int v3, v12, v0

    .line 110
    .local v3, height:I
    div-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v4

    int-to-float v12, v12

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    int-to-float v13, v13

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v13

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 92
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #saveCount:I
    .end local v10           #top:I
    .end local v11           #width:I
    .restart local v2       #deltaTime:I
    .restart local v8       #time:J
    :cond_2
    neg-int v2, v2

    goto :goto_1

    .line 94
    .end local v2           #deltaTime:I
    .restart local v1       #degree:I
    :cond_3
    rem-int/lit16 v12, v1, 0x168

    add-int/lit16 v1, v12, 0x168

    goto :goto_2

    .line 98
    .end local v1           #degree:I
    :cond_4
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 74
    .local v2, w:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 75
    .local v0, h:I
    if-eq v2, v0, :cond_0

    .line 76
    if-le v2, v0, :cond_1

    move v1, v2

    .line 77
    .local v1, size:I
    :goto_0
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 79
    .end local v1           #size:I
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 76
    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 5
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 41
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 42
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 62
    :goto_1
    return-void

    .line 41
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 43
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 44
    if-eqz p2, :cond_5

    .line 45
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 46
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 48
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iget v2, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 49
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 53
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 55
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 56
    iget-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x10e

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 61
    .end local v0           #diff:I
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 49
    .restart local v0       #diff:I
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 55
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 59
    .end local v0           #diff:I
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_4
.end method
