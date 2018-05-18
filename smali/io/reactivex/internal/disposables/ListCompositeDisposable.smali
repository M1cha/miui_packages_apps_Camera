.class public final Lio/reactivex/internal/disposables/ListCompositeDisposable;
.super Ljava/lang/Object;
.source "ListCompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v3, "d is null"

    invoke-static {p1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    return v4

    :cond_0
    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v3, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-eqz v2, :cond_2

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    const/4 v3, 0x1

    return v3

    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v3, "Disposable item is null"

    invoke-static {p1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v3, :cond_1

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v3, :cond_2

    iget-object v2, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-nez v2, :cond_3

    :cond_0
    monitor-exit p0

    return v4

    :cond_1
    return v4

    :cond_2
    monitor-exit p0

    return v4

    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispose()V
    .locals 4

    iget-boolean v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v3, :cond_0

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    iget-object v2, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    const/4 v3, 0x0

    iput-object v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose(Ljava/util/List;)V

    return-void

    :cond_0
    return-void

    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method dispose(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_3

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/disposables/Disposable;

    :try_start_0
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {v4, v1}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw v4

    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x1

    return v0
.end method
