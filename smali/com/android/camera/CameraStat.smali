.class public Lcom/android/camera/CameraStat;
.super Ljava/lang/Object;
.source "CameraStat.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sDumpStatEvent:Z

.field private static sIsAnonymous:Z

.field private static sIsCounterEventEnabled:Z

.field private static sIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/camera/CameraStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraStat;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.mod_device"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraStat;->CHANNEL:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " category:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string/jumbo v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p4, :cond_2

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v4, v2, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v4, Lcom/android/camera/CameraStat;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v1, "camera.debug.dump_stat_event"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    sget-boolean v1, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/CameraStat;->sIsCounterEventEnabled:Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v1, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    const-string/jumbo v1, "2882303761517373386"

    const-string/jumbo v2, "5641737344386"

    sget-object v3, Lcom/android/camera/CameraStat;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    const/4 v1, 0x4

    const-wide/32 v2, 0x15f90

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    :cond_0
    return-void
.end method

.method public static isCounterEventDisabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsCounterEventEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CalculateEvent"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CalculateEvent"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p1, v1, p4}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_0
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CountEvent"

    invoke-static {v0, p0, p1, v1, v1}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CountEvent"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static recordPageEnd()V
    .locals 1

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    :cond_0
    return-void
.end method

.method public static recordPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PropertyEvent"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
