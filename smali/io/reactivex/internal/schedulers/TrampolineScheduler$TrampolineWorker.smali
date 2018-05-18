.class final Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "TrampolineScheduler.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrampolineWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;
    }
.end annotation


# instance fields
.field final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile disposed:Z

.field final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->disposed:Z

    return-void
.end method

.method enqueue(Ljava/lang/Runnable;J)Lio/reactivex/disposables/Disposable;
    .locals 6

    iget-boolean v3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->disposed:Z

    if-nez v3, :cond_0

    new-instance v2, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V

    iget-object v3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;

    invoke-direct {v3, p0, v2}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;-><init>(Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;)V

    invoke-static {v3}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    return-object v3

    :cond_0
    sget-object v3, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v3

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->disposed:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->disposed:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->run:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    sget-object v3, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v3

    :cond_4
    iget-object v3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v3
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->disposed:Z

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->enqueue(Ljava/lang/Runnable;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    new-instance v2, Lio/reactivex/internal/schedulers/TrampolineScheduler$SleepingRunnable;

    invoke-direct {v2, p1, p0, v0, v1}, Lio/reactivex/internal/schedulers/TrampolineScheduler$SleepingRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;J)V

    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker;->enqueue(Ljava/lang/Runnable;J)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    return-object v2
.end method
