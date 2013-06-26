.class public final Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final format:Lcom/google/zxing/BarcodeFormat;

.field private final rawBytes:[B

.field private resultMetadata:Ljava/util/Hashtable;

.field private resultPoints:[Lcom/google/zxing/ResultPoint;

.field private final text:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    .locals 7
    .parameter "text"
    .parameter "rawBytes"
    .parameter "resultPoints"
    .parameter "format"

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 2
    .parameter "text"
    .parameter "rawBytes"
    .parameter "resultPoints"
    .parameter "format"
    .parameter "timestamp"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text and bytes are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/google/zxing/Result;->rawBytes:[B

    .line 53
    iput-object p3, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 54
    iput-object p4, p0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    .line 56
    iput-wide p5, p0, Lcom/google/zxing/Result;->timestamp:J

    .line 57
    return-void
.end method


# virtual methods
.method public addResultPoints([Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .parameter "newPoints"

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    if-nez v1, :cond_1

    .line 122
    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    .line 125
    .local v0, allPoints:[Lcom/google/zxing/ResultPoint;
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    iget-object v2, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    goto :goto_0
.end method

.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    return-object v0
.end method

.method public putAllMetadata(Ljava/util/Hashtable;)V
    .locals 4
    .parameter "metadata"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v3, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    if-nez v3, :cond_1

    .line 108
    iput-object p1, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    .line 118
    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 111
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultMetadataType;

    .line 113
    .local v1, key:Lcom/google/zxing/ResultMetadataType;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 114
    .local v2, value:Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/Result;->rawBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    goto :goto_0
.end method
