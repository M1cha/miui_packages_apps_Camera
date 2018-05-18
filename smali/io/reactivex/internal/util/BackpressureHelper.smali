.class public final Lio/reactivex/internal/util/BackpressureHelper;
.super Ljava/lang/Object;
.source "BackpressureHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 9

    const-wide v6, 0x7fffffffffffffffL

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    return-wide v6

    :cond_1
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v0
.end method

.method public static addCap(JJ)J
    .locals 4

    add-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static produced(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 11

    const-wide v8, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    return-wide v8

    :cond_1
    sub-long v2, v0, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "More produced than requested: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    const-wide/16 v2, 0x0

    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2

    :cond_3
    move v4, v5

    goto :goto_0
.end method
