.class public Lcom/android/camera/ui/VideoSettingsStatusBar;
.super Lcom/android/camera/ui/SettingsStatusBar;
.source "VideoSettingsStatusBar.java"


# instance fields
.field private mVideoSpeedIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingsStatusBar;-><init>(Landroid/app/Activity;)V

    .line 18
    const v0, 0x7f0c0070

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    .line 19
    return-void
.end method

.method private updateVideoSpeedIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "isHDR"    # Z

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/VideoSettingsStatusBar;->isSimpleLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/VideoSettingsStatusBar;->updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/VideoSettingsStatusBar;->updateColorEffectIndicator(Ljava/lang/String;)V

    .line 40
    if-eqz p2, :cond_1

    const-string v0, "normal"

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/VideoSettingsStatusBar;->updateVideoSpeedIndicator(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00fb

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/VideoSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
