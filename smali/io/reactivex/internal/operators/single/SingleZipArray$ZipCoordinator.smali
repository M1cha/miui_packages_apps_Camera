.class final Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SingleZipArray.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleZipArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4d1e29153b0426a9L


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field final values:[Ljava/lang/Object;

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;ILio/reactivex/functions/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TR;>;I",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->actual:Lio/reactivex/SingleObserver;

    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    new-array v1, p2, [Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    iput-object v1, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    new-array v2, p2, [Ljava/lang/Object;

    iput-object v2, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    invoke-direct {v2, p0, v0}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;-><init>(Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->getAndSet(I)I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method disposeExcept(I)V
    .locals 4

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_1
    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method innerError(Ljava/lang/Throwable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->getAndSet(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->disposeExcept(I)V

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method innerSuccess(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    aput-object p1, v2, p2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->decrementAndGet()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->values:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "The zipper returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v2, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v2, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->get()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
