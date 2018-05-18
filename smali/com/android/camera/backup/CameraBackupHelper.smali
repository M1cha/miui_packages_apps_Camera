.class public Lcom/android/camera/backup/CameraBackupHelper;
.super Ljava/lang/Object;
.source "CameraBackupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/backup/CameraBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/backup/CameraBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restoreVersion1LocalSettings(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 10

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v5, 0x0

    array-length v6, p2

    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v2, p2, v5

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    if-ne v7, v8, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v7, Lcom/android/camera/backup/CameraBackupHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "entry "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not KeyStringSettingItem"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Long;

    if-ne v7, v8, :cond_3

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Boolean;

    if-ne v7, v8, :cond_4

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
