.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .param p2, "network"    # Lcom/android/volley/Network;
    .param p3, "cache"    # Lcom/android/volley/Cache;
    .param p4, "delivery"    # Lcom/android/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 58
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    .line 60
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 61
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 62
    return-void
.end method

.method private addTrafficStatsTag(Lcom/android/volley/Request;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p2, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 145
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 146
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    .line 71
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 83
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .local v3, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_1
    const-string/jumbo v6, "network-queue-take"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 107
    invoke-direct {p0, v3}, Lcom/android/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/android/volley/Request;)V

    .line 110
    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v6, v3}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v2

    .line 111
    .local v2, "networkResponse":Lcom/android/volley/NetworkResponse;
    const-string/jumbo v6, "network-http-complete"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 115
    iget-boolean v6, v2, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-nez v6, :cond_4

    .line 121
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v4

    .line 122
    .local v4, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const-string/jumbo v6, "network-parse-complete"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v6

    if-nez v6, :cond_5

    .line 132
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/volley/Request;->markDelivered()V

    .line 133
    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v6, v3, v4}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 134
    .end local v2    # "networkResponse":Lcom/android/volley/NetworkResponse;
    .end local v4    # "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    :catch_0
    move-exception v5

    .line 135
    .local v5, "volleyError":Lcom/android/volley/VolleyError;
    invoke-direct {p0, v3, v5}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 89
    .end local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .end local v5    # "volleyError":Lcom/android/volley/VolleyError;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-boolean v6, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v6, :cond_0

    .line 92
    return-void

    .line 103
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_3
    :try_start_2
    const-string/jumbo v6, "network-discard-cancelled"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, "Unhandled exception %s"

    invoke-static {v0, v7, v6}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v7, Lcom/android/volley/VolleyError;

    invoke-direct {v7, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v6, v3, v7}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    const-string/jumbo v6, "not-modified"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local v4    # "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    :cond_5
    iget-object v6, v4, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v6, :cond_2

    .line 127
    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v3}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v6, v7, v8}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 128
    const-string/jumbo v6, "network-cache-written"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method
