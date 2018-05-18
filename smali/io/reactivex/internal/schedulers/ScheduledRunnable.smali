.class public final Lio/reactivex/internal/schedulers/ScheduledRunnable;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ScheduledRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final ASYNC_DISPOSED:Ljava/lang/Object;

.field static final DONE:Ljava/lang/Object;

.field static final PARENT_DISPOSED:Ljava/lang/Object;

.field static final SYNC_DISPOSED:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x54ef67182406fc25L


# instance fields
.field final actual:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-ne v1, v4, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-ne v1, v2, :cond_6

    :cond_2
    return-void

    :cond_3
    sget-object v4, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    sget-object v4, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_4

    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    sget-object v4, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0, v2, v1, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    sget-object v4, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    invoke-virtual {p0, v3, v1, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lio/reactivex/internal/disposables/DisposableContainer;

    invoke-interface {v1, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {p0, v7, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, v7, v6}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    :cond_0
    :goto_1
    invoke-virtual {p0, v5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    :cond_1
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v7, v6}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    if-ne v2, v3, :cond_6

    :cond_2
    :goto_2
    invoke-virtual {p0, v5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-ne v2, v3, :cond_7

    :cond_3
    throw v0

    :cond_4
    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    move-object v3, v2

    check-cast v3, Lio/reactivex/internal/disposables/DisposableContainer;

    invoke-interface {v3, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    :cond_5
    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v5, v2, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_6
    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    move-object v3, v2

    check-cast v3, Lio/reactivex/internal/disposables/DisposableContainer;

    invoke-interface {v3, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_2

    :cond_7
    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v5, v2, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v2, v0, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
