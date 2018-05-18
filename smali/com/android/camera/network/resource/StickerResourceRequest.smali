.class public Lcom/android/camera/network/resource/StickerResourceRequest;
.super Lcom/android/camera/network/net/BaseGalleryRequest;
.source "StickerResourceRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "http://micloudweb.preview.n.xiaomi.com/gallery/public/resource/info"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/camera/network/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    const-string/jumbo v0, "id"

    const-wide v2, 0x1a07bf95260020L

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/network/resource/StickerResourceRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/network/net/base/BaseRequest;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/network/resource/StickerResourceRequest;->setUseCache(Z)Lcom/android/camera/network/net/base/BaseRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x2241353000L

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/network/resource/StickerResourceRequest;->setCacheExpires(J)Lcom/android/camera/network/net/base/BaseRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/network/resource/StickerResourceRequest;->setCacheSoftTtl(J)Lcom/android/camera/network/net/base/BaseRequest;

    invoke-static {}, Lcom/android/camera/network/net/HttpManager;->getInstance()Lcom/android/camera/network/net/HttpManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/network/resource/StickerResourceRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sticker_list_default"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/network/net/HttpManager;->putDefaultCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v9, "galleryResourceInfoList"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string/jumbo v9, "expireAt"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/network/resource/StickerResourceRequest;->setCacheSoftTtl(J)Lcom/android/camera/network/net/base/BaseRequest;

    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/android/camera/sticker/StickerInfo;

    invoke-direct {v8}, Lcom/android/camera/sticker/StickerInfo;-><init>()V

    const-string/jumbo v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/camera/sticker/StickerInfo;->id:J

    const-string/jumbo v9, "icon"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/camera/sticker/StickerInfo;->icon:Ljava/lang/String;

    const-string/jumbo v9, "extraInfo"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/camera/sticker/StickerInfo;->extra:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/camera/network/resource/StickerResourceRequest;->deliverResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v9, Lcom/android/camera/network/net/base/ErrorCode;->HANDLE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/camera/network/resource/StickerResourceRequest;->deliverError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    sget-object v9, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/camera/network/resource/StickerResourceRequest;->deliverError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
