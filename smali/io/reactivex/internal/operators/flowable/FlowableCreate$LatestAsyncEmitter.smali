.class final Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;
.super Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;
.source "FlowableCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method drain()V
    .locals 14

    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-nez v9, :cond_2

    const/4 v6, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->actual:Lorg/reactivestreams/Subscriber;

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->get()J

    move-result-wide v10

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v9, v2, v10

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_3

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v4, 0x0

    :goto_1
    if-nez v1, :cond_5

    :cond_1
    if-nez v4, :cond_7

    invoke-interface {v0, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_1

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->complete()V

    :goto_2
    return-void

    :cond_6
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error(Ljava/lang/Throwable;)Z

    goto :goto_2

    :cond_7
    cmp-long v9, v2, v10

    if-nez v9, :cond_8

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_a

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    const/4 v4, 0x0

    :goto_3
    if-nez v1, :cond_c

    :cond_8
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_9

    invoke-static {p0, v2, v3}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_9
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v4, 0x1

    goto :goto_3

    :cond_c
    if-eqz v4, :cond_8

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    if-nez v5, :cond_d

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->complete()V

    :goto_4
    return-void

    :cond_d
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error(Ljava/lang/Throwable;)Z

    goto :goto_4
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method onRequested()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    return-void
.end method

.method onUnsubscribed()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :goto_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->drain()V

    return v2

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
