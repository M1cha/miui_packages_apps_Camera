.class public Lcom/android/camera/data/data/config/DataItemConfig;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemConfig.java"


# instance fields
.field private mCameraId:I

.field private mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

.field private mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

.field private mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

.field private mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

.field private mIntentType:I

.field private mIsTimeOut:Z

.field private mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

.field private mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    iput p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    iput p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    iput-boolean p3, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    return-void
.end method

.method public static provideLocalId(II)I
    .locals 1

    if-nez p1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, p0, 0x64

    return v0
.end method


# virtual methods
.method public getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    return-object v0
.end method

.method public getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    return-object v0
.end method

.method public getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    return-object v0
.end method

.method public getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    return-object v0
.end method

.method public getLastSelect()I
    .locals 2

    const-string/jumbo v0, "pref_camera_lastselect_beauty_hdr_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    return-object v0
.end method

.method public getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    return-object v0
.end method

.method public getSupportedExtraConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {p1, v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedExtraConfigs(II)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {p1, p0, v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedTopConfigs(ILcom/android/camera/data/data/config/DataItemConfig;I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0
.end method

.method public initAfterCameraOpen(ILandroid/hardware/Camera$Parameters;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->reInit(IILandroid/hardware/Camera$Parameters;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->reInit(II)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->reInit(II)Ljava/util/List;

    return-void
.end method

.method public isTimeOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    iget v2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    invoke-static {v1, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reConfigBokehIfHdrChanged(ILjava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reConfigFlashIfHdrChanged(ILjava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "off"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "auto"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    const-string/jumbo v2, "auto"

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_3
    return v2
.end method

.method public reConfigHdrIfBokehChanged(ILjava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reConfigHdrIfFlashChanged(ILjava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "auto"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "live"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v5

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "auto"

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    return v4

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "off"

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "on"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "off"

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "live"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const-string/jumbo v1, "off"

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    :cond_8
    return v3
.end method

.method public resetTimeOut()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    return-void
.end method

.method public setLastSelect(I)V
    .locals 1

    const-string/jumbo v0, "pref_camera_lastselect_beauty_hdr_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/DataItemConfig;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setTimeOut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    return-void
.end method

.method public supportBokeh(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->reInit(II)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportFlash()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportHdr(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->reInit(II)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
