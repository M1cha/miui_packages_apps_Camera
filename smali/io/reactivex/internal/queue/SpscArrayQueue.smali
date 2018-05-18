.class public final Lio/reactivex/internal/queue/SpscArrayQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SpscArrayQueue.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/SimpleQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<TE;>;",
        "Lio/reactivex/internal/fuseable/SimplePlainQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x11fe70baff9afb41L


# instance fields
.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final lookAheadStep:I

.field final mask:I

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/queue/SpscArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-static {p1}, Lio/reactivex/internal/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->mask:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    div-int/lit8 v0, p1, 0x4

    sget-object v1, Lio/reactivex/internal/queue/SpscArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->lookAheadStep:I

    return-void
.end method


# virtual methods
.method calcElementOffset(J)I
    .locals 3

    long-to-int v0, p1

    iget v1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method calcElementOffset(JI)I
    .locals 1

    long-to-int v0, p1

    and-int/2addr v0, p3

    return v0
.end method

.method public clear()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public isEmpty()Z
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lvElement(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    iget v2, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->mask:I

    iget-object v5, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->calcElementOffset(JI)I

    move-result v3

    iget-wide v8, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerLookAhead:J

    cmp-long v5, v0, v8

    if-gez v5, :cond_2

    move v5, v6

    :goto_0
    if-nez v5, :cond_0

    iget v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->lookAheadStep:I

    int-to-long v8, v4

    add-long/2addr v8, v0

    invoke-virtual {p0, v8, v9, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->calcElementOffset(JI)I

    move-result v5

    invoke-virtual {p0, v5}, Lio/reactivex/internal/queue/SpscArrayQueue;->lvElement(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->lvElement(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_0
    :goto_1
    invoke-virtual {p0, v3, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->soElement(ILjava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v8, v0

    invoke-virtual {p0, v8, v9}, Lio/reactivex/internal/queue/SpscArrayQueue;->soProducerIndex(J)V

    return v6

    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "Null is not a valid element"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    int-to-long v8, v4

    add-long/2addr v8, v0

    iput-wide v8, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerLookAhead:J

    goto :goto_1

    :cond_4
    return v7
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->calcElementOffset(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->lvElement(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lio/reactivex/internal/queue/SpscArrayQueue;->soConsumerIndex(J)V

    invoke-virtual {p0, v1, v6}, Lio/reactivex/internal/queue/SpscArrayQueue;->soElement(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    return-object v6
.end method

.method soConsumerIndex(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method soElement(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/queue/SpscArrayQueue;->lazySet(ILjava/lang/Object;)V

    return-void
.end method

.method soProducerIndex(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method
