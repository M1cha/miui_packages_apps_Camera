.class public Lcom/android/camera/CameraParameters;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public static isSingleOutputEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    .prologue
    .line 3723
    const-string/jumbo v1, "single-isp-output-enabled"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3724
    .local v0, str:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static setOrientation(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 2922
    const-string/jumbo v0, "orientation"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2923
    return-void
.end method

