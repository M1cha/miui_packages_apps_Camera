.class Lcom/android/gallery3d/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# instance fields
.field private final mInterface:Lcom/android/gallery3d/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifReader;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lcom/android/gallery3d/exif/ExifReader;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {p1, v6}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object v4

    new-instance v2, Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v1

    :goto_0
    const/4 v6, 0x5

    if-eq v1, v6, :cond_5

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_0
    new-instance v6, Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->registerForTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    :cond_1
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->getCompressedImageSize()I

    move-result v3

    if-lez v3, :cond_3

    new-array v0, v3, [B

    array-length v6, v0

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "ExifReader"

    const-string/jumbo v7, "Failed to read the compressed thumbnail"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "ExifReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "compressedImageSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->getStripSize()I

    move-result v6

    new-array v0, v6, [B

    array-length v6, v0

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifParser;->getStripIndex()I

    move-result v6

    invoke-virtual {v2, v6, v0}, Lcom/android/gallery3d/exif/ExifData;->setStripBytes(I[B)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v6, "ExifReader"

    const-string/jumbo v7, "Failed to read the strip bytes"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
