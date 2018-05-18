.class public Lcom/android/camera/backup/CameraBackupSettings;
.super Ljava/lang/Object;
.source "CameraBackupSettings.java"


# static fields
.field static final PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2b

    new-array v0, v0, [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "pref_version_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_recordlocation"

    const-string/jumbo v2, "pref_camera_recordlocation_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "camerasound"

    const-string/jumbo v2, "pref_camerasound_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_proximity_lock"

    const-string/jumbo v2, "pref_camera_proximity_lock_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "priority_storage"

    const-string/jumbo v2, "pref_priority_storage"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "retain_camera_mode"

    const-string/jumbo v2, "pref_retain_camera_mode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_snap"

    const-string/jumbo v2, "pref_camera_snap_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "dualcamera_watermark"

    const-string/jumbo v2, "pref_dualcamera_watermark"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "capture_when_stable"

    const-string/jumbo v2, "pref_capture_when_stable_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "watermark"

    const-string/jumbo v2, "pref_watermark_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "auto_chroma_flash"

    const-string/jumbo v2, "pref_auto_chroma_flash_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_referenceline"

    const-string/jumbo v2, "pref_camera_referenceline_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_focus_shoot"

    const-string/jumbo v2, "pref_camera_focus_shoot_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "scan_qrcode"

    const-string/jumbo v2, "pref_scan_qrcode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_asd_night"

    const-string/jumbo v2, "pref_camera_asd_night_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "groupshot_with_primitive_picture"

    const-string/jumbo v2, "pref_groupshot_with_primitive_picture_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_long_press_shutter"

    const-string/jumbo v2, "pref_camera_long_press_shutter_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_long_press_shutter_feature"

    const-string/jumbo v2, "pref_camera_long_press_shutter_feature_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "front_mirror"

    const-string/jumbo v2, "pref_front_mirror_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_picturesize"

    const-string/jumbo v2, "pref_camera_picturesize_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_jpegquality"

    const-string/jumbo v2, "pref_camera_jpegquality_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_movie_solid"

    const-string/jumbo v2, "pref_camera_movie_solid_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "video_quality"

    const-string/jumbo v2, "pref_video_quality_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "video_time_lapse_frame_interval"

    const-string/jumbo v2, "pref_video_time_lapse_frame_interval_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_facedetection"

    const-string/jumbo v2, "pref_camera_facedetection_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "fingerprint_capture"

    const-string/jumbo v2, "pref_fingerprint_capture_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_volumekey_function"

    const-string/jumbo v2, "pref_camera_volumekey_function_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_antibanding"

    const-string/jumbo v2, "pref_camera_antibanding_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_autoexposure"

    const-string/jumbo v2, "pref_camera_autoexposure_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "qc_camera_contrast"

    const-string/jumbo v2, "pref_qc_camera_contrast_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "qc_camera_saturation"

    const-string/jumbo v2, "pref_qc_camera_saturation_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "qc_camera_sharpness"

    const-string/jumbo v2, "pref_qc_camera_sharpness_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_whitebalance"

    const-string/jumbo v2, "pref_camera_whitebalance_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "focus_position"

    const-string/jumbo v2, "pref_focus_position_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "qc_camera_exposuretime"

    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "qc_camera_iso"

    const-string/jumbo v2, "pref_qc_camera_iso_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "qc_manual_whitebalance_k_value"

    const-string/jumbo v2, "pref_qc_manual_whitebalance_k_value_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_face_beauty"

    const-string/jumbo v2, "pref_camera_face_beauty_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_face_beauty_switch"

    const-string/jumbo v2, "pref_camera_face_beauty_switch_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "beautify_slim_face_ratio"

    const-string/jumbo v2, "pref_beautify_slim_face_ratio_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "beautify_skin_smooth_ratio"

    const-string/jumbo v2, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "beautify_skin_color_ratio"

    const-string/jumbo v2, "pref_beautify_skin_color_ratio_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "beautify_enlarge_eye_ratio"

    const-string/jumbo v2, "pref_beautify_enlarge_eye_ratio_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/backup/CameraBackupSettings;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
