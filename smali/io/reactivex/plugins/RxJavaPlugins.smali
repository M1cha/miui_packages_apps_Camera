.class public final Lio/reactivex/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static volatile errorHandler:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onCompletableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Completable;",
            "+",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<-",
            "Lio/reactivex/Completable;",
            "-",
            "Lio/reactivex/CompletableObserver;",
            "+",
            "Lio/reactivex/CompletableObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onComputationHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onFlowableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Flowable;",
            "+",
            "Lio/reactivex/Flowable;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onFlowableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<-",
            "Lio/reactivex/Flowable;",
            "-",
            "Lorg/reactivestreams/Subscriber;",
            "+",
            "Lorg/reactivestreams/Subscriber;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onInitComputationHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onInitIoHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onInitNewThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onInitSingleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onIoHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onObservableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Observable;",
            "+",
            "Lio/reactivex/Observable;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onObservableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<-",
            "Lio/reactivex/Observable;",
            "-",
            "Lio/reactivex/Observer;",
            "+",
            "Lio/reactivex/Observer;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onScheduleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/lang/Runnable;",
            "+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onSingleAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Single;",
            "+",
            "Lio/reactivex/Single;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onSingleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field static volatile onSingleSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<-",
            "Lio/reactivex/Single;",
            "-",
            "Lio/reactivex/SingleObserver;",
            "+",
            "Lio/reactivex/SingleObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lio/reactivex/functions/BiFunction;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiFunction",
            "<TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    invoke-static {p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Scheduler Callable result can\'t be null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    return-object v0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 3
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "Scheduler Callable result can\'t be null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string/jumbo v1, "Scheduler Callable can\'t be null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method public static initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string/jumbo v1, "Scheduler Callable can\'t be null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method public static initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string/jumbo v1, "Scheduler Callable can\'t be null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method public static initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string/jumbo v1, "Scheduler Callable can\'t be null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method static isBug(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    if-nez v0, :cond_0

    instance-of v0, p0, Lio/reactivex/exceptions/MissingBackpressureException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_4

    instance-of v0, p0, Lio/reactivex/exceptions/CompositeException;

    if-nez v0, :cond_5

    return v1

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    return v2

    :cond_4
    return v2

    :cond_5
    return v2
.end method

.method public static onAssembly(Lio/reactivex/Completable;)Lio/reactivex/Completable;
    .locals 2
    .param p0    # Lio/reactivex/Completable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableAssembly:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Completable;

    return-object v1
.end method

.method public static onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;
    .locals 2
    .param p0    # Lio/reactivex/Flowable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable",
            "<TT;>;)",
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableAssembly:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Flowable;

    return-object v1
.end method

.method public static onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .param p0    # Lio/reactivex/Observable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable",
            "<TT;>;)",
            "Lio/reactivex/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observable;

    return-object v1
.end method

.method public static onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;
    .locals 2
    .param p0    # Lio/reactivex/Single;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Single",
            "<TT;>;)",
            "Lio/reactivex/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleAssembly:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Single;

    return-object v1
.end method

.method public static onComputationScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0    # Lio/reactivex/Scheduler;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    sget-object v2, Lio/reactivex/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/functions/Consumer;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->isBug(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lio/reactivex/exceptions/UndeliverableException;

    invoke-direct {v1, p0}, Lio/reactivex/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {v2, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static onIoScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0    # Lio/reactivex/Scheduler;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onIoHandler:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string/jumbo v1, "run is null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static onSingleScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0    # Lio/reactivex/Scheduler;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleHandler:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static onSubscribe(Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 2
    .param p0    # Lio/reactivex/Completable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/CompletableObserver;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableSubscribe:Lio/reactivex/functions/BiFunction;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/CompletableObserver;

    return-object v1
.end method

.method public static onSubscribe(Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 2
    .param p0    # Lio/reactivex/Observable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/Observer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable",
            "<TT;>;",
            "Lio/reactivex/Observer",
            "<-TT;>;)",
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/functions/BiFunction;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observer;

    return-object v1
.end method

.method public static onSubscribe(Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 2
    .param p0    # Lio/reactivex/Single;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/SingleObserver;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Single",
            "<TT;>;",
            "Lio/reactivex/SingleObserver",
            "<-TT;>;)",
            "Lio/reactivex/SingleObserver",
            "<-TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleSubscribe:Lio/reactivex/functions/BiFunction;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/SingleObserver;

    return-object v1
.end method

.method public static onSubscribe(Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 2
    .param p0    # Lio/reactivex/Flowable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/reactivestreams/Subscriber;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable",
            "<TT;>;",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableSubscribe:Lio/reactivex/functions/BiFunction;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Subscriber;

    return-object v1
.end method

.method static uncaught(Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
