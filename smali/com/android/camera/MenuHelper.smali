.class public Lcom/android/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySecureData(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 5
    .param p0, "intentFrom"    # Landroid/content/Intent;
    .param p1, "intentTo"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 99
    const-string v3, "ShowCameraWhenLocked"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 100
    .local v2, "show":Z
    if-eqz v2, :cond_0

    .line 101
    const-string v3, "SecurePictureNum"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "num":I
    const-string v3, "ShowCameraWhenLocked"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    const-string v3, "SecurePictureNum"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    .end local v1    # "num":I
    .end local v2    # "show":Z
    :cond_0
    return-void
.end method

.method public static gotoMode(ILandroid/app/Activity;)V
    .locals 6
    .param p0, "mode"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 76
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string v0, "com.android.camera.PanoramaActivity"

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.camera.PanoramaActivity"

    .line 81
    .local v1, "className":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "it":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/camera/MenuHelper;->copySecureData(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 84
    const-string v3, "camera_mode_change"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-static {p1, v2, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "it":Landroid/content/Intent;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 69
    .restart local v0    # "action":Ljava/lang/String;
    const-string v1, "com.android.camera.VideoCamera"

    .line 70
    .restart local v1    # "className":Ljava/lang/String;
    goto :goto_1

    .line 72
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 73
    .restart local v0    # "action":Ljava/lang/String;
    const-string v1, "com.android.camera.Camera"

    .line 74
    .restart local v1    # "className":Ljava/lang/String;
    goto :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gotoSimpleModeCamera(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "camera_mode_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/camera/MenuHelper;->copySecureData(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 93
    const-string v1, "com.android.camera.Camera"

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 43
    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    const/high16 v1, 0x2000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 52
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 58
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
