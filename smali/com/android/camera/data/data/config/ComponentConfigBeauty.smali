.class public Lcom/android/camera/data/data/config/ComponentConfigBeauty;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigBeauty.java"


# static fields
.field public static final BEAUTY_CLOSE:Ljava/lang/String;

.field public static final BEAUTY_DEEP:Ljava/lang/String;

.field public static final BEAUTY_DEEP_LEGACY:Ljava/lang/String;

.field public static final BEAUTY_LOW:Ljava/lang/String;

.field public static final BEAUTY_LOW_LEGACY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXXHIGH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW_LEGACY:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP_LEGACY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 8

    const v7, 0x7f0f01fe

    const v6, 0x7f02007a

    const v5, 0x7f020079

    const v4, 0x7f0f01a6

    const v3, 0x7f02007b

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    invoke-direct {v1, v3, v3, v4, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    invoke-direct {v1, v3, v6, v4, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW_LEGACY:Ljava/lang/String;

    invoke-direct {v1, v3, v6, v4, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP_LEGACY:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP_LEGACY:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XHIGH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXHIGH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXXHIGH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyDefaultValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset invalid beauty level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XHIGH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_XXHIGH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_7
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_camera_face_beauty_key"

    return-object v0
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object v1

    :cond_2
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW_LEGACY:Ljava/lang/String;

    return-object v1

    :cond_3
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_LOW_LEGACY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP_LEGACY:Ljava/lang/String;

    return-object v1

    :cond_4
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_DEEP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object v1

    :cond_5
    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    return-object v1
.end method

.method public isClosed(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isLastOn(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchOn(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setClosed(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->intelligentValueToBeautyLevel(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/BeautyParameters;->setLevel(I)V

    return-void
.end method
