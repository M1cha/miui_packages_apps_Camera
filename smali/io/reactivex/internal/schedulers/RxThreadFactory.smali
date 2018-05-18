.class public final Lio/reactivex/internal/schedulers/RxThreadFactory;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "RxThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/RxThreadFactory$RxCustomThread;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6c1ac31a817da8a4L


# instance fields
.field final nonBlocking:Z

.field final prefix:Ljava/lang/String;

.field final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    iput p2, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->priority:I

    iput-boolean p3, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->nonBlocking:Z

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/RxThreadFactory;->incrementAndGet()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->nonBlocking:Z

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_0
    iget v3, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v2

    :cond_0
    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory$RxCustomThread;

    invoke-direct {v2, p1, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory$RxCustomThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RxThreadFactory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
