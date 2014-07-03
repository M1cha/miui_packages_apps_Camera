.class public Lcom/android/camera/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final IS_MIONE:Z

.field public static final IS_MITWO:Z

.field public static final IS_MITWO_A:Z

.field public static final IS_TW_BUILD:Z

.field public static final MODULE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    .line 10
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MIONE:Z

    .line 12
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    .line 13
    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    .line 14
    sget-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_TW_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustScreenLight()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static defaultPictrueSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/camera/Device;->IS_MIONE:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "3264x1836"

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3264x1840"

    goto :goto_0
.end method

.method public static isM2Supremacy(Landroid/hardware/Camera$Parameters;)Z
    .locals 8
    .param p0, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v5, 0x0

    .line 120
    sget-boolean v6, Lcom/android/camera/Device;->IS_MITWO:Z

    if-eqz v6, :cond_1

    .line 121
    const-string v6, "4208x2368"

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 122
    .local v2, "index":I
    const-string v6, "4208x2368"

    invoke-virtual {v6, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "WIDTH":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    .line 124
    .local v4, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 125
    .local v3, "s":Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v0, :cond_0

    .line 126
    const/4 v5, 0x1

    .line 130
    .end local v0    # "WIDTH":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "s":Landroid/hardware/Camera$Size;
    .end local v4    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    return v5
.end method

.method public static panoramaPreviewSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "640x480"

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "1280x720"

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "768x432"

    goto :goto_0
.end method

.method public static supportBurstShooting()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    return v0
.end method

.method public static supportHDR()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/camera/Device;->IS_MIONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHFR()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHandNight()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    return v0
.end method

.method public static supportLowPowerMode()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMovieSolid()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSkinBeautify()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    return v0
.end method

.method public static supportWaterMark()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    return v0
.end method

.method public static supportZSL()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updatePreviewSize(Landroid/hardware/Camera$Size;)V
    .locals 6
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO_A:Z

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v0, v0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x3ff5555555555555L

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x3ffc71c71c71c71cL

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 100
    const/16 v0, 0x1b0

    iput v0, p0, Landroid/hardware/Camera$Size;->height:I

    .line 101
    const/16 v0, 0x300

    iput v0, p0, Landroid/hardware/Camera$Size;->width:I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/16 v0, 0x1e0

    iput v0, p0, Landroid/hardware/Camera$Size;->height:I

    .line 104
    const/16 v0, 0x280

    iput v0, p0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0
.end method
