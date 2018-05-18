.class public final Lio/reactivex/internal/operators/single/SingleZipArray;
.super Lio/reactivex/Single;
.source "SingleZipArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleZipArray$SingletonArrayFunc;,
        Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;,
        Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final sources:[Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/SingleSource",
            "<+TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>([Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/SingleSource",
            "<+TT;>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->sources:[Lio/reactivex/SingleSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->zipper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->sources:[Lio/reactivex/SingleSource;

    array-length v1, v4

    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    new-instance v2, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    iget-object v5, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->zipper:Lio/reactivex/functions/Function;

    invoke-direct {v2, p1, v1, v5}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;-><init>(Lio/reactivex/SingleObserver;ILio/reactivex/functions/Function;)V

    invoke-interface {p1, v2}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    aget-object v5, v4, v6

    new-instance v6, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;

    new-instance v7, Lio/reactivex/internal/operators/single/SingleZipArray$SingletonArrayFunc;

    invoke-direct {v7, p0}, Lio/reactivex/internal/operators/single/SingleZipArray$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/single/SingleZipArray;)V

    invoke-direct {v6, p1, v7}, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v5, v6}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->isDisposed()Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v3, v4, v0

    if-eqz v3, :cond_3

    iget-object v5, v2, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    aget-object v5, v5, v0

    invoke-interface {v3, v5}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "One of the sources is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v0}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->innerError(Ljava/lang/Throwable;I)V

    return-void
.end method
