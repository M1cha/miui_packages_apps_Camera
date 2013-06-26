.class public abstract Lcom/android/camera/BasePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "BasePreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mParameters:Landroid/hardware/Camera$Parameters;


# instance fields
.field private mCameraBrightness:Lcom/android/camera/CameraBrightness;

.field private mIsSimpleMode:Z

.field protected mPreferenceGroup:Landroid/preference/PreferenceScreen;

.field private mPreferences:Lcom/android/camera/ComboPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/camera/BasePreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->restorePreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/BasePreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/BasePreferenceActivity;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method private addSuffixForDefault(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter "list"

    .prologue
    const v6, 0x7f0d00a8

    .line 418
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 419
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 420
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 425
    aput-object v3, v0, v2

    .line 430
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    return-void

    .line 420
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private changeToLayoutMode(Landroid/preference/CheckBoxPreference;)V
    .locals 7
    .parameter "checkBox"

    .prologue
    .line 278
    new-instance v4, Lcom/android/camera/BasePreferenceActivity$2;

    invoke-direct {v4, p0}, Lcom/android/camera/BasePreferenceActivity$2;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    .line 290
    .local v4, ok:Ljava/lang/Runnable;
    new-instance v6, Lcom/android/camera/BasePreferenceActivity$3;

    invoke-direct {v6, p0, p1}, Lcom/android/camera/BasePreferenceActivity$3;-><init>(Lcom/android/camera/BasePreferenceActivity;Landroid/preference/CheckBoxPreference;)V

    .line 302
    .local v6, cancel:Ljava/lang/Runnable;
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z

    if-nez v0, :cond_0

    const v0, 0x7f0d000f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 309
    return-void

    .line 302
    :cond_0
    const v0, 0x7f0d000e

    goto :goto_0
.end method

.method private filterOptionsAccordingMode()V
    .locals 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_video_time_lapse_frame_interval_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 200
    :cond_0
    return-void
.end method

.method private filterOptionsAccordingToCamera()V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_focusmode_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 188
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_video_time_lapse_frame_interval_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 189
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_hfr_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 190
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_burst_shooting_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_captrue_mirror_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private filterOptionsAccordingToDevice()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/android/camera/Device;->supportHFR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_hfr_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 172
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_video_time_lapse_frame_interval_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 174
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->supportMovieSolid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_movie_solid_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 177
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->supportBurstShooting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_burst_shooting_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 180
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->supportLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_video_captrue_ability_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 183
    :cond_3
    return-void
.end method

.method private filterParameters()V
    .locals 15

    .prologue
    .line 83
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_focusmode_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/PreviewListPreference;

    .line 84
    .local v4, focusMode:Lcom/android/camera/ui/PreviewListPreference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_restore"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 85
    .local v7, restore:Landroid/preference/Preference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_layout_mode_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 87
    .local v3, expertMode:Landroid/preference/Preference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_touchafaec_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/PreviewListPreference;

    .line 88
    .local v8, touchAfAce:Lcom/android/camera/ui/PreviewListPreference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_zsl_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/PreviewListPreference;

    .line 89
    .local v10, zsl:Lcom/android/camera/ui/PreviewListPreference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_autoexposure_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewListPreference;

    .line 90
    .local v1, autoExposure:Lcom/android/camera/ui/PreviewListPreference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_antibanding_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    .line 91
    .local v0, antiBanding:Lcom/android/camera/ui/PreviewListPreference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_videosnapsize_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/PreviewListPreference;

    .line 92
    .local v9, videoSnapSize:Lcom/android/camera/ui/PreviewListPreference;
    const/4 v6, 0x0

    .line 95
    .local v6, pictureSize:Lcom/android/camera/ui/PreviewListPreference;
    const-string v11, "auto"

    iget-object v12, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v13, "pref_camera_scenemode_key"

    const-string v14, "auto"

    invoke-virtual {v12, v13, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 97
    .local v5, override:Z
    sget-object v11, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "pref_camera_id_key"

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, cameraId:I
    const/4 v11, 0x1

    if-ne v2, v11, :cond_b

    .line 100
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_front_picturesize_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #pictureSize:Lcom/android/camera/ui/PreviewListPreference;
    check-cast v6, Lcom/android/camera/ui/PreviewListPreference;

    .line 101
    .restart local v6       #pictureSize:Lcom/android/camera/ui/PreviewListPreference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_picturesize_key"

    invoke-direct {p0, v11, v12}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 102
    iget-boolean v11, p0, Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z

    if-eqz v11, :cond_0

    .line 103
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_front_picturesize_key"

    invoke-direct {p0, v11, v12}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 110
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 111
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    sget-object v12, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v11, v6, v12}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 115
    :cond_1
    if-eqz v8, :cond_2

    .line 116
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    sget-object v12, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v11, v8, v12}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 117
    invoke-virtual {v8, v5}, Lcom/android/camera/ui/PreviewListPreference;->setEnabled(Z)V

    .line 120
    :cond_2
    if-eqz v4, :cond_3

    .line 121
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    sget-object v12, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v11, v4, v12}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 122
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/PreviewListPreference;->setEnabled(Z)V

    .line 125
    :cond_3
    if-eqz v10, :cond_4

    .line 126
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    sget-object v12, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedZSLModes()Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v11, v10, v12}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 129
    :cond_4
    if-eqz v7, :cond_5

    .line 130
    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    :cond_5
    if-eqz v3, :cond_6

    .line 134
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    :cond_6
    if-eqz v1, :cond_7

    .line 138
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    sget-object v12, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v11, v1, v12}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 140
    invoke-virtual {v1, v5}, Lcom/android/camera/ui/PreviewListPreference;->setEnabled(Z)V

    .line 143
    :cond_7
    if-eqz v0, :cond_8

    .line 144
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    sget-object v12, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v11, v0, v12}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 148
    :cond_8
    if-eqz v9, :cond_9

    .line 149
    sget-object v11, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->isPowerModeSupported()Z

    move-result v11

    if-nez v11, :cond_c

    .line 150
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v9, v12}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    .line 158
    :cond_9
    :goto_1
    const/4 v11, 0x1

    if-ne v2, v11, :cond_a

    .line 159
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_continuousaf_key"

    invoke-direct {p0, v11, v12}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 160
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_redeyereduction_key"

    invoke-direct {p0, v11, v12}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 161
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_skinToneEnhancement_key"

    invoke-direct {p0, v11, v12}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 164
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterOptionsAccordingToDevice()V

    .line 165
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterOptionsAccordingToCamera()V

    .line 166
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterOptionsAccordingMode()V

    .line 167
    return-void

    .line 106
    :cond_b
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_picturesize_key"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #pictureSize:Lcom/android/camera/ui/PreviewListPreference;
    check-cast v6, Lcom/android/camera/ui/PreviewListPreference;

    .line 107
    .restart local v6       #pictureSize:Lcom/android/camera/ui/PreviewListPreference;
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v12, "pref_camera_front_picturesize_key"

    invoke-direct {p0, v11, v12}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 153
    :cond_c
    iget-object v11, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    sget-object v12, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v11, v9, v12}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    goto :goto_1
.end method

.method private filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Lcom/android/camera/ui/PreviewListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 207
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 208
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ui/PreviewListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 213
    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 214
    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 218
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/BasePreferenceActivity;->resetIfInvalid(Landroid/preference/ListPreference;)V

    goto :goto_0
.end method

.method private initializeActivity()V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    .line 64
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 67
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceXml(Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/BasePreferenceActivity;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    .line 69
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 77
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterParameters()V

    .line 78
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/BasePreferenceActivity;->updatePrefrences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    .line 79
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v1, p0}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    return-void
.end method

.method private registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 4
    .parameter "group"
    .parameter "l"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 232
    .local v2, total:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 233
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 234
    .local v0, child:Landroid/preference/Preference;
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 235
    check-cast v0, Landroid/preference/PreferenceGroup;

    .end local v0           #child:Landroid/preference/Preference;
    invoke-direct {p0, v0, p2}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .restart local v0       #child:Landroid/preference/Preference;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 240
    .end local v0           #child:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "root"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 336
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 337
    .local v0, child:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 353
    :goto_0
    return v3

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 344
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 345
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 346
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 347
    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 348
    goto :goto_0

    .line 344
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 353
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resetIfInvalid(Landroid/preference/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 225
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 227
    :cond_0
    return-void
.end method

.method private restorePreferences()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {p0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;)V

    .line 268
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_layout_mode_key"

    iget-boolean v1, p0, Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->initializeActivity()V

    .line 273
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/BasePreferenceActivity;->updatePrefrences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    .line 274
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    .line 275
    return-void

    .line 269
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 441
    sput-object p0, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 442
    return-void
.end method

.method private updateDefaultValue(Lcom/android/camera/ui/PreviewListPreference;)V
    .locals 4
    .parameter "list"

    .prologue
    const/4 v0, 0x1

    .line 389
    const-string v2, "pref_camera_antibanding_key"

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/camera/Device;->IS_TW_BUILD:Z

    if-eqz v2, :cond_0

    .line 390
    const-string v2, "60hz"

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 392
    :cond_0
    sget-object v2, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 395
    .local v0, isFrontCamera:Z
    :goto_0
    const-string v2, "pref_camera_autoexposure_key"

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 396
    const v2, 0x7f0d0126

    invoke-virtual {p0, v2}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 399
    :cond_1
    const-string v2, "pref_camera_saturation_key"

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    invoke-direct {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->addSuffixForDefault(Landroid/preference/ListPreference;)V

    .line 403
    :cond_2
    const-string v2, "pref_camera_picturesize_key"

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 404
    sget-object v2, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/android/camera/Device;->isM2Supremacy(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "4208x3120"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v2, "4208x2368"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/PreviewListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 412
    .end local v1           #supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v2, "pref_camera_picturesize_key"

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 413
    invoke-static {}, Lcom/android/camera/Device;->defaultPictrueSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    :cond_4
    return-void

    .line 392
    .end local v0           #isFrontCamera:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePrefrences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V
    .locals 10
    .parameter "group"
    .parameter "sp"

    .prologue
    const/4 v7, 0x0

    .line 357
    if-nez p1, :cond_1

    .line 385
    :cond_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 361
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 362
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 363
    .local v1, child:Landroid/preference/Preference;
    instance-of v6, v1, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v6, :cond_2

    move-object v5, v1

    .line 364
    check-cast v5, Lcom/android/camera/ui/PreviewListPreference;

    .line 365
    .local v5, list:Lcom/android/camera/ui/PreviewListPreference;
    invoke-direct {p0, v5}, Lcom/android/camera/BasePreferenceActivity;->updateDefaultValue(Lcom/android/camera/ui/PreviewListPreference;)V

    .line 366
    invoke-virtual {v5}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/camera/ui/PreviewListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 361
    .end local v1           #child:Landroid/preference/Preference;
    .end local v5           #list:Lcom/android/camera/ui/PreviewListPreference;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .restart local v1       #child:Landroid/preference/Preference;
    :cond_2
    instance-of v6, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    move-object v0, v1

    .line 369
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 370
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, key:Ljava/lang/String;
    const-string v6, "pref_layout_mode_key"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 372
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 377
    :goto_3
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    goto :goto_1

    :cond_3
    move v6, v7

    .line 372
    goto :goto_2

    .line 375
    :cond_4
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 378
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    .end local v4           #key:Ljava/lang/String;
    :cond_5
    instance-of v6, v1, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_6

    .line 379
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1           #child:Landroid/preference/Preference;
    invoke-direct {p0, v1, p2}, Lcom/android/camera/BasePreferenceActivity;->updatePrefrences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    goto :goto_1

    .line 382
    .restart local v1       #child:Landroid/preference/Preference;
    :cond_6
    sget-object v6, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no need update preference for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected abstract getPreferenceXml(Z)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object v0, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/camera/CameraBrightness;

    invoke-direct {v0}, Lcom/android/camera/CameraBrightness;-><init>()V

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    .line 43
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 44
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z

    .line 45
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 46
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->initializeActivity()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 433
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/BasePreferenceActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 447
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 448
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->onPause()V

    .line 451
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 313
    invoke-virtual {p0, v4}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    .line 314
    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, key:Ljava/lang/String;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 317
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    return v4

    .line 318
    .restart local p2
    :cond_0
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 319
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 320
    .restart local p2
    :cond_1
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 321
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 322
    .restart local p2
    :cond_2
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 323
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 324
    .restart local p2
    :cond_3
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 325
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 327
    .restart local p2
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled new value with type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v4, Lcom/android/camera/BasePreferenceActivity$1;

    invoke-direct {v4, p0}, Lcom/android/camera/BasePreferenceActivity$1;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    .line 252
    .local v4, restore:Ljava/lang/Runnable;
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 257
    const/4 v0, 0x1

    .line 262
    .end local v4           #restore:Ljava/lang/Runnable;
    .end local p1
    :goto_0
    return v0

    .line 259
    .restart local p1
    :cond_0
    const-string v0, "pref_layout_mode_key"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->changeToLayoutMode(Landroid/preference/CheckBoxPreference;)V

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->onResume()V

    .line 59
    :cond_0
    return-void
.end method

.method protected abstract onSettingChanged(I)V
.end method
