.class public Lcom/android/camera/ui/V9SmartShutterButton;
.super Landroid/widget/ImageView;
.source "V9SmartShutterButton.java"

# interfaces
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V9SmartShutterButton$1;,
        Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;
    }
.end annotation


# static fields
.field private static final DISMISS_DISTANCE_THRESHOLD:I

.field private static final FADEOUT_BOUNDS_THRESHOLD:I

.field private static final MOVE_THRESHOLD:I

.field private static UNUSED_TRIGGER_TIME:I

.field private static sDeviceScreenInches:D


# instance fields
.field private mEnableClick:Z

.field private mFadeout:Landroid/view/animation/Animation;

.field private mFixedShutterCenterX:I

.field private mFixedShutterCenterY:I

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mMoveBounds:Landroid/graphics/Rect;

.field private mOriginX:I

.field private mOriginY:I

.field private mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

.field private mState:I

.field private mVisibleBounds:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/camera/ui/V9SmartShutterButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V9SmartShutterButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->updateVisibleState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->MOVE_THRESHOLD:I

    const/16 v0, 0x3a98

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v7, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    iput-boolean v7, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    new-instance v1, Lcom/android/camera/ui/V9SmartShutterButton$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V9SmartShutterButton$1;-><init>(Lcom/android/camera/ui/V9SmartShutterButton;)V

    iput-object v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sget v6, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mMoveBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private getDistanceFromPoint(IIII)I
    .locals 4

    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private nearCenterOfShutter(II)Z
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v3, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt v0, v3, :cond_0

    sget v3, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt v1, v3, :cond_0

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sget v3, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    int-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private needMovableShutter()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getScreenInches(Landroid/content/Context;)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    :cond_0
    sget-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    const-wide v2, 0x401399999999999aL    # 4.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    invoke-interface {v0}, Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;->onSmartShutterClick()V

    :cond_0
    return-void
.end method

.method private onFocused(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;->onSmartShutterFocus(Z)V

    :cond_0
    return-void
.end method

.method private reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_3

    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_2

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private setDisplayPosition(II)V
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setX(F)V

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setY(F)V

    return-void
.end method

.method private setRelateVisible(I)V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V9SmartShutterButton;->setVisibility(I)V

    return-void
.end method

.method private updateVisibleState()V
    .locals 6

    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3c23d70a    # 0.01f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    invoke-direct {p0, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->clearAnimation()V

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->setAlpha(F)V

    invoke-direct {p0, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public canProvide()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->isEnableClick()Z

    move-result v4

    if-nez v4, :cond_0

    return v8

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v9

    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/V9SmartShutterButton;->setPressed(Z)V

    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v5, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    int-to-long v6, v5

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-static {v4, v5, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mInShutterButton:Z

    iget-boolean v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mInShutterButton:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    if-eq v4, v9, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setSmartShutterPosition(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->onClick()V

    :cond_2
    invoke-direct {p0, v8}, Lcom/android/camera/ui/V9SmartShutterButton;->onFocused(Z)V

    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->updateVisibleState()V

    goto :goto_0

    :pswitch_1
    iget v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    if-eq v4, v9, :cond_3

    sget v4, Lcom/android/camera/ui/V9SmartShutterButton;->MOVE_THRESHOLD:I

    iget v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginX:I

    iget v6, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginY:I

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/android/camera/ui/V9SmartShutterButton;->getDistanceFromPoint(IIII)I

    move-result v5

    if-gt v4, v5, :cond_1

    iput v9, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V9SmartShutterButton;->nearCenterOfShutter(II)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->setAlpha(F)V

    new-instance v1, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_4
    :goto_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->setDisplayPosition(II)V

    goto/16 :goto_0

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mMoveBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    if-ne v4, v9, :cond_6

    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    :cond_6
    iput v8, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    goto :goto_1

    :pswitch_2
    iput v2, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginX:I

    iput v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginY:I

    iput v8, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    invoke-virtual {p0, v9}, Lcom/android/camera/ui/V9SmartShutterButton;->setPressed(Z)V

    invoke-direct {p0, v9}, Lcom/android/camera/ui/V9SmartShutterButton;->onFocused(Z)V

    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flyin(IIII)V
    .locals 9

    const/4 v7, -0x1

    const/4 v8, 0x0

    iput p3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    iput p4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->needMovableShutter()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->isShown()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    invoke-direct {p0, v8}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    const v5, 0x3c23d70a    # 0.01f

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, p4, v6

    invoke-direct {p0, v5, v6}, Lcom/android/camera/ui/V9SmartShutterButton;->setDisplayPosition(II)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getSmartShutterPosition()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    const/16 v5, 0x78

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_1

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_1
    if-ne v3, v7, :cond_2

    if-ne v4, v7, :cond_2

    move v3, p1

    move v4, p2

    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iput v8, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v6, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public isEnableClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    return-void
.end method

.method public setSmartShutterListener(Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    return-void
.end method
