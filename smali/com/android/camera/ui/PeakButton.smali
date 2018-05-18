.class public Lcom/android/camera/ui/PeakButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "PeakButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public couldBeVisible()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected notifyClickToDispatcher()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "pref_camera_peak_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/V6TopTextView;->onFinishInflate()V

    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateTitle()V

    return-void
.end method
