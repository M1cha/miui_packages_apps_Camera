.class public Lcom/android/camera/network/net/BaseGalleryRequest;
.super Lcom/android/camera/network/net/json/BaseJsonRequest;
.source "BaseGalleryRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/network/net/json/BaseJsonRequest",
        "<",
        "Lcom/android/camera/network/net/GalleryResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/network/net/json/BaseJsonRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private checkExecuteCondition()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/android/camera/network/net/base/ErrorCode;

    const-string/jumbo v1, "CTA not confirmed."

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/camera/network/net/BaseGalleryRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/network/net/BaseGalleryRequest;->isUseCache()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/network/util/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/android/camera/network/net/base/ErrorCode;

    const-string/jumbo v1, "Network not connected."

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/camera/network/net/BaseGalleryRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public final execute()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/network/net/BaseGalleryRequest;->checkExecuteCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/network/net/json/BaseJsonRequest;->execute()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic handleResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/BaseGalleryRequest;->handleResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected final handleResponse(Lorg/json/JSONObject;)V
    .locals 7

    if-eqz p1, :cond_2

    :try_start_0
    const-string/jumbo v4, "code"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "code"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v4, Lcom/android/camera/network/net/base/ErrorCode;->SUCCESS:Lcom/android/camera/network/net/base/ErrorCode;

    iget v4, v4, Lcom/android/camera/network/net/base/ErrorCode;->CODE:I

    if-ne v0, v4, :cond_1

    const-string/jumbo v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/camera/network/net/base/ErrorCode;->BODY_EMPTY:Lcom/android/camera/network/net/base/ErrorCode;

    const-string/jumbo v5, "response empty data"

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/camera/network/net/BaseGalleryRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/android/camera/network/net/GalleryResponse;

    invoke-direct {v3}, Lcom/android/camera/network/net/GalleryResponse;-><init>()V

    const-string/jumbo v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/network/net/GalleryResponse;->data:Lorg/json/JSONObject;

    const-string/jumbo v4, "syncTag"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/network/net/GalleryResponse;->syncTag:Ljava/lang/String;

    const-string/jumbo v4, "syncToken"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/network/net/GalleryResponse;->syncToken:Ljava/lang/String;

    const-string/jumbo v4, "lastPage"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/camera/network/net/GalleryResponse;->isLastPage:Z

    invoke-virtual {p0, v3}, Lcom/android/camera/network/net/BaseGalleryRequest;->onRequestSuccess(Lcom/android/camera/network/net/GalleryResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/camera/network/net/base/ErrorCode;->HANDLE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/camera/network/net/BaseGalleryRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v4, "description"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/camera/network/net/base/ErrorCode;->SERVER_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {p0, v4, v1, p1}, Lcom/android/camera/network/net/BaseGalleryRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    const-string/jumbo v5, "response has no code"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/camera/network/net/BaseGalleryRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/network/net/BaseGalleryRequest;->deliverError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "BaseGalleryRequest"

    const-string/jumbo v1, "%s onRequestError:%s | %s "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/network/net/BaseGalleryRequest;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p3, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BaseGalleryRequest"

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    const-string/jumbo v0, "BaseGalleryRequest"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRequestSuccess(Lcom/android/camera/network/net/GalleryResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/camera/network/net/GalleryResponse;->data:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/android/camera/network/net/BaseGalleryRequest;->onRequestSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/network/net/BaseGalleryRequest;->deliverResponse([Ljava/lang/Object;)V

    return-void
.end method
