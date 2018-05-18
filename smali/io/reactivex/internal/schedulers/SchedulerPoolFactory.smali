.class public final Lio/reactivex/internal/schedulers/SchedulerPoolFactory;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;
    }
.end annotation


# static fields
.field static final POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PURGE_ENABLED:Z

.field public static final PURGE_PERIOD_SECONDS:I

.field static final PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v3, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string/jumbo v3, "rx2.purge-enabled"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    sput-boolean v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    sput v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->start()V

    return-void

    :cond_1
    const-string/jumbo v3, "rx2.purge-enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "rx2.purge-period-seconds"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    const-string/jumbo v4, "rx2.purge-period-seconds"

    invoke-static {v4, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    const/4 v2, 0x1

    invoke-static {v2, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sget-boolean v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static start()V
    .locals 8

    sget-boolean v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v7, :cond_2

    :cond_0
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string/jumbo v2, "RxSchedulerPurge"

    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-interface {v7}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_3
    new-instance v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;

    invoke-direct {v1}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;-><init>()V

    sget v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    int-to-long v2, v2

    sget v4, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
