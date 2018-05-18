.class public Lcom/android/camera/module/loader/StartControl;
.super Ljava/lang/Object;
.source "StartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/StartControl$ResetType;,
        Lcom/android/camera/module/loader/StartControl$StartDelay;
    }
.end annotation


# instance fields
.field public mLastMode:I

.field public mNeedBlurAnimation:Z

.field public mNeedReConfigureCamera:Z

.field public mNeedViewAnimation:Z

.field public mResetType:I

.field public mStartDelay:I

.field public mTargetMode:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/loader/StartControl;->mStartDelay:I

    iput v1, p0, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    iput-boolean v1, p0, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    iput p1, p0, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    return-void
.end method

.method public static final create(I)Lcom/android/camera/module/loader/StartControl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/StartControl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/StartControl;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public setLastMode(I)Lcom/android/camera/module/loader/StartControl;
    .locals 0

    iput p1, p0, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    return-object p0
.end method

.method public setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    return-object p0
.end method

.method public setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    return-object p0
.end method

.method public setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/loader/StartControl;->mNeedViewAnimation:Z

    return-object p0
.end method

.method public setResetType(I)Lcom/android/camera/module/loader/StartControl;
    .locals 0

    iput p1, p0, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    return-object p0
.end method

.method public setStartDelay(I)Lcom/android/camera/module/loader/StartControl;
    .locals 0

    iput p1, p0, Lcom/android/camera/module/loader/StartControl;->mStartDelay:I

    return-object p0
.end method
