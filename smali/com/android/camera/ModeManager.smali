.class public abstract Lcom/android/camera/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

.field protected mIsCaptureIntent:Z

.field protected mIsFrontCamera:Z

.field protected mIsSimpleMode:Z

.field protected mPreferenceChangedListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field protected mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field protected mSettingView:Lcom/android/camera/ui/SettingScreenView;

.field protected mSettingViewSimple:Lcom/android/camera/ui/SettingPopupView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "activity"
    .parameter "captureIntent"
    .parameter "indicatorClickListener"
    .parameter "preferenceChangedListener"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ModeManager;->mIsSimpleMode:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ModeManager;->mIsFrontCamera:Z

    .line 32
    iput-object p1, p0, Lcom/android/camera/ModeManager;->mActivity:Landroid/app/Activity;

    .line 33
    iput-boolean p2, p0, Lcom/android/camera/ModeManager;->mIsCaptureIntent:Z

    .line 34
    iput-object p3, p0, Lcom/android/camera/ModeManager;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    .line 35
    iput-object p4, p0, Lcom/android/camera/ModeManager;->mPreferenceChangedListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 36
    return-void
.end method


# virtual methods
.method public dismissSettingPopup()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->dismissSettingPopup()Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableSettingView(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 67
    return-void
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceGroup()Lcom/android/camera/PreferenceGroup;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ModeManager;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method public getSettingView()Lcom/android/camera/ui/SettingView;
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/camera/ModeManager;->mIsSimpleMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ModeManager;->mSettingViewSimple:Lcom/android/camera/ui/SettingPopupView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ModeManager;->mSettingView:Lcom/android/camera/ui/SettingScreenView;

    goto :goto_0
.end method

.method protected initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "frontCamera"
    .parameter "mode"
    .parameter "parameters"
    .parameter "isSecure"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ModeManager;->mSettingView:Lcom/android/camera/ui/SettingScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ModeManager;->mSettingViewSimple:Lcom/android/camera/ui/SettingPopupView;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ModeManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingScreenView;

    iput-object v0, p0, Lcom/android/camera/ModeManager;->mSettingView:Lcom/android/camera/ui/SettingScreenView;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ModeManager;->mSettingView:Lcom/android/camera/ui/SettingScreenView;

    iget-object v1, p0, Lcom/android/camera/ModeManager;->mPreferenceChangedListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingScreenView;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ModeManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingPopupView;

    iput-object v0, p0, Lcom/android/camera/ModeManager;->mSettingViewSimple:Lcom/android/camera/ui/SettingPopupView;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ModeManager;->mSettingViewSimple:Lcom/android/camera/ui/SettingPopupView;

    iget-object v1, p0, Lcom/android/camera/ModeManager;->mPreferenceChangedListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingPopupView;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 46
    :cond_1
    iput-boolean p2, p0, Lcom/android/camera/ModeManager;->mIsSimpleMode:Z

    .line 47
    iput-boolean p1, p0, Lcom/android/camera/ModeManager;->mIsFrontCamera:Z

    .line 48
    invoke-virtual {p0, p3}, Lcom/android/camera/ModeManager;->loadCameraPreferences(Landroid/hardware/Camera$Parameters;)V

    .line 49
    invoke-virtual {p0, p4}, Lcom/android/camera/ModeManager;->updateSettingScreen(Z)V

    .line 51
    return-void
.end method

.method public isSimpleMode()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/camera/ModeManager;->mIsSimpleMode:Z

    return v0
.end method

.method protected abstract loadCameraPreferences(Landroid/hardware/Camera$Parameters;)V
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    .line 93
    .local v0, v:Lcom/android/camera/ui/SettingView;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingView;->overrideSettings([Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->reloadPreferences()V

    .line 71
    return-void
.end method

.method protected supportHDR()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract updateSettingScreen(Z)V
.end method
