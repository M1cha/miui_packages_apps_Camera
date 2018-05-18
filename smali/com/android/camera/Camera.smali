.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$1;,
        Lcom/android/camera/Camera$2;,
        Lcom/android/camera/Camera$3;,
        Lcom/android/camera/Camera$LogThread;,
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$WatchDogThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sCameraSetupScheduler:Lio/reactivex/Scheduler;


# instance fields
.field private cameraSetupConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<",
            "Lcom/android/camera/module/loader/NullHolder",
            "<",
            "Lcom/android/camera/module/BaseModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

.field private mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

.field private mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

.field private mDebugThread:Lcom/android/camera/Camera$LogThread;

.field private mDelayReleaseCamera:Z

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

.field private mLastIgnoreKey:I

.field private mLastKeyEventTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mPortraitNewBieShowing:Z

.field private mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

.field private mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mStartControl:Lcom/android/camera/module/loader/StartControl;

.field private mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

.field private mTick:I

.field private mWatchDog:Ljava/lang/Thread;

.field private final tickerRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/Camera;)Lcom/android/camera/fragment/BaseFragmentDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/Camera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/Camera;->mTick:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/Camera;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/camera/Camera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/Camera;->mTick:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Camera;->onDisplayRotationChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private bindGalleryService()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.gallery.action.BIND_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.gallery"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bindGalleryService error."

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private closeCameraSetup()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private createNewModule(I)Lcom/android/camera/module/Module;
    .locals 4

    invoke-static {p1}, Lcom/android/camera/module/ModuleManager;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid module index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/android/camera/module/Module;->setActivity(Lcom/android/camera/Camera;)V

    iget v1, p0, Lcom/android/camera/Camera;->mOrientation:I

    iget v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/Module;->preTransferOrientation(II)V

    return-object v0
.end method

.method private currentIsMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFromKeyguard()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v2

    :cond_1
    return v2
.end method

.method private isVideoRecording()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-static {v0}, Lcom/android/camera/module/BaseModule;->isModuleRecording(Lcom/android/camera/module/Module;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisplayRotationChanged()V
    .locals 3

    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "RotateHint"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->animateOut(I)V

    :cond_1
    return-void
.end method

.method private removeNotRestoredFragments()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    instance-of v5, v1, Lcom/android/camera/fragment/FragmentBeauty;

    if-nez v5, :cond_1

    instance-of v5, v1, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    if-eqz v5, :cond_0

    :cond_1
    sget-object v5, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove restored fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_3
    return-void
.end method

.method private resumeCamera()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isSwitchingModule()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->isAlive(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->registerProtocol()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/camera/Camera;->mJumpedToGallery:Z

    if-eqz v5, :cond_4

    iput-boolean v7, p0, Lcom/android/camera/Camera;->mJumpedToGallery:Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->onStop()V

    iget-object v5, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->onDestroy()V

    iget-object v5, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v5, v8}, Lcom/android/camera/module/Module;->setActivity(Lcom/android/camera/Camera;)V

    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/module/loader/StartControl;->setLastMode(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;ZZ)Landroid/support/v4/util/Pair;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const v6, 0x7f0a00ea

    invoke-virtual {v5, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v5

    const/16 v6, 0xff3

    if-ne v5, v6, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-ne v3, v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->resumeCurrentMode(I)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I)V

    :cond_7
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/camera/data/provider/DataProvider;->setTimeOut(Z)V

    :cond_8
    const/4 v4, 0x2

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_a
    iget-object v5, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->onResume()V

    return-void
.end method

.method private setTranslucentNavigation(Z)V
    .locals 3

    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method private setupCamera(Lcom/android/camera/module/loader/StartControl;)V
    .locals 11

    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    new-instance v3, Lcom/android/camera/module/loader/FunctionCameraPrepare;

    iget v8, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget v9, p1, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    iget v10, p1, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    iget-object v7, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v7, Lcom/android/camera/module/BaseModule;

    invoke-direct {v3, v8, v9, v10, v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;-><init>(IIILcom/android/camera/module/BaseModule;)V

    new-instance v2, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;

    iget v7, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v2, v7}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;-><init>(I)V

    new-instance v4, Lcom/android/camera/module/loader/FunctionModuleSetup;

    iget v7, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v4, v7}, Lcom/android/camera/module/loader/FunctionModuleSetup;-><init>(I)V

    new-instance v1, Lcom/android/camera/module/loader/FunctionDataSetup;

    iget v7, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v1, v7}, Lcom/android/camera/module/loader/FunctionDataSetup;-><init>(I)V

    new-instance v6, Lcom/android/camera/module/loader/FunctionUISetup;

    iget v7, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v6, v7}, Lcom/android/camera/module/loader/FunctionUISetup;-><init>(I)V

    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v7

    invoke-static {v7}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v7

    sget-object v8, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v7, v8}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v7

    invoke-virtual {v7, v3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v7

    invoke-virtual {v7, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/Camera;->mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-static {v7}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v7

    sget-object v8, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v7, v8}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    new-instance v7, Lcom/android/camera/Camera$4;

    invoke-direct {v7, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v5, v7}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object v7

    invoke-virtual {v7, v4}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v7

    invoke-virtual {v7, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/camera/module/loader/FunctionUISetup;->getWorkThread()Lio/reactivex/Scheduler;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {v7, v8}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private shouldReleaseLater()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->shouldReleaseLater()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDebug()V
    .locals 2

    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/android/camera/Camera$LogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$LogThread;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$LogThread;->start()V

    :cond_1
    return-void
.end method

.method private switchEdgeFingerMode(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$WatchDogThread;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private unbindGalleryService()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public changeRequestOrientation()V
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0, p1}, Lcom/android/camera/ProximitySensorLock;->intercept(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v1}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public getCapturePosture()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result v0

    return v0
.end method

.method public getCurrentModuleIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method public getImplFactory()Lcom/android/camera/module/impl/ImplFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    return-object v0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object v0
.end method

.method public isCurrentModuleAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isStable()Z

    move-result v0

    return v0
.end method

.method public markPortraitNewBieDestroyed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPortraitNewBieShowing:Z

    return-void
.end method

.method protected notifyOnFirstFrameArrived(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/animation/AnimationComposite;->notifyAfterFirstFrameArrived(I)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, v3}, Lcom/android/camera/module/Module;->enableCameraControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_front_camera_first_use_hint_shown_key"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_front_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showNewBie(I)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate start"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->recordStartTime()V

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, v1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f02a7

    invoke-static {p0, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isInMultiWindowMode call finish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_0
    const-string/jumbo v0, "android.media.action.XIAOAI_CONTROL"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->isActionFromXiaoAi(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extras.MIUI_CAMERA_FACING"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extras.CAMERA_MODULE"

    const/16 v4, 0xa3

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v2, "\u524d\u540e\u6444"

    if-nez v8, :cond_5

    const-string/jumbo v0, "\u540e\u6444"

    :goto_0
    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "\u6a21\u5f0f"

    invoke-static {v11}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "counter"

    const-string/jumbo v2, "voice_assist_call_event"

    invoke-static {v0, v2, v10}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->removeNotRestoredFragments()V

    :cond_2
    new-instance v0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v7

    move-object v2, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/Module;ZLcom/android/camera/CameraScreenNail;Landroid/content/Intent;Landroid/os/Handler;Z)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v2, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    const/4 v9, 0x1

    :goto_1
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/android/camera/ProximitySensorLock;

    invoke-direct {v0, p0}, Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->startWatching()V

    :cond_3
    sget-boolean v0, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/view/Window;->addExtraFlags(I)V

    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mNotchView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/Camera;->mNotchView:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/android/camera/Util;->sNotchHeight:I

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugInfoView:Landroid/widget/TextView;

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V9EdgeShutterView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V9SmartShutterButton;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    iget-object v0, p0, Lcom/android/camera/Camera;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V9SmartShutterButton;->setSmartShutterListener(Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;)V

    invoke-virtual {p0, v3, v3}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    new-instance v0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;-><init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->registerProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/android/camera/permission/PermissionManager;->requestCameraRuntimePermissions(Landroid/app/Activity;)Z

    :cond_4
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    new-instance v0, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    new-instance v1, Lcom/android/camera/storage/ImageSaver;

    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    :goto_3
    invoke-direct {v1, p0, v2, v0}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0, v12}, Lcom/android/camera/Camera;->setTranslucentNavigation(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/EffectChangedListenerController;->setHoldKey(I)V

    invoke-direct {p0}, Lcom/android/camera/Camera;->showDebug()V

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string/jumbo v0, "\u524d\u6444"

    goto/16 :goto_0

    :cond_6
    invoke-super {p0, v1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_8
    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->isNonUI()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "counter"

    const-string/jumbo v1, "pocket_mode_enter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "\u65b9\u5f0f"

    aput-object v4, v2, v3

    const-string/jumbo v3, "NonUI\u97f3\u91cf\u952e"

    aput-object v3, v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraStatUtil;->track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Finish from NonUI mode."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_9
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    goto/16 :goto_2

    :cond_a
    move v0, v12

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V9SmartShutterButton;->setSmartShutterListener(Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->onDestroy()V

    :cond_3
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->onDestroy(Lcom/android/camera/ActivityBase;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/EffectChangedListenerController;->removeEffectChangedListenerMap(I)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera$LogThread;->setRunFlag(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->destroy()V

    :cond_5
    sget-object v0, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onEdgeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const-wide/16 v4, 0x96

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v7, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_5

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v0, :cond_1

    iput v7, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    return v6

    :sswitch_0
    return v6

    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_6
    move v0, v6

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x50 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v1, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public onLifeAlive()V
    .locals 6

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "onLifeAlive module 0x%x, need anim %b, need blur %b need reconfig %b reset type %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v4, v4, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v4, v4, Lcom/android/camera/module/loader/StartControl;->mNeedViewAnimation:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v4, v4, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v4, v4, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v4, v4, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public onLifeDestroy(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLifeDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLifeStart(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLifeStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLifeStop(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLifeStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onModeSelected(Lcom/android/camera/module/loader/StartControl;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "onModeSelected from 0x%x to 0x%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    iget v6, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPortraitNewBieShowing:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "PortraitHint"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    if-eqz v8, :cond_0

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PortraitNewbieDialogFragment already popup, ignore this mode switch"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    iget-boolean v0, p1, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget-boolean v3, p1, Lcom/android/camera/module/loader/StartControl;->mNeedViewAnimation:Z

    invoke-virtual {v0, v5, v2, v3, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;IZLcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/animation/AnimationComposite;->setClickEnable(Z)V

    :cond_2
    invoke-virtual {p0, v12}, Lcom/android/camera/Camera;->setSwitchingModule(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v7, p1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    const/16 v0, 0xa0

    iput v0, p1, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    iget-boolean v0, p1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleCopyTexture()V

    :cond_4
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->setCurrentModule(Lcom/android/camera/module/Module;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v1, Lcom/android/camera/module/BaseModule;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    :cond_5
    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->createNewModule(I)Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget v3, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->init(Landroid/support/v4/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/Camera;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    const/16 v3, 0xff6

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    :goto_0
    return-void

    :cond_6
    new-instance v0, Lcom/android/camera/Camera$6;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/module/BaseModule;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v9

    new-instance v0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;

    iget-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    iget-boolean v3, p1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/Module;ZLcom/android/camera/CameraScreenNail;Landroid/content/Intent;Landroid/os/Handler;Z)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v2, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v11

    invoke-virtual {v9, v11}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v10

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget-boolean v3, p1, Lcom/android/camera/module/loader/StartControl;->mNeedViewAnimation:Z

    invoke-virtual {v0, v10, v2, v3, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;IZLcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNewIntent start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mJumpedToGallery:Z

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/camera/Camera;->resumeCamera()V

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNewIntent end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager;->holdException(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetStartTime()V

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->setSwitchingModule(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPause()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onActivityPause()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    invoke-static {}, Lcom/android/camera/CameraStat;->recordPageEnd()V

    invoke-direct {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    :cond_3
    :goto_0
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/Camera;->unbindGalleryService()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/data/backup/DataBackUp;->backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager;->setStashParameters(Landroid/hardware/Camera$Parameters;)V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraHolder;->release(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->releaseCameraScreenNail()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->getCameraRuntimePermissionRequestCode()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onResume start"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->onResume()V

    :cond_1
    const-string/jumbo v0, "CameraActivity"

    invoke-static {p0, v0}, Lcom/android/camera/CameraStat;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    invoke-direct {p0}, Lcom/android/camera/Camera;->resumeCamera()V

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    iget-object v2, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/Camera;->bindGalleryService()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onSmartShutterClick()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    if-eqz v1, :cond_0

    const v2, 0x7f0a00ea

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xf1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v2, Lcom/android/camera/module/BaseModule;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/camera/module/BaseModule;->onShutterButtonClick(I)V

    :cond_1
    return-void
.end method

.method public onSmartShutterFocus(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/BaseModule;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/module/BaseModule;->onShutterButtonFocus(ZI)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraHolder;->release(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->releaseCameraScreenNail()V

    :cond_1
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged hasFocus->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->checkActivityOrientation()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->register()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->forceDestroy()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->create(I)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/EffectChangedListenerController;->setHoldKey(I)V

    new-instance v2, Lcom/android/camera/module/impl/ImplFactory;

    invoke-direct {v2}, Lcom/android/camera/module/impl/ImplFactory;-><init>()V

    iput-object v2, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    iget-object v2, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v3, v6, [I

    const/16 v4, 0xab

    aput v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v3

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;ZZ)Landroid/support/v4/util/Pair;

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/camera/data/provider/DataProvider;->setTimeOut(Z)V

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method protected releaseCameraScreenNail()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->releaseCameraScreenNail()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    :cond_0
    return-void
.end method

.method public resumeCurrentMode(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/Camera;->setSwitchingModule(Z)V

    new-instance v1, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;

    invoke-direct {v1, p1}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;-><init>(I)V

    new-instance v2, Lcom/android/camera/module/loader/FunctionResumeModule;

    invoke-direct {v2, p1}, Lcom/android/camera/module/loader/FunctionResumeModule;-><init>(I)V

    iget-object v4, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v4, Lcom/android/camera/module/BaseModule;

    invoke-static {v4}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v4

    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v4

    sget-object v5, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/Camera;->mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-static {v4}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v4

    sget-object v5, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    new-instance v4, Lcom/android/camera/Camera$5;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v3, v4}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v4

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setBlurFlag(Z)V
    .locals 3

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showNewBie(I)Z
    .locals 4

    const v2, 0x7f110036

    const/4 v1, 0x2

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    new-instance v0, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "PortraitHint"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPortraitNewBieShowing:Z

    return v3

    :pswitch_1
    new-instance v0, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "RotateHint"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public switchCamera(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isSwitchingModule()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v5, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "switchCamera start switching"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->setSwitchingModule(Z)V

    new-instance v4, Lcom/android/camera/module/loader/FunctionSwitchPrepare;

    const/4 v5, 0x5

    invoke-direct {v4, p1, v5}, Lcom/android/camera/module/loader/FunctionSwitchPrepare;-><init>(II)V

    new-instance v0, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;

    invoke-direct {v0, p1}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;-><init>(I)V

    new-instance v3, Lcom/android/camera/module/loader/FunctionSwitchModule;

    invoke-direct {v3, p1}, Lcom/android/camera/module/loader/FunctionSwitchModule;-><init>(I)V

    new-instance v1, Lcom/android/camera/module/loader/FunctionDataSetup;

    invoke-direct {v1, p1}, Lcom/android/camera/module/loader/FunctionDataSetup;-><init>(I)V

    new-instance v2, Lcom/android/camera/module/loader/FunctionUISetup;

    invoke-direct {v2, p1}, Lcom/android/camera/module/loader/FunctionUISetup;-><init>(I)V

    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/camera/Camera;->currentIsMainThread()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v5

    sget-object v6, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/module/loader/FunctionUISetup;->getWorkThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    invoke-virtual {v5, v3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v5

    invoke-virtual {v5, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->getWorkThread()Lio/reactivex/Scheduler;

    move-result-object v5

    goto :goto_0
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->unRegisterProtocol()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAll()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->unRegisterProtocol()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->destroyAll(I)V

    return-void
.end method

.method public declared-synchronized updateSurfaceState(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->updateSurfaceState(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->onGlSurfaceCreated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
