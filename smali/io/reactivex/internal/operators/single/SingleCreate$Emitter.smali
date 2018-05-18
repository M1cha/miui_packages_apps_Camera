.class final Lio/reactivex/internal/operators/single/SingleCreate$Emitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleCreate.java"

# interfaces
.implements Lio/reactivex/SingleEmitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Emitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/SingleEmitter",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223dd198233781a4L


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->actual:Lio/reactivex/SingleObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v2, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->actual:Lio/reactivex/SingleObserver;

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    :goto_2
    throw v0

    :cond_3
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_2
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .locals 4

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v2, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-nez v1, :cond_4

    :goto_2
    throw v0

    :cond_4
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_2
.end method
