.class public Lcom/android/volley/toolbox/RequestFuture;
.super Ljava/lang/Object;
.source "RequestFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mException:Lcom/android/volley/VolleyError;

.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultReceived:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 65
    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 6
    .param p1, "timeoutMs"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-nez v1, :cond_2

    .line 106
    iget-boolean v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    if-nez v1, :cond_3

    .line 110
    if-eqz p1, :cond_4

    .line 112
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_5

    .line 120
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    if-eqz v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 103
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 111
    :cond_4
    const-wide/16 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 117
    :cond_5
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 121
    :cond_6
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static newFuture()Lcom/android/volley/toolbox/RequestFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/volley/toolbox/RequestFuture",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/android/volley/toolbox/RequestFuture;

    invoke-direct {v0}, Lcom/android/volley/toolbox/RequestFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    const/4 v1, 0x0

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 81
    return v1

    :cond_0
    monitor-exit p0

    .line 74
    return v1

    .line 78
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v0

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    const/4 v0, 0x0

    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    monitor-enter p0

    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 151
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 142
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 143
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 145
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequest(Lcom/android/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    .line 69
    return-void
.end method
