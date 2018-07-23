.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 24
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 42
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 44
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v12, 0x0

    .line 45
    .local v12, "serverDate":J
    const-wide/16 v16, 0x0

    .line 46
    .local v16, "serverExpires":J
    const-wide/16 v18, 0x0

    .line 47
    .local v18, "softExpire":J
    const-wide/16 v8, 0x0

    .line 48
    .local v8, "maxAge":J
    const/4 v4, 0x0

    .line 50
    .local v4, "hasCacheControl":Z
    const/4 v14, 0x0

    .line 53
    .local v14, "serverEtag":Ljava/lang/String;
    const-string/jumbo v21, "Date"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    .local v5, "headerValue":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 58
    :goto_0
    const-string/jumbo v21, "Cache-Control"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "headerValue":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 59
    .restart local v5    # "headerValue":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 77
    :cond_0
    const-string/jumbo v21, "Expires"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "headerValue":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 78
    .restart local v5    # "headerValue":Ljava/lang/String;
    if-nez v5, :cond_9

    .line 82
    :goto_1
    const-string/jumbo v21, "ETag"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "serverEtag":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 86
    .restart local v14    # "serverEtag":Ljava/lang/String;
    if-nez v4, :cond_a

    .line 88
    const-wide/16 v22, 0x0

    cmp-long v21, v12, v22

    if-gtz v21, :cond_b

    const/16 v21, 0x1

    :goto_2
    if-nez v21, :cond_1

    cmp-long v21, v16, v12

    if-gez v21, :cond_c

    const/16 v21, 0x1

    :goto_3
    if-nez v21, :cond_1

    .line 90
    sub-long v22, v16, v12

    add-long v18, v10, v22

    .line 93
    :cond_1
    :goto_4
    new-instance v3, Lcom/android/volley/Cache$Entry;

    invoke-direct {v3}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 94
    .local v3, "entry":Lcom/android/volley/Cache$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/volley/Cache$Entry;->data:[B

    .line 95
    iput-object v14, v3, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 96
    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 97
    iget-wide v0, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v3, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 98
    iput-wide v12, v3, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 99
    iput-object v6, v3, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 101
    return-object v3

    .line 55
    .end local v3    # "entry":Lcom/android/volley/Cache$Entry;
    :cond_2
    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_0

    .line 60
    :cond_3
    const/4 v4, 0x1

    .line 61
    const-string/jumbo v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 62
    .local v20, "tokens":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_0

    .line 63
    aget-object v21, v20, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, "token":Ljava/lang/String;
    const-string/jumbo v21, "no-cache"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 65
    :cond_4
    const/16 v21, 0x0

    return-object v21

    .line 64
    :cond_5
    const-string/jumbo v21, "no-store"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 66
    const-string/jumbo v21, "max-age="

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 71
    const-string/jumbo v21, "must-revalidate"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 72
    :cond_6
    const-wide/16 v8, 0x0

    .line 62
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 68
    :cond_7
    const/16 v21, 0x8

    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto :goto_6

    .line 69
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_6

    .line 71
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const-string/jumbo v21, "proxy-revalidate"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    goto :goto_6

    .line 79
    .end local v7    # "i":I
    .end local v15    # "token":Ljava/lang/String;
    .end local v20    # "tokens":[Ljava/lang/String;
    :cond_9
    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v16

    goto/16 :goto_1

    .line 87
    :cond_a
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v8

    add-long v18, v10, v22

    goto/16 :goto_4

    .line 88
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_3
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 122
    const-string/jumbo v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 135
    :cond_0
    const-string/jumbo v4, "ISO-8859-1"

    return-object v4

    .line 124
    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "params":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 126
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 125
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_3
    aget-object v4, v2, v6

    const-string/jumbo v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    const/4 v4, 0x1

    aget-object v4, v2, v4

    return-object v4
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v2, 0x0

    return-wide v2
.end method
