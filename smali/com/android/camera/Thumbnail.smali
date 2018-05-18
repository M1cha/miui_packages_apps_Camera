.class public Lcom/android/camera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-static {p2, p3, p4}, Lcom/android/camera/Thumbnail;->adjustImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static adjustImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 14

    if-nez p1, :cond_0

    xor-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_0

    return-object p0

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    rem-int/lit16 v9, p1, 0xb4

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v9, p1

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz p2, :cond_2

    const/4 v9, -0x1

    :goto_1
    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    int-to-float v12, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v9, v0, v3

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-int v10, v0, v2

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v7, 0x0

    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1, p0, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v7

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v9, "Thumbnail"

    const-string/jumbo v10, "Failed to rotate thumbnail"

    invoke-static {v9, v10, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v8

    const-string/jumbo v9, "Thumbnail"

    const-string/jumbo v10, "Failed to rotate thumbnail"

    invoke-static {v9, v10, v8}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static createBitmap([BIZI)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p3, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    array-length v1, p0

    invoke-static {p0, v2, v1, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    rem-int/lit16 p1, p1, 0x168

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p1, :cond_1

    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_1
    if-eqz p2, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eq v9, v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v9

    :catch_0
    move-exception v10

    const-string/jumbo v1, "Thumbnail"

    const-string/jumbo v2, "Failed to rotate thumbnail"

    invoke-static {v1, v2, v10}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v0
.end method

.method public static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "Thumbnail"

    const-string/jumbo v1, "Failed to create thumbnail from null bitmap"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    new-instance v0, Lcom/android/camera/Thumbnail;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    return-object v0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;
    .locals 4

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p3, v0, p1, p4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;
    .locals 16

    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "_data"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "orientation"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-wide/16 v12, -0x1

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v11, :cond_4

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    :goto_1
    const/4 v10, 0x1

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_1
    const/4 v8, 0x0

    if-eqz v10, :cond_7

    if-eqz v11, :cond_6

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v2, 0x1

    invoke-static {v15, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_2
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v8, v14, v1}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    return-object v2

    :cond_3
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "_data"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_5
    throw v2

    :cond_6
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v2, 0x1

    invoke-static {v15, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    const/4 v0, 0x0

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v5, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const-wide/16 v10, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    if-nez v0, :cond_1

    const-string/jumbo v9, "Thumbnail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fail to get thumbnail for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_0
    :try_start_2
    invoke-virtual {v5, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v9, "Thumbnail"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v9, "Thumbnail"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v2

    const-string/jumbo v9, "Thumbnail"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_5
    const-string/jumbo v9, "Thumbnail"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    const-string/jumbo v9, "Thumbnail"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_7
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_2
    throw v9

    :catch_5
    move-exception v2

    const-string/jumbo v10, "Thumbnail"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v8, p2, :cond_2

    int-to-float v9, p2

    int-to-float v10, v8

    div-float v6, v9, v10

    int-to-float v9, v8

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v9, v4

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v9, 0x1

    invoke-static {v0, v7, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static getImageBucketIds()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 20

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "limit"

    const-string/jumbo v7, "1"

    invoke-virtual {v1, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const-string/jumbo v1, "orientation"

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-string/jumbo v1, "datetaken"

    const/4 v5, 0x2

    aput-object v1, v3, v5

    const-string/jumbo v1, "_data"

    const/4 v5, 0x3

    aput-object v1, v3, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mime_type=\'image/jpeg\' AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Thumbnail;->getImageBucketIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "_size"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " > 0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "datetaken DESC,_id DESC"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const/4 v5, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v7, Lcom/android/camera/Thumbnail$Media;

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v7 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v7

    :cond_1
    const/16 v19, 0x1

    :cond_2
    if-eqz v19, :cond_6

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, v16

    move-object v12, v3

    move-object v13, v4

    move-object v15, v6

    :try_start_1
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_6

    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v7, Lcom/android/camera/Thumbnail$Media;

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v1, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v1, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v7 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v7

    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
.end method

.method public static getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I
    .locals 10

    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v2

    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v4

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_4

    if-eqz v4, :cond_1

    iget-wide v6, v2, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v8, v4, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, v2, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    return v5

    :cond_2
    iget-wide v6, v2, Lcom/android/camera/Thumbnail$Media;->id:J

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v5, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v5, v2, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_0
    move-object v3, v2

    :goto_1
    if-eqz v0, :cond_7

    iget-object v5, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v5, p0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v6, v3, Lcom/android/camera/Thumbnail$Media;->orientation:I

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "Thumbnail"

    const-string/jumbo v6, "exception in createImageThumbnail"

    invoke-static {v5, v6, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget-object v5, v4, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    return v5

    :cond_5
    iget-wide v6, v4, Lcom/android/camera/Thumbnail$Media;->id:J

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v5, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v5, v4, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_6
    :goto_2
    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v5, "Thumbnail"

    const-string/jumbo v6, "exception in createVideoThumbnail"

    invoke-static {v5, v6, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_7
    const/4 v5, 0x2

    return v5
.end method

.method public static getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;
    .locals 16

    new-instance v9, Ljava/io/File;

    const-string/jumbo v12, "last_thumb"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v13, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v2, v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v12, 0x0

    monitor-exit v13

    return-object v12

    :cond_0
    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v13

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v3, v12, v13}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/camera/Thumbnail;->setFromFile(Z)V

    :cond_1
    return-object v10

    :catch_0
    move-exception v6

    :goto_0
    :try_start_7
    const-string/jumbo v12, "Thumbnail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Fail to load bitmap. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v12, 0x0

    monitor-exit v13

    return-object v12

    :catchall_0
    move-exception v12

    :goto_1
    :try_start_9
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v12

    :goto_2
    monitor-exit v13

    throw v12

    :catchall_2
    move-exception v12

    move-object v4, v5

    move-object v1, v2

    move-object v7, v8

    goto :goto_2

    :catchall_3
    move-exception v12

    move-object v7, v8

    goto :goto_1

    :catchall_4
    move-exception v12

    move-object v1, v2

    move-object v7, v8

    goto :goto_1

    :catchall_5
    move-exception v12

    move-object v4, v5

    move-object v1, v2

    move-object v7, v8

    goto :goto_1

    :catch_1
    move-exception v6

    move-object v7, v8

    goto :goto_0

    :catch_2
    move-exception v6

    move-object v1, v2

    move-object v7, v8

    goto :goto_0

    :catch_3
    move-exception v6

    move-object v4, v5

    move-object v1, v2

    move-object v7, v8

    goto :goto_0
.end method

.method public static getLastThumbnailFromUriList(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Lcom/android/camera/Thumbnail;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            ")I"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1, p0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    return v2

    :cond_2
    invoke-static {p0, v1, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    aput-object v2, p1, v3

    const/4 v2, 0x1

    return v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public static getLastThumbnailUri(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v0

    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v4, v1, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    return-object v2

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-wide v2, v1, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v4, v0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    :cond_2
    iget-object v2, v1, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    return-object v2

    :cond_3
    return-object v6
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 20

    sget-object v16, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "limit"

    const-string/jumbo v7, "1"

    invoke-virtual {v1, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const-string/jumbo v1, "_data"

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-string/jumbo v1, "datetaken"

    const/4 v5, 0x2

    aput-object v1, v3, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Thumbnail;->getVideoBucketIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "_size"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " > 0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "datetaken DESC,_id DESC"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v7, Lcom/android/camera/Thumbnail$Media;

    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v7

    :cond_1
    const/16 v19, 0x1

    :cond_2
    if-eqz v19, :cond_6

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, v16

    move-object v12, v3

    move-object v13, v4

    move-object v15, v6

    :try_start_1
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_6

    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v7, Lcom/android/camera/Thumbnail$Media;

    const/4 v1, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v7

    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
.end method

.method private static getVideoBucketIds()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fromFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;)V
    .locals 12

    iget-object v8, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    if-nez v8, :cond_0

    const-string/jumbo v8, "Thumbnail"

    const-string/jumbo v9, "Fail to store bitmap. uri is null"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "last_thumb"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    sget-object v9, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v8, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v8, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    :goto_0
    monitor-exit v9

    return-void

    :catch_0
    move-exception v4

    :goto_1
    :try_start_5
    const-string/jumbo v8, "Thumbnail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fail to store bitmap. path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    :goto_2
    monitor-exit v9

    throw v8

    :catchall_1
    move-exception v8

    :goto_3
    :try_start_7
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v8

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_2

    :catchall_3
    move-exception v8

    move-object v5, v6

    goto :goto_3

    :catchall_4
    move-exception v8

    move-object v0, v1

    move-object v5, v6

    goto :goto_3

    :catchall_5
    move-exception v8

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v5, v6

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto :goto_1

    :catch_3
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_1
.end method

.method public setFromFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return-void
.end method
