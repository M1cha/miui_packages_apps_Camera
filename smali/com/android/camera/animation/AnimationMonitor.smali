.class public Lcom/android/camera/animation/AnimationMonitor;
.super Ljava/lang/Object;
.source "AnimationMonitor.java"


# static fields
.field private static instance:Lcom/android/camera/animation/AnimationMonitor;


# instance fields
.field private mLastCheckTime:J

.field private mRunningAnimations:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    return-void
.end method

.method private checkRunningAnimations()V
    .locals 10

    const-string/jumbo v7, "AnimationMonitor"

    const-string/jumbo v8, "checkRunningAnimations"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v0, v8

    if-lez v7, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v7, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static get()Lcom/android/camera/animation/AnimationMonitor;
    .locals 2

    sget-object v0, Lcom/android/camera/animation/AnimationMonitor;->instance:Lcom/android/camera/animation/AnimationMonitor;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/camera/animation/AnimationMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/animation/AnimationMonitor;->instance:Lcom/android/camera/animation/AnimationMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/animation/AnimationMonitor;

    invoke-direct {v0}, Lcom/android/camera/animation/AnimationMonitor;-><init>()V

    sput-object v0, Lcom/android/camera/animation/AnimationMonitor;->instance:Lcom/android/camera/animation/AnimationMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/camera/animation/AnimationMonitor;->instance:Lcom/android/camera/animation/AnimationMonitor;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public animationStart(Ljava/lang/Object;I)V
    .locals 6

    const-string/jumbo v0, "AnimationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animationStart animationObject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    int-to-long v2, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public animationStop(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "AnimationMonitor"

    const-string/jumbo v1, "animationStop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hasAnimationRunning()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/animation/AnimationMonitor;->mLastCheckTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/animation/AnimationMonitor;->checkRunningAnimations()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mLastCheckTime:J

    :cond_1
    iget-object v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
