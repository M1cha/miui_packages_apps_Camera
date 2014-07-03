.class public Lcom/android/camera/CameraModeManager;
.super Lcom/android/camera/ModeManager;
.source "CameraModeManager.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "captureIntent"    # Z
    .param p3, "indicatorClickListener"    # Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;
    .param p4, "preferenceChangedListener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ModeManager;-><init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .param p1, "frontCamera"    # Z
    .param p2, "mode"    # Z
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p4, "isSecure"    # Z

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ModeManager;->initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V

    .line 24
    iget-boolean v0, p0, Lcom/android/camera/CameraModeManager;->mIsCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/camera/CameraModeManager;->mSettingView:Lcom/android/camera/ui/SettingScreenView;

    const-string v1, "pref_camera_panoramamode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingScreenView;->enableIndicator(Ljava/lang/String;Z)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/CameraModeManager;->mSettingViewSimple:Lcom/android/camera/ui/SettingPopupView;

    const-string v1, "pref_camera_panoramamode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupView;->setEnabled(Ljava/lang/String;Z)V

    .line 28
    :cond_0
    return-void
.end method

.method protected loadCameraPreferences(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 31
    iget-boolean v2, p0, Lcom/android/camera/CameraModeManager;->mIsFrontCamera:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 32
    .local v0, "cameraId":I
    :goto_0
    new-instance v1, Lcom/android/camera/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/CameraModeManager;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 34
    .local v1, "settings":Lcom/android/camera/CameraSettings;
    iget-boolean v2, p0, Lcom/android/camera/CameraModeManager;->mIsSimpleMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f060004

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraModeManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 36
    return-void

    .line 31
    .end local v0    # "cameraId":I
    .end local v1    # "settings":Lcom/android/camera/CameraSettings;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    .restart local v0    # "cameraId":I
    .restart local v1    # "settings":Lcom/android/camera/CameraSettings;
    :cond_1
    const v2, 0x7f060003

    goto :goto_1
.end method

.method protected updateSettingScreen(Z)V
    .locals 5
    .param p1, "isSecure"    # Z

    .prologue
    .line 39
    iget-boolean v1, p0, Lcom/android/camera/CameraModeManager;->mIsFrontCamera:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CameraModeManager;->mIsSimpleMode:Z

    invoke-static {v1, p1}, Lcom/android/camera/CameraSettings;->getCameraFrontSettingKeys(ZZ)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "indicatorKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/CameraModeManager;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraModeManager;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/ui/SettingView;->initializeSettingScreen(Lcom/android/camera/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V

    .line 44
    return-void

    .line 39
    .end local v0    # "indicatorKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/CameraModeManager;->mIsSimpleMode:Z

    invoke-static {v1, p1}, Lcom/android/camera/CameraSettings;->getCameraSettingKeys(ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
