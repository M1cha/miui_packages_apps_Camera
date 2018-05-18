.class public final Lio/reactivex/internal/schedulers/IoScheduler;
.super Lio/reactivex/Scheduler;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;,
        Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;,
        Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;
    }
.end annotation


# static fields
.field static final EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field static final NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

.field static final SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

.field static final WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string/jumbo v3, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v2, v3}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    invoke-virtual {v1}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;->dispose()V

    const/4 v1, 0x5

    const-string/jumbo v2, "rx2.io-priority"

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-static {v2, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string/jumbo v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string/jumbo v2, "RxCachedWorkerPoolEvictor"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    new-instance v1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5, v3, v2}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v1}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/IoScheduler;->start()V

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 2
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    new-instance v1, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;-><init>(Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;)V

    return-object v1
.end method

.method public shutdown()V
    .locals 3

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    return-void

    :cond_1
    return-void
.end method

.method public start()V
    .locals 6

    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lio/reactivex/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v4, 0x3c

    invoke-direct {v0, v4, v5, v1, v2}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    goto :goto_0
.end method
