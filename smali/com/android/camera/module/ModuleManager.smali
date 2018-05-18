.class public Lcom/android/camera/module/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# static fields
.field private static sCurrentModuleIndex:I

.field private static sInstance:Lcom/android/camera/module/ModuleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    new-instance v0, Lcom/android/camera/module/ModuleManager;

    invoke-direct {v0}, Lcom/android/camera/module/ModuleManager;-><init>()V

    sput-object v0, Lcom/android/camera/module/ModuleManager;->sInstance:Lcom/android/camera/module/ModuleManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveModuleIndex()I
    .locals 1

    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    return v0
.end method

.method private static getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/camera_adapter/CameraPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraPadOne;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/camera_adapter/CameraLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraLC;-><init>()V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/camera/camera_adapter/CameraNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraNv;-><init>()V

    return-object v0

    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraMTK;-><init>()V

    return-object v0

    :cond_4
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    return-object v0
.end method

.method public static getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/module/UDCFPortraitModule;

    invoke-direct {v0}, Lcom/android/camera/module/UDCFPortraitModule;-><init>()V

    return-object v0

    :cond_0
    :pswitch_2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/android/camera/module/FunModule;

    invoke-direct {v0}, Lcom/android/camera/module/FunModule;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {v0}, Lcom/android/camera/module/MorphoPanoramaModule;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/camera_adapter/VideoQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoQcom;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/camera_adapter/VideoLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoLC;-><init>()V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/camera_adapter/VideoNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoNv;-><init>()V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/camera/camera_adapter/VideoMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoMTK;-><init>()V

    return-object v0

    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/camera/camera_adapter/VideoPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoPadOne;-><init>()V

    return-object v0

    :cond_4
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-object v0
.end method

.method public static isCameraModule()Z
    .locals 2

    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFunModule()Z
    .locals 2

    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isManualModule()Z
    .locals 2

    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPanoramaModule()Z
    .locals 2

    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortraitModule()Z
    .locals 2

    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSquareModule()Z
    .locals 2

    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoModule()Z
    .locals 2

    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setActiveModuleIndex(I)V
    .locals 0

    sput p0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    return-void
.end method
