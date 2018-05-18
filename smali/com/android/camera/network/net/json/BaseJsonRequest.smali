.class public abstract Lcom/android/camera/network/net/json/BaseJsonRequest;
.super Lcom/android/camera/network/net/base/VolleyRequest;
.source "BaseJsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/network/net/base/VolleyRequest",
        "<",
        "Lorg/json/JSONObject;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHeaders:Ljava/util/Map;
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

.field private mMethod:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mMethod:I

    iput p1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mMethod:I

    iput-object p2, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private appendUrlParams()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/network/net/json/BaseJsonRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {p0, v2, v3}, Lcom/android/camera/network/net/json/BaseJsonRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    return-object v1
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Encoding not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected final createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/network/net/json/BaseJsonRequest;->appendUrlParams()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mMethod:I

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_0
    new-instance v0, Lcom/android/camera/network/net/json/JsonObjectRequest;

    iget v3, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mMethod:I

    invoke-direct {v0, v3, v1, p1, p2}, Lcom/android/camera/network/net/json/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v3, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/android/camera/network/net/json/JsonObjectRequest;->setParams(Ljava/util/Map;)V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mHeaders:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/network/net/json/BaseJsonRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/android/camera/network/net/json/JsonObjectRequest;->setHeaders(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/network/net/json/BaseJsonRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/network/net/json/JsonObjectRequest;->setCacheKey(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/network/net/json/BaseJsonRequest;->appendUrlParams()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/network/net/json/BaseJsonRequest;->deliverError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
