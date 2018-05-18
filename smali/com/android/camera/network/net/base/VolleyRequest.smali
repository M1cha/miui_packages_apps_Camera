.class public abstract Lcom/android/camera/network/net/base/VolleyRequest;
.super Lcom/android/camera/network/net/base/BaseRequest;
.source "VolleyRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/network/net/base/BaseRequest",
        "<TE;>;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/network/net/base/BaseRequest;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private releaseSyncExecuteLock()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation
.end method

.method public execute()V
    .locals 6

    invoke-virtual {p0, p0, p0}, Lcom/android/camera/network/net/base/VolleyRequest;->createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x2710

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->isUseCache()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    :cond_1
    invoke-static {}, Lcom/android/camera/network/net/HttpManager;->getInstance()Lcom/android/camera/network/net/HttpManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1, v2}, Lcom/android/camera/network/net/HttpManager;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method protected final handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mCacheExpires:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/network/net/base/VolleyRequest;->onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract handleResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->NET_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    instance-of v2, p1, Lcom/android/camera/network/net/base/RequestError;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/camera/network/net/base/RequestError;

    invoke-virtual {v2}, Lcom/android/camera/network/net/base/RequestError;->getErrorCode()Lcom/android/camera/network/net/base/ErrorCode;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/base/VolleyRequest;->handleResponse(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    instance-of v1, v1, Lcom/android/camera/network/net/base/Cacheable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    check-cast v0, Lcom/android/camera/network/net/base/Cacheable;

    iget-wide v2, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mCacheExpires:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/network/net/base/Cacheable;->isFromCache()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/network/net/HttpManager;->getInstance()Lcom/android/camera/network/net/HttpManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/camera/network/net/base/Cacheable;->getData()[B

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mCacheExpires:J

    iget-wide v6, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mCacheSoftTtl:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/network/net/HttpManager;->putToCache(Ljava/lang/String;[BJJ)V

    :cond_0
    return-void
.end method
