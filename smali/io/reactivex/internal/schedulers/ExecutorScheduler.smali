.class public final Lio/reactivex/internal/schedulers/ExecutorScheduler;
.super Lio/reactivex/Scheduler;
.source "ExecutorScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;,
        Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;,
        Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;
    }
.end annotation


# static fields
.field static final HELPER:Lio/reactivex/Scheduler;


# instance fields
.field final executor:Ljava/util/concurrent/Executor;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->HELPER:Lio/reactivex/Scheduler;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 2
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    :try_start_0
    iget-object v5, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    instance-of v5, v5, Ljava/util/concurrent/ExecutorService;

    if-nez v5, :cond_0

    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;-><init>(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    new-instance v4, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    invoke-direct {v4, v1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    check-cast v5, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v4, v3}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object v5, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v5
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v6, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    instance-of v6, v6, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v6, :cond_0

    new-instance v2, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    invoke-direct {v2, v0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object v6, Lio/reactivex/internal/schedulers/ExecutorScheduler;->HELPER:Lio/reactivex/Scheduler;

    new-instance v7, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;

    invoke-direct {v7, p0, v2}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;-><init>(Lio/reactivex/internal/schedulers/ExecutorScheduler;Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;)V

    invoke-virtual {v6, v7, p2, p3, p4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iget-object v6, v2, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->timed:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v6, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-object v2

    :cond_0
    :try_start_0
    new-instance v5, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    invoke-direct {v5, v0}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6, v5, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    invoke-virtual {v5, v4}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v3

    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    sget-object v6, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v6
.end method
