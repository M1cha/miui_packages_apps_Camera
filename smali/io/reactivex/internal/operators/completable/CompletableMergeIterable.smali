.class public final Lio/reactivex/internal/operators/completable/CompletableMergeIterable;
.super Lio/reactivex/Completable;
.source "CompletableMergeIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/CompletableSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;->sources:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 9

    new-instance v4, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v4}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    invoke-interface {p1, v4}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-string/jumbo v8, "The source iterator returned is null"

    invoke-static {v7, v8}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v5, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;

    invoke-direct {v5, p1, v4, v6}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicInteger;)V

    :goto_0
    invoke-virtual {v4}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v7

    if-nez v7, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v7

    if-nez v7, :cond_1

    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "The iterator returned a null CompletableSource"

    invoke-static {v7, v8}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/CompletableSource;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v4}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-interface {v1, v5}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {p1, v2}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    return-void

    :catch_1
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    invoke-virtual {v5, v2}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    return-void

    :catch_2
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    invoke-virtual {v5, v2}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v5}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onComplete()V

    return-void
.end method
