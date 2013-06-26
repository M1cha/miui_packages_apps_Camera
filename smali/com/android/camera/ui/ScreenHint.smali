.class public Lcom/android/camera/ui/ScreenHint;
.super Ljava/lang/Object;
.source "ScreenHint.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/ScreenHint;->updateFirstUseHintState(Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;Z)V

    return-void
.end method

.method private updateFirstUseHintState(Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;Z)V
    .locals 5
    .parameter "preferences"
    .parameter "locationManager"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    invoke-virtual {p2, p3}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 70
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d0105

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 71
    return-void
.end method


# virtual methods
.method public getStorageSpace()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    return-wide v0
.end method

.method public isScreenHintVisible()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->getHintViewVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showFirstUseHint(Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;)V
    .locals 8
    .parameter "preferences"
    .parameter "locationManager"

    .prologue
    .line 75
    new-instance v4, Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/camera/ui/ScreenHint$1;-><init>(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;)V

    .line 82
    .local v4, save:Ljava/lang/Runnable;
    new-instance v6, Lcom/android/camera/ui/ScreenHint$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/camera/ui/ScreenHint$2;-><init>(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;)V

    .line 89
    .local v6, no_save:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0d0011

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0d0012

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public updateHint()V
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, message:Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 40
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_5

    .line 41
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 45
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 50
    :cond_1
    :goto_2
    return-void

    .line 32
    :cond_2
    iget-wide v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 33
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_3
    iget-wide v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 35
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_4
    iget-wide v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/32 v3, 0x2faf080

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d00e4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 46
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method
