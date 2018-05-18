.class public abstract Lcom/android/camera/ActivityBase;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/AppController;
.implements Lcom/android/camera/module/loader/SurfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$1;,
        Lcom/android/camera/ActivityBase$2;
    }
.end annotation


# instance fields
.field private lastTouchTrackTime:J

.field protected mActivityPaused:Z

.field private mAppStartTime:J

.field private mApplication:Lcom/android/camera/CameraAppImpl;

.field protected mCameraBrightness:Lcom/android/camera/CameraBrightness;

.field private mCameraErrorShown:Z

.field protected mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mCameraSound:Lcom/android/camera/MiuiCameraSound;

.field private mCloseActivityThread:Ljava/lang/Thread;

.field protected mCurrentModule:Lcom/android/camera/module/Module;

.field private mCurrentSurfaceState:I

.field protected mDebugInfoView:Landroid/widget/TextView;

.field protected mDisplayRotation:I

.field protected mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

.field protected mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mGalleryLocked:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mIsFinishInKeyguard:Z

.field private mIsSwitchingModule:Z

.field private mJumpFlag:I

.field protected mJumpedToGallery:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardSecureLocked:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field protected mNotchView:Landroid/view/View;

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field private mResetGotoGallery:Ljava/lang/Runnable;

.field protected mScreenHint:Lcom/android/camera/ui/ScreenHint;

.field private mSecureUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

.field private mStartFromKeyguard:Z

.field private mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ActivityBase;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/camera/ActivityBase;)Lcom/android/camera/CameraAppImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ActivityBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ActivityBase;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ActivityBase;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->trackStartAppCost(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    iput v2, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    iput v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->lastTouchTrackTime:J

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    new-instance v0, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/ActivityBase$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I

    return-void
.end method

.method private checkGalleryLock()V
    .locals 1

    const-string/jumbo v0, "com.miui.gallery"

    invoke-static {p0, v0}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    return-void
.end method

.method private checkKeyguardFlag()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setStartFromKeyguard(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    const-string/jumbo v1, "ActivityBase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkKeyguard: fromKeyguard="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " keyguardSecureLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " secureUriList is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput-object v4, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "not null"

    goto :goto_1
.end method

.method private clearNotification()V
    .locals 2

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    return-void
.end method

.method private trackStartAppCost(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "capture"

    const-string/jumbo v1, "start_app_cost"

    const/16 v2, 0x32

    invoke-static {p1, p2, v2}, Lcom/android/camera/CameraStatUtil;->round(JI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackStartAppCost wrong time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", start time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addSecureUri(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public couldShowErrorDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public createCameraScreenNail(ZZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v2, :cond_0

    new-instance v0, Lcom/android/camera/ActivityBase$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$4;-><init>(Lcom/android/camera/ActivityBase;)V

    new-instance v1, Lcom/android/camera/ActivityBase$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$5;-><init>(Lcom/android/camera/ActivityBase;)V

    new-instance v2, Lcom/android/camera/CameraScreenNail;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initCameraScreenNail()V

    return-void
.end method

.method public dismissKeyguard()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public getCameraAppImpl()Lcom/android/camera/CameraAppImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getCurrentModule()Lcom/android/camera/module/Module;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object v0
.end method

.method public getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

    return-object v0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method protected getKeyguardFlag()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "StartActivityWhenLocked"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public getScreenHint()Lcom/android/camera/ui/ScreenHint;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    return-object v0
.end method

.method public getSecureUriList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V9SmartShutterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    return-object v0
.end method

.method public getSoundPlayTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->getLastSoundPlayTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    return-object v0
.end method

.method public gotoGallery()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "ActivityBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Uri invalid. uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached()V

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v5, "com.miui.gallery"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "from_MiuiCamera"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v5}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "camera-brightness"

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v6}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "StartActivityWhenLocked"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v5, "com.miui.gallery"

    invoke-static {p0, v5}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "skip_interception"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "SecureUri"

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/camera/module/Module;->enableCameraControls(Z)V

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v5, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->trackGotoGallery()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v5, "ActivityBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "review image fail. uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized hasSurface()Z
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return v1

    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initCameraScreenNail()V
    .locals 5

    const-string/jumbo v2, "ActivityBase"

    const-string/jumbo v3, "initCameraScreenNail"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    :cond_0
    return-void
.end method

.method public isActivityPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    return v0
.end method

.method public isGalleryLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    return v0
.end method

.method public isGotoGallery()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNeedResetGotoGallery()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return v2

    :cond_0
    return v1
.end method

.method public isScanQRCodeIntent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSwitchingModule()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public loadCameraSound(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    :cond_0
    return-void
.end method

.method protected abstract notifyOnFirstFrameArrived(I)V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/module/Module;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setVolumeControlStream(I)V

    new-instance v1, Lcom/android/camera/ui/ScreenHint;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenHint;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    new-instance v1, Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {v1, p0}, Lcom/android/camera/ThumbnailUpdater;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraAppImpl;

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraAppImpl;->addActivity(Landroid/app/Activity;)V

    new-instance v1, Lcom/android/camera/CameraBrightness;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraBrightness;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/ActivityBase$3;

    invoke-direct {v2, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ActivityBase"

    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->removeActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->release()V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayoutChange(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setRenderArea(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    return-void
.end method

.method protected onPause()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->pause()V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput-object v4, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_2
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->clearNotification()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->resume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onPause()V

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v1}, Lcom/android/camera/CameraBrightness;->onPause()V

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->finish()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->saveThumbnailToFile()V

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->cancelTask()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public playCameraSound(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->playSound(I)V

    return-void
.end method

.method protected recordStartTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    return-void
.end method

.method protected releaseCameraScreenNail()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    :cond_0
    return-void
.end method

.method protected resetStartTime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/MiuiCameraSound;

    invoke-direct {v1, p0}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v1}, Lcom/android/camera/CameraBrightness;->onResume()V

    return-void
.end method

.method public setJumpFlag(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return-void
.end method

.method public setSwitchingModule(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showErrorDialog()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    return-void
.end method

.method public startFromKeyguard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    return v0
.end method

.method public startFromSecureKeyguard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    return v0
.end method

.method public declared-synchronized updateSurfaceState(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
