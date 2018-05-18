.class public Lcom/android/camera/snap/SnapService;
.super Landroid/app/Service;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapService$1;,
        Lcom/android/camera/snap/SnapService$InnerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/snap/SnapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->destroy()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/snap/SnapService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapService$InnerHandler;-><init>(Lcom/android/camera/snap/SnapService;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    new-instance v0, Lcom/android/camera/snap/SnapService$1;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapService$1;-><init>(Lcom/android/camera/snap/SnapService;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private destroy()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->unregisterPowerKeyReceiver()V

    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->destroy()V

    return-void
.end method

.method private registerPowerKeyReceiver()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/snap/SnapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    :cond_0
    return-void
.end method

.method private triggerWatchdog()V
    .locals 4

    const/16 v1, 0x65

    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/snap/SnapService$InnerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private unregisterPowerKeyReceiver()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/snap/SnapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->destroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    sget-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start service"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->triggerWatchdog()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/snap/SnapTrigger;->init(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    const-string/jumbo v1, "key_code"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "key_action"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "key_event_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->registerPowerKeyReceiver()V

    :cond_0
    return-void
.end method
