.class public final Lio/reactivex/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/OpenHashSet",
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
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    const-string/jumbo v3, "d is null"

    invoke-static {p1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v3, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    return v4

    :cond_0
    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

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
    iget-object v2, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v2, p1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    const/4 v3, 0x1

    return v3

    :cond_2
    new-instance v2, Lio/reactivex/internal/util/OpenHashSet;

    invoke-direct {v2}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    iput-object v2, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .locals 5
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    const-string/jumbo v3, "Disposable item is null"

    invoke-static {p1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v3, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v3, :cond_1

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v3, :cond_2

    iget-object v2, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

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
    invoke-virtual {v2, p1}, Lio/reactivex/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

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

    iget-boolean v3, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v3, :cond_0

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    iget-object v2, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    const/4 v3, 0x0

    iput-object v3, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

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

.method dispose(Lio/reactivex/internal/util/OpenHashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/OpenHashSet",
            "<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lio/reactivex/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    array-length v1, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    if-nez v4, :cond_4

    return-void

    :cond_0
    return-void

    :cond_1
    aget-object v6, v0, v2

    instance-of v7, v6, Lio/reactivex/disposables/Disposable;

    if-nez v7, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    check-cast v6, Lio/reactivex/disposables/Disposable;

    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-static {v5}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-eqz v4, :cond_3

    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    new-instance v7, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {v7, v4}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw v7

    :cond_5
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v7}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .locals 2
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x1

    return v0
.end method
