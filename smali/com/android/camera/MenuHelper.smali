.class public Lcom/android/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gotoMode(ILandroid/app/Activity;)V
    .locals 9
    .parameter "mode"
    .parameter "activity"

    .prologue
    const/4 v8, 0x1

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 79
    const-string v6, "MenuHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown camera mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 67
    :pswitch_0
    const-string v0, "com.android.camera.PanoramaActivity"

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.camera.PanoramaActivity"

    .line 84
    .local v1, className:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, it:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 86
    .local v3, myExtras:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 87
    const-string v6, "ShowCameraWhenLocked"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 88
    .local v5, show:Z
    if-eqz v5, :cond_0

    .line 89
    const-string v6, "SecurePictureNum"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 90
    .local v4, num:I
    const-string v6, "ShowCameraWhenLocked"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v6, "SecurePictureNum"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    .end local v4           #num:I
    :cond_0
    const-string v6, "com.android.camera.Camera"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "captureAfterLaunch"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    const-string v6, "captureAfterLaunch"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    .end local v5           #show:Z
    :cond_1
    const-string v6, "camera_mode_change"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-static {p1, v2, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #myExtras:Landroid/os/Bundle;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 72
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.VideoCamera"

    .line 73
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 75
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 76
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.camera.Camera"

    .line 77
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gotoSimpleModeCamera(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "mode"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, it:Landroid/content/Intent;
    const-string v1, "camera_mode_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "com.android.camera.Camera"

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 46
    const/high16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 61
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
