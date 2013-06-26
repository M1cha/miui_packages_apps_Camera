.class public interface abstract Lcom/google/zxing/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# virtual methods
.method public abstract decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
