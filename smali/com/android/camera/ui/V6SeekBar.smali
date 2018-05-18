.class public Lcom/android/camera/ui/V6SeekBar;
.super Landroid/widget/RelativeLayout;
.source "V6SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final PADDING:I


# instance fields
.field private mBar:Lcom/android/camera/ui/TwoStateBar;

.field private mBarHeight:I

.field private mCursor:Landroid/widget/ImageView;

.field private mCursorHeight:I

.field private mCursorPosition:I

.field private mCursorWidth:I

.field private mEndPosition:I

.field private mGap:F

.field private mHeight:I

.field private mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

.field private mMaxValue:I

.field private mReLoad:Z

.field private mSmoothChange:Z

.field private mStartPosition:I

.field private mValue:I

.field private mValueChanged:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6SeekBar;->PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    iput v3, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    iput-boolean v3, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    iput-boolean v3, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SeekBar;->mSmoothChange:Z

    new-instance v0, Lcom/android/camera/ui/TwoStateBar;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/TwoStateBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->addView(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    iput v3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    return-void
.end method

.method private clip(III)I
    .locals 0

    if-le p1, p2, :cond_0

    return p2

    :cond_0
    if-ge p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private mapPositionToValue(I)I
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    return v0
.end method

.method private mapValueToPosition(I)I
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    int-to-float v1, p1

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    return v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    return v0
.end method

.method private notifyChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-interface {v0, v1, p1}, Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;->onValueChanged(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x3

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v8, :cond_0

    return v7

    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v8

    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/V6SeekBar;->setActivated(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v6, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/V6SeekBar;->mapPositionToValue(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, v8}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/V6SeekBar;->setActivated(Z)V

    invoke-direct {p0, v7}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v2, v4

    move v3, v2

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    if-gt v4, v10, :cond_3

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    :cond_2
    move v3, v1

    :goto_1
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    iget-boolean v4, p0, Lcom/android/camera/ui/V6SeekBar;->mSmoothChange:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/V6SeekBar;->mapPositionToValue(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, v7}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    goto/16 :goto_0

    :cond_3
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    if-ge v10, v4, :cond_4

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    :cond_4
    move v3, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->setMaxValue(I)V

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    iput-boolean v4, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v6, v0, v3, v4}, Lcom/android/camera/ui/TwoStateBar;->layout(IIII)V

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorHeight:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v2, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/camera/ui/TwoStateBar;->setStatePosition(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    iput p2, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    sget v0, Lcom/android/camera/ui/V6SeekBar;->PADDING:I

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    sget v1, Lcom/android/camera/ui/V6SeekBar;->PADDING:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    return-void
.end method

.method public setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V6SeekBar;->mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    return-void
.end method

.method public setValue(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    :cond_0
    return-void
.end method
