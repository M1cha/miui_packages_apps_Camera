.class public Lcom/android/camera/CameraBrightness;
.super Ljava/lang/Object;
.source "CameraBrightness.java"


# static fields
.field private static sIsUserSetBrightness:Z


# instance fields
.field private mCurrentBrightness:I

.field private mLastBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/CameraBrightness;->sIsUserSetBrightness:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/android/camera/CameraBrightness;->mLastBrightness:I

    .line 7
    iput v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentBrightness:I

    .line 12
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/CameraBrightness;->sIsUserSetBrightness:Z

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/camera/CameraBrightness;->sIsUserSetBrightness:Z

    if-nez v2, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "current":I
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 45
    :goto_0
    iget v2, p0, Lcom/android/camera/CameraBrightness;->mCurrentBrightness:I

    if-ne v0, v2, :cond_1

    .line 46
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/camera/CameraBrightness;->mLastBrightness:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    .end local v0    # "current":I
    :cond_0
    :goto_1
    return-void

    .line 41
    .restart local v0    # "current":I
    :catch_0
    move-exception v1

    .line 42
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1    # "localException":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/CameraBrightness;->sIsUserSetBrightness:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 14
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/camera/CameraBrightness;->sIsUserSetBrightness:Z

    if-nez v1, :cond_1

    .line 16
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraBrightness;->mLastBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    iget v1, p0, Lcom/android/camera/CameraBrightness;->mLastBrightness:I

    add-int/lit8 v1, v1, 0x2d

    iput v1, p0, Lcom/android/camera/CameraBrightness;->mCurrentBrightness:I

    .line 24
    iget v1, p0, Lcom/android/camera/CameraBrightness;->mCurrentBrightness:I

    if-le v1, v3, :cond_0

    .line 25
    iput v3, p0, Lcom/android/camera/CameraBrightness;->mCurrentBrightness:I

    .line 27
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/camera/CameraBrightness;->mCurrentBrightness:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 31
    :cond_1
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "localException":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
