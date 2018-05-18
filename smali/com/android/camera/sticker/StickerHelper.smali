.class public Lcom/android/camera/sticker/StickerHelper;
.super Ljava/lang/Object;
.source "StickerHelper.java"


# static fields
.field private static mInstance:Lcom/android/camera/sticker/StickerHelper;

.field public static sStickLocal:[Ljava/lang/String;

.field private static sStickerEnable:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "rabbiteating.zip"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bunny.zip"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/sticker/StickerHelper;->sStickLocal:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/camera/sticker/StickerHelper;->sStickerEnable:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/sticker/StickerHelper;
    .locals 2

    sget-object v0, Lcom/android/camera/sticker/StickerHelper;->mInstance:Lcom/android/camera/sticker/StickerHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/camera/sticker/StickerHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/sticker/StickerHelper;->mInstance:Lcom/android/camera/sticker/StickerHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/sticker/StickerHelper;

    invoke-direct {v0}, Lcom/android/camera/sticker/StickerHelper;-><init>()V

    sput-object v0, Lcom/android/camera/sticker/StickerHelper;->mInstance:Lcom/android/camera/sticker/StickerHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/camera/sticker/StickerHelper;->mInstance:Lcom/android/camera/sticker/StickerHelper;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLocalStick()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/sticker/StickerInfo;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/sticker/StickerInfo;

    const/4 v4, 0x0

    const v5, 0x7f02015c

    invoke-direct {v1, v4, v5}, Lcom/android/camera/sticker/StickerInfo;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/camera/sticker/StickerInfo;

    sget-object v4, Lcom/android/camera/sticker/StickerHelper;->sStickLocal:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/camera/sticker/StickerHelper;->getStickerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020157

    invoke-direct {v2, v4, v5}, Lcom/android/camera/sticker/StickerInfo;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/camera/sticker/StickerInfo;

    sget-object v4, Lcom/android/camera/sticker/StickerHelper;->sStickLocal:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/camera/sticker/StickerHelper;->getStickerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020158

    invoke-direct {v0, v4, v5}, Lcom/android/camera/sticker/StickerInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public getModelPath()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/sticker/StickerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sticker_model"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getStickerPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/sticker/StickerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sticker_res"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStickerPath(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/sticker/StickerHelper;->getStickerPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStickerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/sticker/StickerHelper;->getStickerPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackModelPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/sticker/StickerHelper;->getModelPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "face_track_3.3.0.model"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
