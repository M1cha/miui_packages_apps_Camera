.class final Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;
.super Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.source "FlowableObserveOn.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber",
        "<TT;>;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3f1a97e8f84a341aL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/Scheduler$Worker;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;-><init>(Lio/reactivex/Scheduler$Worker;ZI)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v2, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    instance-of v2, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    invoke-direct {v2, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-ne v1, v4, :cond_1

    iput v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    :cond_3
    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->limit:I

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v3, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    goto :goto_0
.end method

.method runAsync()V
    .locals 18

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    :cond_1
    :goto_1
    cmp-long v14, v4, v10

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    :try_start_0
    invoke-interface {v9}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    if-eqz v12, :cond_3

    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    move-result v14

    if-nez v14, :cond_4

    if-nez v6, :cond_5

    invoke-interface {v2, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    iget v14, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->limit:I

    int-to-long v14, v14

    cmp-long v14, v4, v14

    if-nez v14, :cond_1

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v14, v10, v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v4

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v10

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v14, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    const-wide/16 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-static {v7}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v14}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-interface {v9}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    invoke-interface {v2, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v14}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    cmp-long v14, v4, v10

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    invoke-interface {v9}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v2}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    move-result v14

    if-nez v14, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->get()I

    move-result v13

    if-eq v8, v13, :cond_8

    move v8, v13

    goto/16 :goto_0

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iput-wide v4, v0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    neg-int v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    move-result v8

    if-nez v8, :cond_0

    return-void
.end method

.method runBackfused()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    if-nez v0, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v3}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_3
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method runSync()V
    .locals 12

    const/4 v4, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    :cond_0
    :goto_0
    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :goto_1
    cmp-long v10, v2, v6

    if-eqz v10, :cond_3

    :try_start_0
    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    if-nez v10, :cond_1

    if-eqz v8, :cond_2

    invoke-interface {v0, v8}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v10}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v10}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v10}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_3
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    if-nez v10, :cond_4

    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->get()I

    move-result v9

    if-eq v4, v9, :cond_6

    move v4, v9

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v10}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_6
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    neg-int v10, v4

    invoke-virtual {p0, v10}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method
