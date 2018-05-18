.class public abstract Lcom/android/camera/BasePreferenceActivity;
.super Lmiui/preference/PreferenceActivity;
.source "BasePreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BasePreferenceActivity$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppInstalledListener:Lcom/android/camera/Util$PackageInstallerListener;

.field private mFaceDetectionAutoHiddenPreference:Landroid/preference/Preference;

.field private mFaceDetectionPreference:Landroid/preference/Preference;

.field private mFromWhere:I

.field private mLabOptionsHitCountDown:I

.field private mParallelProcessEnablePreference:Landroid/preference/Preference;

.field private mPortraitWithFaceBeautyPreference:Landroid/preference/Preference;

.field protected mPreferenceGroup:Landroid/preference/PreferenceScreen;

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/BasePreferenceActivity;)Lcom/android/camera/Util$PackageInstallerListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mAppInstalledListener:Lcom/android/camera/Util$PackageInstallerListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->installQRCodeReceiver()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->restorePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/BasePreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/camera/BasePreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/BasePreferenceActivity$1;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mAppInstalledListener:Lcom/android/camera/Util$PackageInstallerListener;

    return-void
.end method

.method private filterByDeviceID()V
    .locals 10

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_hfr_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_0
    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_long_press_shutter_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTimeWaterMark()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_watermark_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_dualcamera_watermark"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camerasound_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v6

    if-nez v6, :cond_6

    sget-boolean v6, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_picturesize_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_7
    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_priority_storage"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportedChromaFlash()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_auto_chroma_flash_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedLongPressBurst()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_a
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_capture_when_stable_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_b
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_asd_night_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isSupportedQuickSnap()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_snap_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_d
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_groupshot_with_primitive_picture_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_e
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_portrait_with_facebeauty_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_f
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportParallelProcess()Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_parallel_process_enable_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_10
    invoke-static {}, Lcom/android/camera/Device;->isThirdDevice()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_facedetection_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_facedetection_auto_hidden_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_parallel_process_enable_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_front_mirror_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_qc_camera_sharpness_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_qc_camera_contrast_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_qc_camera_saturation_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_autoexposure_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_11
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->supported()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_camera_proximity_lock_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_12
    invoke-static {}, Lcom/android/camera/Device;->isBackFingerSensor()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_fingerprint_capture_key"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_13
    invoke-static {}, Lcom/android/camera/Device;->isSupportAutoMirror()Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_front_mirror_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v1, :cond_17

    const v6, 0x7f0f01d1

    invoke-virtual {p0, v6}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v6, 0x7f0f01d2

    invoke-virtual {p0, v6}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_16

    aget-object v5, v7, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_15
    sget-boolean v6, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_dualcamera_watermark"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    const v6, 0x7f0f0164

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    :cond_16
    iget-object v6, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v6, v1, v4}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    :cond_17
    return-void
.end method

.method private filterByFrom()V
    .locals 7

    const/16 v6, 0xa9

    const/16 v5, 0xa8

    const/16 v4, 0xa6

    const/16 v3, 0xa2

    const/16 v2, 0xa1

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "category_camcorder_setting"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-ne v0, v3, :cond_7

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->removeIncompatibleAdvancePreference()V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-ne v0, v3, :cond_6

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->removeNonVideoPreference()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v0, v6, :cond_5

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-ne v0, v5, :cond_1

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-eq v0, v5, :cond_2

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    if-ne v0, v4, :cond_3

    goto :goto_1
.end method

.method private filterByPreference()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_video_quality_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/camera/BasePreferenceActivity;->filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getVideoSpeed()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/camera/Device;->IS_X9:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLabOptionsVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_facedetection_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_portrait_with_facebeauty_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_facedetection_auto_hidden_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_parallel_process_enable_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private filterGroup()V
    .locals 1

    const-string/jumbo v0, "category_device_setting"

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    const-string/jumbo v0, "category_camcorder_setting"

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    const-string/jumbo v0, "category_camera_setting"

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    const-string/jumbo v0, "category_advance_setting"

    invoke-direct {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->filterGroupIfEmpty(Ljava/lang/String;)V

    return-void
.end method

.method private filterGroupIfEmpty(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private getFilterValue(Lcom/android/camera/ui/PreviewListPreference;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v0

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-object v2
.end method

.method private initializeActivity()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceXml()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fail to init PreferenceGroup"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_facedetection_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFaceDetectionPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_portrait_with_facebeauty_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPortraitWithFaceBeautyPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_facedetection_auto_hidden_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFaceDetectionAutoHiddenPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_parallel_process_enable_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mParallelProcessEnablePreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->registerListener()V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByPreference()V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByFrom()V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByDeviceID()V

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->filterByIntent()V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->filterGroup()V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->updateEntries()V

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v2}, Lcom/android/camera/BasePreferenceActivity;->updateConflictPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method private installQRCodeReceiver()V
    .locals 2

    new-instance v0, Lcom/android/camera/BasePreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/BasePreferenceActivity$4;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/BasePreferenceActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private registerListener()V
    .locals 6

    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, p0}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_restore"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_priority_storage"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_camera_facedetection_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_scan_qrcode_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    return-void
.end method

.method private registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 4

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/BasePreferenceActivity;->registerListener(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private removeIncompatibleAdvancePreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_qc_camera_contrast_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_qc_camera_saturation_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_qc_camera_sharpness_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method private removeNonVideoPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "category_camera_setting"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method private resetIfInvalid(Landroid/preference/ListPreference;)V
    .locals 3

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method private resetPreferences()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v0

    invoke-interface {v3, v0, v2}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->resetAll()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    return-void
.end method

.method private resetSnapSetting()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_long_press_volume_down"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Street-snap-picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Street-snap-movie"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_long_press_volume_down"

    const-string/jumbo v3, "none"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private resetTimeOutFlag()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    return-void
.end method

.method private restorePreferences()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->resetPreferences()V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->resetSnapSetting()V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->initializeActivity()V

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    return-void
.end method

.method private updateConflictPreference(Landroid/preference/Preference;)V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/camera/Device;->IS_X9:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v4

    const/4 v5, 0x6

    if-gt v5, v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_camera_movie_solid_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_video_quality_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz p1, :cond_1

    const-string/jumbo v4, "pref_camera_movie_solid_key"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0f0021

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "pref_video_quality_key"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "pref_camera_movie_solid_key"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateEntries()V
    .locals 14

    const v13, 0x7f0f00e7

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v11, "pref_camera_picturesize_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/PreviewListPreference;

    iget-object v10, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v11, "pref_camera_antibanding_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    iget-object v10, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v11, "pref_auto_chroma_flash_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v11, "pref_video_quality_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/PreviewListPreference;

    iget-object v10, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v11, "pref_camera_snap_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntries()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/camera/ui/PreviewListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0, v13}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0003

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    if-eqz v9, :cond_3

    const v10, 0x7f0f0021

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v9, v3}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isSupportedQuickSnap()Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x7f0f020d

    invoke-virtual {p0, v10}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "key_long_press_volume_down"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "public_transportation_shortcuts"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "none"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_4
    const v10, 0x7f0f0215

    invoke-virtual {p0, v10}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v10, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v11, "pref_dualcamera_watermark"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->pictureWatermarkDefaultValue()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/Device;->pictureWatermarkDefaultValue()Z

    move-result v10

    invoke-virtual {v4, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v10

    const-string/jumbo v11, "pref_camera_snap_key"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "key_long_press_volume_down"

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v10

    const-string/jumbo v11, "pref_camera_snap_key"

    invoke-interface {v10, v11}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v10, "Street-snap-picture"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const v10, 0x7f0f0213

    invoke-virtual {p0, v10}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v10, "Street-snap-movie"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x7f0f0214

    invoke-virtual {p0, v10}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V
    .locals 10

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v6, v1, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v6, :cond_2

    move-object v5, v1

    check-cast v5, Lcom/android/camera/ui/PreviewListPreference;

    const-string/jumbo v6, "pref_camera_picturesize_key"

    invoke-virtual {v5}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/PictureSize;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5, p2}, Lcom/android/camera/BasePreferenceActivity;->getFilterValue(Lcom/android/camera/ui/PreviewListPreference;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v6, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-interface {p2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    goto :goto_2

    :cond_3
    instance-of v6, v1, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_4

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, p2}, Lcom/android/camera/BasePreferenceActivity;->updatePreferences(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no need update preference for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    return-void
.end method

.method private updateQRCodeEntry()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_scan_qrcode_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v3, "pref_scan_qrcode_key"

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "disable QRCodeScan"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "pref_scan_qrcode_key"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addPreference(Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected filterByIntent()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "remove_keys"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public filterUnsupportedOptions(Landroid/preference/PreferenceGroup;Lcom/android/camera/ui/PreviewListPreference;Ljava/util/List;)V
    .locals 2
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

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void

    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ui/PreviewListPreference;->filterUnsupported(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/android/camera/ui/PreviewListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/BasePreferenceActivity;->resetIfInvalid(Landroid/preference/ListPreference;)V

    return-void
.end method

.method protected abstract getPreferenceXml()I
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->resetTimeOutFlag()V

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_where"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/BasePreferenceActivity;->mFromWhere:I

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->initializeActivity()V

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->resetTimeOutFlag()V

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/camera/BasePreferenceActivity;->trackPreferenceChange(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->updateConflictPreference(Landroid/preference/Preference;)V

    return v4

    :cond_0
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhandled new value with type="

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
    .locals 12

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Lcom/android/camera/BasePreferenceActivity$2;

    invoke-direct {v4, p0}, Lcom/android/camera/BasePreferenceActivity$2;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    const v0, 0x7f0f000e

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0f000f

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "pref_priority_storage"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const-string/jumbo v0, "pref_scan_qrcode_key"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mLabOptionsHitCountDown:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mLabOptionsHitCountDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/BasePreferenceActivity;->mLabOptionsHitCountDown:I

    iget v0, p0, Lcom/android/camera/BasePreferenceActivity;->mLabOptionsHitCountDown:I

    if-nez v0, :cond_5

    const v0, 0x7f0f0144

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setLabOptionsVisible(Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v0, "category_advance_setting"

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mPortraitWithFaceBeautyPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->addPreference(Ljava/lang/String;Landroid/preference/Preference;)Z

    :cond_4
    const-string/jumbo v0, "category_advance_setting"

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mFaceDetectionPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->addPreference(Ljava/lang/String;Landroid/preference/Preference;)Z

    const-string/jumbo v0, "category_advance_setting"

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mFaceDetectionAutoHiddenPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->addPreference(Ljava/lang/String;Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportParallelProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "category_advance_setting"

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity;->mParallelProcessEnablePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/BasePreferenceActivity;->addPreference(Ljava/lang/String;Landroid/preference/Preference;)Z

    :cond_5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v9, Lcom/android/camera/BasePreferenceActivity$3;

    invoke-direct {v9, p0}, Lcom/android/camera/BasePreferenceActivity$3;-><init>(Lcom/android/camera/BasePreferenceActivity;)V

    const v0, 0x7f0f02a0

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0f02a1

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f0f029f

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/camera/BasePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onRestart()V

    invoke-virtual {p0}, Lcom/android/camera/BasePreferenceActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;->updateQRCodeEntry()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isLabOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/BasePreferenceActivity;->mLabOptionsHitCountDown:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/BasePreferenceActivity;->mLabOptionsHitCountDown:I

    goto :goto_0
.end method

.method protected abstract onSettingChanged(I)V
.end method

.method protected removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/camera/BasePreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method protected trackPreferenceChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "on"

    :goto_0
    const-string/jumbo v3, "pref_video_quality_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_1
    const-string/jumbo v3, "settings"

    invoke-static {v3, p1, v2}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v2, "off"

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->timeLapseIntervalToName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/camera/BasePreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid interval "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "pref_camera_jpegquality_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "pref_camera_picturesize_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "pref_camera_autoexposure_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->autoExposureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "pref_qc_camera_contrast_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->contrastToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "pref_qc_camera_saturation_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->saturationToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v3, "pref_qc_camera_sharpness_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->sharpnessToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
