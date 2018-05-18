.class public Lcom/android/camera/ui/V6GestureRecognizer;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;
    }
.end annotation


# static fields
.field private static sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;


# instance fields
.field private final MIN_DETECT_DISTANCE:I

.field private final mActivity:Lcom/android/camera/Camera;

.field private final mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

.field private mCurrentModule:Lcom/android/camera/module/Module;

.field private mDistanceX:F

.field private mDistanceY:F

.field private mEdgeGesture:I

.field private final mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

.field private mGesture:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInScaling:Z

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleDetectorEnable:Z

.field private mScrollDirection:I

.field private mScrolled:Z

.field private mTouchDown:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->MIN_DETECT_DISTANCE:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/V6GestureRecognizer;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/V6GestureRecognizer;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/V6GestureRecognizer;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/V6GestureRecognizer;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/V6GestureRecognizer;->getMoveVector(IIII)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isCurrentModuleAlive()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    iput-boolean v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    move-object v0, p1

    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->MIN_DETECT_DISTANCE:I

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;)V

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/camera/ui/EdgeGestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;)V

    invoke-direct {v0, v1}, Lcom/android/camera/ui/EdgeGestureDetector;-><init>(Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    return-void
.end method

.method private checkControlView(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa6

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEffectViewVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0a00d5

    invoke-interface {v2, v3, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEffectViewMoved()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3

    :cond_1
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEffectViewMoved()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    :cond_2
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isIndicatorVisible(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEvAdjusted(Z)Z

    move-result v0

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isDragged()Z

    move-result v1

    const v3, 0x7f0a00d2

    invoke-interface {v2, v3, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    invoke-interface {v2, v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEvAdjusted(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isDragged()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    goto :goto_0
.end method

.method private couldNotifyGesture(Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isCurrentModuleAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;
    .locals 2

    const-class v1, Lcom/android/camera/ui/V6GestureRecognizer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v0, v0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    if-eq p0, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6GestureRecognizer;-><init>(Lcom/android/camera/ActivityBase;)V

    sput-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    :cond_1
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMoveVector(IIII)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sub-int v1, p1, p3

    iput v1, v0, Landroid/graphics/Point;->x:I

    sub-int v1, p2, p4

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private isCurrentModuleAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isDeparted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGestureDetecting(Z)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    :goto_0
    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static onDestroy(Lcom/android/camera/ActivityBase;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v0, v0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    if-ne v0, p0, :cond_0

    sput-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentGesture()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public getGestureOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public isGestureDetecting()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string/jumbo v0, "CameraGestureRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEdgeTouchEvent mGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " maskAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/EdgeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "CameraGestureRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent mGesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_7

    iput-boolean v6, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    :cond_3
    const-string/jumbo v1, "CameraGestureRecognizer"

    const-string/jumbo v2, "set to detector"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v6, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->checkControlView(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_6

    :cond_5
    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    :cond_6
    return v0

    :cond_7
    iget-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    if-nez v1, :cond_8

    return v4

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v7, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v6, :cond_1

    :cond_9
    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    goto :goto_0

    :cond_a
    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    goto :goto_1
.end method

.method public setCurrentModule(Lcom/android/camera/module/Module;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    return-void
.end method

.method public setGesture(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return-void
.end method

.method public setScaleDetectorEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    return-void
.end method
