.class public abstract Lcom/android/camera/ui/SettingsStatusBar;
.super Ljava/lang/Object;
.source "SettingsStatusBar.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mColorEffectIndicator:Landroid/widget/ImageView;

.field protected mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

.field protected mWhiteBalanceIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const v0, 0x7f0c001d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RestrictRotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    .line 18
    const v0, 0x7f0c0069

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    .line 19
    const v0, 0x7f0c006a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    .line 20
    return-void
.end method


# virtual methods
.method protected getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 73
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RestrictRotateLayout;->setVisibility(I)V

    .line 32
    :cond_0
    return-void
.end method

.method protected isSimpleLayoutMode()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->isSimpleMode()Z

    move-result v0

    return v0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RestrictRotateLayout;->setOrientation(IZ)V

    .line 81
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RestrictRotateLayout;->setVisibility(I)V

    .line 26
    :cond_0
    return-void
.end method

.method protected updateColorEffectIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V
.end method

.method protected updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 45
    :cond_2
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_3
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_4
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
