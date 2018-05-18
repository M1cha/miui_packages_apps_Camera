.class public Lcom/android/camera/ui/ScreenHint;
.super Ljava/lang/Object;
.source "ScreenHint.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/AlertDialog;

.field private mMessageId:I

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J

.field private mTitleId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/ui/ScreenHint;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenHint;->recordLocation(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private recordLocation(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    return-void
.end method


# virtual methods
.method public hideToast()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/ui/RotateTextToast;->getInstance()Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    :cond_0
    return-void
.end method

.method public isScreenHintVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->getHintViewVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public showConfirmMessage(II)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ScreenHint;->mTitleId:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ScreenHint;->mMessageId:I

    if-ne v0, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iput p1, p0, Lcom/android/camera/ui/ScreenHint;->mTitleId:I

    iput p2, p0, Lcom/android/camera/ui/ScreenHint;->mMessageId:I

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public showFirstUseHint()V
    .locals 12

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v10

    const-string/jumbo v0, "pref_camera_first_use_hint_shown_key"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string/jumbo v0, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v8, v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v0, "pref_camera_confirm_location_shown_key"

    invoke-interface {v8, v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :goto_0
    if-nez v9, :cond_1

    return-void

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    invoke-virtual {v10, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->contains(Ljava/lang/String;)Z

    move-result v7

    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v0

    if-eqz v0, :cond_2

    xor-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_2

    if-eqz v9, :cond_2

    new-instance v5, Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/ScreenHint$1;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    new-instance v6, Lcom/android/camera/ui/ScreenHint$2;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ScreenHint$2;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0f0010

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0f0011

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0f0012

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0f0013

    invoke-virtual {v4, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemChoiceDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public showObjectTrackHint()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_first_tap_screen_hint_shown_key"

    invoke-interface {v0, v1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    const v2, 0x7f0f01ca

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void
.end method

.method public updateHint()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0f000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0f000c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x3

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0f000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/32 v4, 0x3200000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0f00ed

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0f00ee

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    iput-object v6, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method
