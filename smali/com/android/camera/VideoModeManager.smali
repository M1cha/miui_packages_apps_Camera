.class public Lcom/android/camera/VideoModeManager;
.super Lcom/android/camera/ModeManager;
.source "VideoModeManager.java"


# instance fields
.field private mSupportVideoHDR:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "activity"
    .parameter "captureIntent"
    .parameter "indicatorClickListener"
    .parameter "preferenceChangedListener"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ModeManager;-><init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModeManager;->mSupportVideoHDR:Z

    .line 25
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/camera/VideoModeManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 65
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 69
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected loadCameraPreferences(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 32
    iget-boolean v7, p0, Lcom/android/camera/VideoModeManager;->mIsFrontCamera:Z

    if-eqz v7, :cond_1

    .line 33
    .local v1, cameraId:I
    :goto_0
    new-instance v4, Lcom/android/camera/CameraSettings;

    iget-object v6, p0, Lcom/android/camera/VideoModeManager;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v7

    invoke-direct {v4, v6, p1, v1, v7}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 36
    .local v4, settings:Lcom/android/camera/CameraSettings;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 37
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    const-string v6, "getSupportedVideoHDRModes"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 38
    .local v5, videoHDR:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 39
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 40
    .local v3, modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 41
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/VideoModeManager;->mSupportVideoHDR:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    .end local v3           #modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #videoHDR:Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/camera/VideoModeManager;->mIsSimpleMode:Z

    if-eqz v6, :cond_2

    const v6, 0x7f06000a

    :goto_2
    invoke-virtual {v4, v6}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/VideoModeManager;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoModeManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 51
    return-void

    .end local v1           #cameraId:I
    .end local v4           #settings:Lcom/android/camera/CameraSettings;
    :cond_1
    move v1, v6

    .line 32
    goto :goto_0

    .line 49
    .restart local v1       #cameraId:I
    .restart local v4       #settings:Lcom/android/camera/CameraSettings;
    :cond_2
    const v6, 0x7f060009

    goto :goto_2

    .line 46
    :catch_0
    move-exception v6

    goto :goto_1

    .line 45
    :catch_1
    move-exception v6

    goto :goto_1

    .line 44
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method protected supportHDR()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/VideoModeManager;->mSupportVideoHDR:Z

    return v0
.end method

.method protected updateSettingScreen(Z)V
    .locals 5
    .parameter "isSecure"

    .prologue
    .line 73
    iget-boolean v1, p0, Lcom/android/camera/VideoModeManager;->mIsFrontCamera:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModeManager;->mIsSimpleMode:Z

    invoke-static {v1, p1}, Lcom/android/camera/CameraSettings;->getVideoFrontSettingKeys(ZZ)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, indicatorKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModeManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/VideoModeManager;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/ui/SettingView;->initializeSettingScreen(Lcom/android/camera/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V

    .line 78
    return-void

    .line 73
    .end local v0           #indicatorKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModeManager;->mIsSimpleMode:Z

    iget-boolean v2, p0, Lcom/android/camera/VideoModeManager;->mSupportVideoHDR:Z

    invoke-static {v1, p1, v2}, Lcom/android/camera/CameraSettings;->getVideoSettingKeys(ZZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
