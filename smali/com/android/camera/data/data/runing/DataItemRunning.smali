.class public Lcom/android/camera/data/data/runing/DataItemRunning;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemRunning.java"


# static fields
.field public static final DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;


# instance fields
.field private componentRunningTiltValue:Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

.field private mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

.field private mComponentRunningSceneValue:Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

.field private mComponentRunningTimer:Lcom/android/camera/data/data/runing/ComponentRunningTimer;

.field private mLastUiStyle:I

.field private mUiStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    :goto_0
    sput-object v0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "pref_camera_portrait_mode_key"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mUiStyle:I

    return-void
.end method

.method private reConfigExposureTimeRange(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const-string/jumbo v0, "pref_camera_max_exposure_key"

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v0, "pref_camera_min_exposure_key"

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getMinExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method


# virtual methods
.method public getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    return-object v0
.end method

.method public getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSceneValue:Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSceneValue:Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSceneValue:Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    return-object v0
.end method

.method public getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->componentRunningTiltValue:Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->componentRunningTiltValue:Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->componentRunningTiltValue:Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    return-object v0
.end method

.method public getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningTimer:Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningTimer:Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningTimer:Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    return-object v0
.end method

.method public getLastUiStyle()I
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mLastUiStyle:I

    return v0
.end method

.method public getUiStyle()I
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mUiStyle:I

    return v0
.end method

.method public getVideoSpeed()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_video_speed_fast_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fast"

    return-object v0

    :cond_0
    const-string/jumbo v0, "pref_video_speed_slow_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "slow"

    return-object v0

    :cond_1
    const-string/jumbo v0, "normal"

    return-object v0
.end method

.method public initAfterCameraOpen(ILandroid/hardware/Camera$Parameters;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->init(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->reConfigExposureTimeRange(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public isSwitchOn(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTransient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "camera_running"

    return-object v0
.end method

.method public resetAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getValues()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    return-void
.end method

.method public setUiStyle(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mUiStyle:I

    iput v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mLastUiStyle:I

    iput p1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mUiStyle:I

    return-void
.end method

.method public switchOff(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public switchOn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public triggerSwitchAndGet(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
