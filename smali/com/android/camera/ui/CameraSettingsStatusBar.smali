.class public Lcom/android/camera/ui/CameraSettingsStatusBar;
.super Lcom/android/camera/ui/SettingsStatusBar;
.source "CameraSettingsStatusBar.java"


# instance fields
.field private mAudioIndicator:Landroid/widget/ImageView;

.field private mExposureIndicator:Landroid/widget/ImageView;

.field private mFocusIndicator:Landroid/widget/ImageView;

.field private mISOIndicator:Landroid/widget/ImageView;

.field private mReferenceLineIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingsStatusBar;-><init>(Landroid/app/Activity;)V

    .line 22
    const v0, 0x7f0c006b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f0c006c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f0c006d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0c006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mReferenceLineIndicator:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0c0068

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method private isFrontCamera()Z
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getCameraId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReferenceLineEnabled()Z
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_key_camera_referenceline"

    const v3, 0x7f0d017e

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "value":Ljava/lang/String;
    const v1, 0x7f0d017f

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    if-nez p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFocusOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "infinity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_2
    const-string v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateISOOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_2
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_3
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_4
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_5
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 93
    :cond_6
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateReferenceLineIndicator()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mReferenceLineIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mReferenceLineIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mReferenceLineIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mReferenceLineIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateAudioOnScreenIndicator(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "isHDR"    # Z

    .prologue
    const/16 v3, 0x8

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->isSimpleLayoutMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateColorEffectIndicator(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getISOValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateISOOnScreenIndicator(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateReferenceLineIndicator()V

    .line 37
    const-string v1, "auto"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 42
    .local v0, "isSceneOn":Z
    :goto_1
    if-nez v0, :cond_3

    .line 43
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;Z)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateExposureOnScreenIndicator(I)V

    .line 45
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateFocusOnScreenIndicator(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    .end local v0    # "isSceneOn":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 48
    .restart local v0    # "isSceneOn":Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 49
    iget-object v1, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 52
    iget-object v1, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
