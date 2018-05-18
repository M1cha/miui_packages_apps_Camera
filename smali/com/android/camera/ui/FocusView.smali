.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$1;,
        Lcom/android/camera/ui/FocusView$2;,
        Lcom/android/camera/ui/FocusView$CenterFlag;,
        Lcom/android/camera/ui/FocusView$CursorState;,
        Lcom/android/camera/ui/FocusView$ExposureViewListener;,
        Lcom/android/camera/ui/FocusView$ViewState;
    }
.end annotation


# static fields
.field private static final GAP_NUM:F

.field public static final MAX_SLIDE_DISTANCE:I

.field private static final TRIANGLE_BASE_DIS:I


# instance fields
.field private final MIN_DRAG_DISTANCE:I

.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBeingDragged:Z

.field private mBeingEvAdjusted:Z

.field private mBottomRelative:I

.field private mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

.field private mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mCaptured:Z

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentMode:I

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDragMode:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field private mEVCaptureRatio:F

.field private mEvValue:F

.field private mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mExposureX:I

.field private mExposureY:I

.field private mFailTime:J

.field private mFocusMoving:Z

.field private mFocusX:I

.field private mFocusY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDown:Z

.field private mIsDraw:Z

.field private mIsEvAdjustable:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mMode:I

.field private mOrientation:I

.field private mRotation:F

.field private mScrollDistanceY:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mWidth:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/ui/FocusView;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/camera/ui/FocusView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/ui/FocusView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/ui/FocusView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/ui/FocusView;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/FocusView;FFF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetCenter()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "camera_exposure_compensation_steps_num"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const v0, 0x42dc999a    # 110.3f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    new-instance v2, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v2, p1

    check-cast v2, Lcom/android/camera/Camera;

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int v2, v1, v1

    iput v2, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    return-void
.end method

.method private calculateAttribute()V
    .locals 11

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v0

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v2

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    if-eqz v1, :cond_5

    :goto_1
    iput v1, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    :goto_2
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    return-void

    :pswitch_1
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v3, v6, v4

    sub-float v4, v7, v2

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    mul-float/2addr v4, v6

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3f69fbe7    # 0.914f

    mul-float/2addr v5, v3

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v3

    const v6, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_1
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v4, v8

    mul-float v3, v6, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    mul-float v4, v0, v3

    sub-float v5, v7, v3

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float v4, v0, v3

    sub-float v5, v7, v3

    sub-float/2addr v4, v5

    mul-float/2addr v4, v10

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    sub-float v4, v7, v3

    mul-float/2addr v4, v10

    add-float/2addr v4, v9

    mul-float v5, v6, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    const/4 v1, 0x3

    goto/16 :goto_0

    :pswitch_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v3, v6, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    sub-float v4, v7, v3

    mul-float/2addr v4, v2

    sub-float/2addr v4, v3

    mul-float/2addr v4, v6

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    sub-float v4, v7, v3

    mul-float/2addr v4, v2

    sub-float/2addr v4, v3

    mul-float/2addr v4, v10

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    mul-float v4, v10, v3

    add-float/2addr v4, v9

    mul-float v5, v6, v2

    sub-float v6, v7, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v4, v8

    mul-float v3, v6, v4

    sub-float v4, v7, v0

    mul-float/2addr v4, v3

    mul-float/2addr v4, v6

    const/high16 v5, 0x41000000    # 8.0f

    sub-float v4, v5, v4

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    sub-float v5, v7, v3

    const v6, 0x3f69fbe7    # 0.914f

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    sub-float v5, v7, v3

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    const v6, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    const/4 v1, 0x4

    goto/16 :goto_0

    :pswitch_3
    move v3, v0

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v5

    if-ge v4, v5, :cond_3

    mul-float v4, v6, v0

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_3
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    mul-float v4, v6, v0

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float v4, v10, v0

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    mul-float v4, v6, v0

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    const/4 v1, 0x3

    goto/16 :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    :goto_3
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1

    :cond_6
    if-eqz v1, :cond_7

    :goto_4
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_2

    :cond_7
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private clearMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getCurrentAngle()I
    .locals 9

    const/4 v8, 0x3

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v5, 0x168

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v2, v8, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    div-int v0, v2, v3

    :cond_0
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int v1, v2, v3

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v1, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    mul-int/lit16 v2, v2, 0x168

    sget v3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    div-int v0, v2, v3

    :cond_3
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-ne v2, v8, :cond_5

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v0, v2

    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v7

    float-to-int v0, v2

    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0
.end method

.method private getItemByCoordinate()I
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    return v0
.end method

.method private getItemRatio(I)F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    sub-float v1, v0, v3

    mul-float v0, v4, v1

    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, v4

    goto :goto_0
.end method

.method private handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v1, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v2, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v11, :cond_3

    :cond_0
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_8

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    :cond_2
    :goto_1
    return v12

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v9, :cond_5

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v0, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    :cond_4
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v10, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v4, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v4, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    :cond_7
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v10, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    sub-float v6, v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    sub-float v7, v2, v0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    if-nez v0, :cond_c

    const/4 v8, 0x0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_b

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float v8, v0, v3

    :cond_a
    :goto_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_c

    return v12

    :cond_b
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_a

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float v8, v0, v3

    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v9, :cond_d

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-eq v0, v9, :cond_d

    invoke-direct {p0, v10}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->trackSplitMode()V

    :cond_d
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_10

    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int v0, v6

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    float-to-int v0, v7

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-nez v0, :cond_e

    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    :cond_e
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    return v9

    :cond_10
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_f

    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int v0, v6

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    float-to-int v0, v7

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateExposureArea()V

    goto :goto_3
.end method

.method private isInCircle(FFF)Z
    .locals 6

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isInCircle(FFFFF)Z
    .locals 6

    sub-float v2, p1, p3

    sub-float v3, p2, p4

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v4, p5

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isStableStart()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result v0

    return v0
.end method

.method private processParameterIfNeeded(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 0

    return-void
.end method

.method private reset(I)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    return-void
.end method

.method private resetCenter()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    :cond_2
    return-void
.end method

.method private resetEvValue()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->reset()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->reset()V

    return-void
.end method

.method private setCenter(II)V
    .locals 1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    :cond_1
    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 3

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_1
    return-void
.end method

.method private setDraw(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return-void
.end method

.method private setMode(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "manual"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x3

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v1, :cond_2

    if-ne p1, v5, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    :cond_2
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-ne p1, v5, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v5, :cond_3

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v3, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v2, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    goto :goto_1
.end method

.method private setTouchDown()V
    .locals 2

    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    return-void
.end method

.method private startAnimation()V
    .locals 3

    const/4 v2, 0x7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopEvAdjust()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    :cond_0
    return-void
.end method

.method private trackEvAdjusted()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v2, "\u524d\u540e\u6444"

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u524d\u6444"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "ev_adjusted"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackSplitMode()V
    .locals 2

    const-string/jumbo v0, "counter"

    const-string/jumbo v1, "manual_split_mode"

    invoke-static {v0, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateEV()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    goto :goto_0
.end method

.method private updateExposureArea()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;->onMeteringAreaChanged(II)V

    :cond_0
    return-void
.end method

.method private updateFocusArea()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;->onFocusAreaChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "clear..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public clear(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    return-void
.end method

.method public isDragged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    return v0
.end method

.method public isEvAdjusted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEvAdjustedTime()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v4, 0x5dc

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualSplitMode()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v3, :cond_5

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v3

    if-ne v1, v3, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x6

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-eq v2, v7, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v2

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_0
    return v6

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xa1

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v3, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v5, v2, :cond_3

    return v6

    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_4

    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v3, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v5, v2, :cond_9

    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->trackEvAdjusted()V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz v2, :cond_7

    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v2, v7, :cond_8

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateFocusArea()V

    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    :cond_8
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    iput v6, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v2, :cond_9

    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_9
    if-nez v1, :cond_a

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_a
    return v3
.end method

.method public reInit()V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "FocusView"

    const-string/jumbo v6, "onCameraOpen>> reInit"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v6, Lcom/android/camera/ui/FloatSlideAdapter;

    sget v5, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v6, v3, v2, v5}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v6, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    const-string/jumbo v5, "FocusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraOpen: adapter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v5, :cond_4

    return-void

    :cond_3
    sub-int v5, v2, v3

    int-to-float v5, v5

    sget v7, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    div-float/2addr v5, v7

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    packed-switch v5, :pswitch_data_0

    invoke-direct {p0, v8}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/FocusView;->setEvAdjustable(Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_5

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    return-void

    :pswitch_0
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    goto :goto_1

    :cond_5
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_0
    .end packed-switch
.end method

.method public releaseListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 3

    const/16 v1, 0x8

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setFocusType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setOrientation(I)V

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    int-to-float v3, p2

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView;->setPivotX(F)V

    int-to-float v3, p3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView;->setPivotY(F)V

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v3, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v3, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v3, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    iput v1, v3, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->resetEvValue()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    :cond_0
    return-void
.end method

.method public showFail()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showFail..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    :cond_0
    return-void
.end method

.method public showStart()V
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showStart..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startTouchDownAnimation()V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showSuccess()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showSuccess..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :goto_0
    return-void

    :cond_2
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    goto :goto_0
.end method

.method public updateFocusMode()V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    return-void
.end method
