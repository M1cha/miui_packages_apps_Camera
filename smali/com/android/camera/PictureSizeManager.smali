.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field private static sDefaultValue:Ljava/lang/String;

.field private static final sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    const-string/jumbo v0, "4x3"

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "18x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static _findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static getBestPanoPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/android/camera/PictureSize;

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v2, v1, Lcom/android/camera/PictureSize;->width:I

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v1, v1, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {v0, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :cond_1
    return-object v0

    :cond_2
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 5

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v1, Lcom/android/camera/PictureSize;

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {v1, v3, v2}, Lcom/android/camera/PictureSize;-><init>(II)V

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio1_1()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio18_9()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultValue()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getEntries()[Ljava/lang/String;
    .locals 6

    const v5, 0x7f0f0040

    const v1, 0x7f0f003f

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0f0041

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    return-object v0
.end method

.method public static getEntryValues()[Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public static getPictureSize(Z)Lcom/android/camera/PictureSize;
    .locals 2

    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPictureSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static initSensorRatio(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    sget-boolean v4, Lcom/android/camera/Device;->IS_X9:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/camera/Device;->IS_A8:Z

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/camera/PictureSize;

    invoke-direct {v3}, Lcom/android/camera/PictureSize;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v4

    if-ge v2, v4, :cond_2

    move v1, v0

    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "4x3"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)V"
        }
    .end annotation

    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "The supported picture size list return from hal is null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->initSensorRatio(Ljava/util/List;)V

    if-eqz p2, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    if-gt v7, p2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p1, v0

    :cond_4
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v6

    if-eqz v6, :cond_5

    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v4

    if-eqz v4, :cond_8

    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Not find the desire picture sizes!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    return-void
.end method
