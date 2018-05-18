.class public Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;
.super Ljava/lang/Object;
.source "CameraIndicatorState.java"


# instance fields
.field public mCenterFlag:I

.field public mCurrentAngle:F

.field public mCurrentMinusCircleCenter:I

.field public mCurrentMinusCircleRadius:F

.field public mCurrentRadius:I

.field public mCurrentRayBottom:I

.field public mCurrentRayHeight:I

.field public mCurrentRayWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V
    .locals 1

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    return-void
.end method
