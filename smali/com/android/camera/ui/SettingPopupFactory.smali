.class public Lcom/android/camera/ui/SettingPopupFactory;
.super Ljava/lang/Object;
.source "SettingPopupFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/AbstractSettingPopup;
    .locals 3
    .parameter "key"
    .parameter "root"
    .parameter "context"

    .prologue
    .line 13
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 17
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v2, "pref_video_effect_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    const v0, 0x7f040010

    .line 38
    .local v0, inflateRes:I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/AbstractSettingPopup;

    return-object v2

    .line 20
    .end local v0           #inflateRes:I
    :cond_0
    const-string v2, "pref_camera_iso_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    const v0, 0x7f040015

    .restart local v0       #inflateRes:I
    goto :goto_0

    .line 23
    .end local v0           #inflateRes:I
    :cond_1
    const-string v2, "pref_camera_whitebalance_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "pref_video_quality_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "pref_video_speed_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    :cond_2
    const v0, 0x7f040016

    .restart local v0       #inflateRes:I
    goto :goto_0

    .line 28
    .end local v0           #inflateRes:I
    :cond_3
    const-string v2, "pref_camera_coloreffect_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    const v0, 0x7f040002

    .restart local v0       #inflateRes:I
    goto :goto_0

    .line 31
    .end local v0           #inflateRes:I
    :cond_4
    const-string v2, "pref_camera_exposure_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    const v0, 0x7f04002a

    .restart local v0       #inflateRes:I
    goto :goto_0

    .line 35
    .end local v0           #inflateRes:I
    :cond_5
    const v0, 0x7f040001

    .restart local v0       #inflateRes:I
    goto :goto_0
.end method
