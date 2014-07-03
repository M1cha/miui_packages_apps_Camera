.class public Lcom/android/camera/ui/ZoomControlBar;
.super Lcom/android/camera/ui/ZoomControl;
.source "ZoomControlBar.java"


# static fields
.field private static final ICON_SPACING:I

.field private static final THRESHOLD_FIRST_MOVE:I


# instance fields
.field private mBar:Landroid/view/View;

.field private mIconSize:I

.field private mSize:I

.field private mSliderLength:I

.field private mSliderPosition:I

.field private mStartChanging:Z

.field private mTotalIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomControlBar;->THRESHOLD_FIRST_MOVE:I

    .line 36
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomControlBar;->ICON_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    .line 54
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomControlBar;->addView(Landroid/view/View;)V

    .line 57
    const v0, 0x7f02012e

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControlBar;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f020130

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControlBar;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f02012f

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ZoomControlBar;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    .line 60
    return-void
.end method

.method private getSliderPosition(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 83
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 84
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    sub-int v0, v1, v2

    .line 95
    .local v0, pos:I
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 96
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    .line 97
    :cond_1
    return v0

    .line 86
    .end local v0           #pos:I
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    sub-int v0, v1, v2

    .restart local v0       #pos:I
    goto :goto_0

    .line 89
    .end local v0           #pos:I
    :cond_3
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    .line 90
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    sub-int v0, v1, v2

    .restart local v0       #pos:I
    goto :goto_0

    .line 92
    .end local v0           #pos:I
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    sub-int v0, v1, v2

    .restart local v0       #pos:I
    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    if-nez v6, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v4

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 119
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v4, v5

    .line 150
    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ZoomControlBar;->setActivated(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->closeZoomControl()V

    goto :goto_1

    .line 128
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ZoomControlBar;->setActivated(Z)V

    .line 129
    iput-boolean v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mStartChanging:Z

    .line 131
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move v2, v5

    .line 133
    .local v2, isLandscape:Z
    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    :goto_3
    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ZoomControlBar;->getSliderPosition(I)I

    move-result v3

    .line 135
    .local v3, pos:I
    iget-boolean v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mStartChanging:Z

    if-nez v4, :cond_3

    .line 138
    iget v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    sub-int v1, v4, v3

    .line 139
    .local v1, delta:I
    sget v4, Lcom/android/camera/ui/ZoomControlBar;->THRESHOLD_FIRST_MOVE:I

    if-gt v1, v4, :cond_2

    sget v4, Lcom/android/camera/ui/ZoomControlBar;->THRESHOLD_FIRST_MOVE:I

    neg-int v4, v4

    if-ge v1, v4, :cond_3

    .line 141
    :cond_2
    iput-boolean v5, p0, Lcom/android/camera/ui/ZoomControlBar;->mStartChanging:Z

    .line 144
    .end local v1           #delta:I
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mStartChanging:Z

    if-eqz v4, :cond_4

    .line 145
    const-wide/high16 v6, 0x3ff0

    int-to-double v8, v3

    mul-double/2addr v6, v8

    iget v4, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    int-to-double v8, v4

    div-double/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/ZoomControlBar;->performZoom(D)V

    .line 146
    iput v3, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->requestLayout()V

    goto :goto_1

    .end local v2           #isLandscape:Z
    .end local v3           #pos:I
    :cond_5
    move v2, v4

    .line 131
    goto :goto_2

    .line 133
    .restart local v2       #isLandscape:Z
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    goto :goto_3

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v0, 0x1

    .line 165
    .local v0, isLandscape:Z
    :goto_0
    iget v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomMax:I

    if-nez v6, :cond_1

    .line 207
    :goto_1
    return-void

    .line 163
    .end local v0           #isLandscape:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    .restart local v0       #isLandscape:Z
    :cond_1
    const/4 v2, 0x0

    .line 167
    .local v2, size:I
    if-eqz v0, :cond_2

    .line 168
    sub-int v2, p4, p2

    .line 169
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/view/View;->layout(IIII)V

    .line 178
    :goto_2
    iget v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomIndex:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomMax:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v4, v6

    .line 180
    .local v4, sliderPosition:I
    if-eqz v0, :cond_4

    .line 181
    iget v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mOrientation:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 182
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    add-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 183
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 184
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v1, v6, v4

    .line 190
    .local v1, pos:I
    :goto_3
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 191
    .local v3, sliderHeight:I
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v7, 0x0

    div-int/lit8 v8, v3, 0x2

    sub-int v8, v1, v8

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    .line 171
    .end local v1           #pos:I
    .end local v3           #sliderHeight:I
    .end local v4           #sliderPosition:I
    :cond_2
    sub-int v2, p5, p3

    .line 172
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    iget v7, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    add-int/2addr v7, v8

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 186
    .restart local v4       #sliderPosition:I
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    add-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 187
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 188
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v1, v6, v4

    .restart local v1       #pos:I
    goto :goto_3

    .line 194
    .end local v1           #pos:I
    :cond_4
    iget v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mOrientation:I

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_5

    .line 195
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    add-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 196
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 197
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v1, v6, v4

    .line 203
    .restart local v1       #pos:I
    :goto_4
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 204
    .local v5, sliderWidth:I
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    div-int/lit8 v7, v5, 0x2

    sub-int v7, v1, v7

    const/4 v8, 0x0

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    .line 199
    .end local v1           #pos:I
    .end local v5           #sliderWidth:I
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    add-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 200
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v10, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 201
    iget-object v6, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int v1, v6, v4

    .restart local v1       #pos:I
    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/android/camera/ui/ZoomControl;->onMeasure(II)V

    .line 73
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 104
    iput p2, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    .line 110
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    sget v1, Lcom/android/camera/ui/ZoomControlBar;->ICON_SPACING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    .line 111
    iget v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mTotalIconSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingLeft:I

    iget v2, p0, Lcom/android/camera/ui/ZoomControlBar;->mPaddingRight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderLength:I

    .line 112
    return-void

    .line 107
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/ZoomControlBar;->mSize:I

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mIconSize:I

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/camera/ui/ZoomControl;->setActivated(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 66
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 158
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ZoomControlBar;->mSliderPosition:I

    .line 213
    return-void
.end method
