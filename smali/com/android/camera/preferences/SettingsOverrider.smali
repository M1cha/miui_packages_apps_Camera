.class public Lcom/android/camera/preferences/SettingsOverrider;
.super Ljava/lang/Object;
.source "SettingsOverrider.java"


# instance fields
.field private mRestoredMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    aget-object v2, p1, v1

    add-int/lit8 v6, v1, 0x1

    aget-object v3, p1, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-void
.end method

.method public removeSavedSetting(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public restoreSettings()Z
    .locals 10

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method
