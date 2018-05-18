.class public abstract Lcom/android/camera/network/net/base/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/android/camera/network/net/base/ResponseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/network/net/base/ResponseErrorHandler;"
    }
.end annotation


# static fields
.field private static mAppResponseErrorHandler:Lcom/android/camera/network/net/base/ResponseErrorHandler;


# instance fields
.field protected mCacheExpires:J

.field protected mCacheSoftTtl:J

.field private mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestError:Lcom/android/camera/network/net/base/RequestError;

.field protected mResponse:[Ljava/lang/Object;

.field private mTag:Ljava/lang/Object;

.field private mUseCache:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mTag:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mUseCache:Z

    iput-wide v2, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    iput-wide v2, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheSoftTtl:J

    return-void
.end method


# virtual methods
.method public final addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected deliverError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/android/camera/network/net/base/RequestError;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/network/net/base/RequestError;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mRequestError:Lcom/android/camera/network/net/base/RequestError;

    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/network/net/base/ResponseDispatcher;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/android/camera/network/net/base/BaseRequest;->mAppResponseErrorHandler:Lcom/android/camera/network/net/base/ResponseErrorHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/network/net/base/BaseRequest;->mAppResponseErrorHandler:Lcom/android/camera/network/net/base/ResponseErrorHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/network/net/base/ResponseErrorHandler;->onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected varargs deliverResponse([Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mResponse:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/network/net/base/ResponseDispatcher;->onResponse([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract execute()V
.end method

.method public final execute(Lcom/android/camera/network/net/base/ResponseListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/base/BaseRequest;->setOnResponseListener(Lcom/android/camera/network/net/base/ResponseListener;)Lcom/android/camera/network/net/base/BaseRequest;

    invoke-virtual {p0}, Lcom/android/camera/network/net/base/BaseRequest;->execute()V

    return-void
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method protected final isUseCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mUseCache:Z

    return v0
.end method

.method public abstract onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public final setCacheExpires(J)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    return-object p0
.end method

.method public final setCacheSoftTtl(J)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheSoftTtl:J

    return-object p0
.end method

.method public final setOnResponseListener(Lcom/android/camera/network/net/base/ResponseListener;)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/network/net/base/ResponseListener;",
            ")",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/network/net/base/ResponseDispatcher;

    invoke-direct {v0, p1}, Lcom/android/camera/network/net/base/ResponseDispatcher;-><init>(Lcom/android/camera/network/net/base/ResponseListener;)V

    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    return-object p0
.end method

.method public final setUseCache(Z)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mUseCache:Z

    return-object p0
.end method
