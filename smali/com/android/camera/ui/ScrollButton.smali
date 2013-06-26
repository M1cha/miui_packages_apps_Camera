.class public Lcom/android/camera/ui/ScrollButton;
.super Landroid/widget/RelativeLayout;
.source "ScrollButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;
    }
.end annotation


# instance fields
.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mCameraIcon:Lcom/android/camera/ui/RotateImageView;

.field private mChecked:Z

.field private mCurrentAnimationTime:J

.field private mFrame:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLastPointX:I

.field private mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

.field private mOriginalTouchPointX:I

.field private mSlider:Lcom/android/camera/ui/RotateImageView;

.field private mSliderEndPosition:I

.field private mSliderMoved:Z

.field private mSliderOffset:I

.field private mSliderWidth:I

.field private mSoundView:Landroid/view/View;

.field private mTapThreshold:I

.field private mTracking:Z

.field private mVideoIcon:Lcom/android/camera/ui/RotateImageView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/android/camera/ui/ScrollButton;->mChecked:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimating:Z

    .line 46
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimatedVelocity:F

    .line 53
    new-instance v0, Lcom/android/camera/ui/ScrollButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScrollButton$1;-><init>(Lcom/android/camera/ui/ScrollButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    .line 74
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ScrollButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->doAnimation()V

    return-void
.end method

.method private animateOff()V
    .locals 1

    .prologue
    .line 189
    const/high16 v0, -0x3d38

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScrollButton;->performFling(F)V

    .line 190
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 191
    return-void
.end method

.method private animateOn()V
    .locals 1

    .prologue
    .line 184
    const/high16 v0, 0x42c8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScrollButton;->performFling(F)V

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 186
    return-void
.end method

.method private animateToggle()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOff()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOn()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 239
    iget-boolean v1, p0, Lcom/android/camera/ui/ScrollButton;->mAnimating:Z

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->incrementAnimation()V

    .line 243
    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationPosition:F

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ScrollButton;->moveSlider(I)V

    .line 244
    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v2, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    if-lt v1, v2, :cond_4

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iput-boolean v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimating:Z

    .line 247
    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v2, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    if-lt v1, v2, :cond_3

    const/4 v0, 0x1

    .line 249
    .local v0, b:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScrollButton;->setChecked(Z)V

    .line 251
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;->onCheckedChanged(Z)V

    goto :goto_0

    .line 254
    .end local v0           #b:Z
    :cond_4
    iget-wide v1, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    .line 255
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 6

    .prologue
    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 261
    .local v0, now:J
    iget-wide v4, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationLastTime:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float v3, v4, v5

    .line 262
    .local v3, t:F
    iget v2, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationPosition:F

    .line 263
    .local v2, position:F
    iget v4, p0, Lcom/android/camera/ui/ScrollButton;->mAnimatedVelocity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    iput v4, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationPosition:F

    .line 264
    iput-wide v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationLastTime:J

    .line 265
    return-void
.end method

.method private moveSlider(I)V
    .locals 2
    .parameter "offsetX"

    .prologue
    .line 195
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    .line 196
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    if-gez v0, :cond_1

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 202
    return-void

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    if-le v0, v1, :cond_0

    .line 199
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    goto :goto_0
.end method

.method private performFling(F)V
    .locals 6
    .parameter "velocity"

    .prologue
    const/4 v4, 0x0

    .line 228
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/ScrollButton;->mAnimating:Z

    .line 229
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationPosition:F

    .line 230
    iput p1, p0, Lcom/android/camera/ui/ScrollButton;->mAnimatedVelocity:F

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 232
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationLastTime:J

    .line 233
    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    .line 234
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 236
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 217
    iget-boolean v1, p0, Lcom/android/camera/ui/ScrollButton;->mChecked:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 80
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setX(F)V

    .line 293
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 294
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 85
    const v2, 0x7f0c002c

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mFrame:Landroid/widget/ImageView;

    .line 86
    const v2, 0x7f0c002f

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    .line 87
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->addView(Landroid/view/View;)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v2, 0x7f0c002d

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mCameraIcon:Lcom/android/camera/ui/RotateImageView;

    .line 91
    const v2, 0x7f0c002e

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mVideoIcon:Lcom/android/camera/ui/RotateImageView;

    .line 93
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mFrame:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    .local v1, frameDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->setDrawingCacheEnabled(Z)V

    .line 98
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    .line 99
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mHeight:I

    .line 101
    iget v2, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    iget-object v3, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3}, Lcom/android/camera/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mSliderWidth:I

    .line 102
    iget v2, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    iget v3, p0, Lcom/android/camera/ui/ScrollButton;->mSliderWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 104
    .local v0, density:F
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mTapThreshold:I

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->requestLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    .line 222
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScrollButton;->setMeasuredDimension(II)V

    .line 223
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 225
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 172
    :goto_0
    return v4

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 115
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 116
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 117
    .local v3, y:I
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v7, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v8, p0, Lcom/android/camera/ui/ScrollButton;->mSliderWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/ScrollButton;->mHeight:I

    invoke-direct {v1, v6, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .local v1, sliderFrame:Landroid/graphics/Rect;
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v5

    .line 172
    goto :goto_0

    .line 121
    :pswitch_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    iput-boolean v5, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 127
    :goto_2
    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mLastPointX:I

    .line 128
    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mOriginalTouchPointX:I

    .line 129
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    goto :goto_1

    .line 125
    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    goto :goto_2

    .line 133
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    if-eqz v4, :cond_1

    .line 134
    iget v4, p0, Lcom/android/camera/ui/ScrollButton;->mLastPointX:I

    sub-int v4, v2, v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ScrollButton;->moveSlider(I)V

    .line 135
    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mLastPointX:I

    .line 136
    iget v4, p0, Lcom/android/camera/ui/ScrollButton;->mOriginalTouchPointX:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/android/camera/ui/ScrollButton;->mTapThreshold:I

    if-lt v4, v6, :cond_1

    .line 137
    iput-boolean v5, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 144
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    if-eqz v6, :cond_5

    .line 145
    iget-boolean v6, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    if-nez v6, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateToggle()V

    .line 157
    :goto_3
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    goto :goto_1

    .line 148
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v7, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOff()V

    goto :goto_3

    .line 151
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOn()V

    goto :goto_3

    .line 155
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateToggle()V

    goto :goto_3

    .line 162
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 163
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOn()V

    .line 167
    :goto_4
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    .line 168
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    goto :goto_1

    .line 165
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOff()V

    goto :goto_4

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCameraIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mCameraIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/camera/ui/ScrollButton;->mChecked:Z

    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 214
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 307
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 308
    return-void
.end method

.method public setFrameBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    return-void
.end method

.method public setOnCheckedChangedListener(Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    .line 70
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mCameraIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mVideoIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 302
    return-void
.end method

.method public setSliderBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-void
.end method

.method public setSliderDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    return-void
.end method

.method public setVideoIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mVideoIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    return-void
.end method
