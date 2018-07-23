.class Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .line 90
    iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 92
    iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 97
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelperKitkat;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelperKitkat;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/RectF;
    .param p4, "x4"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelperKitkat;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelperKitkat;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "colorMode"    # I

    .prologue
    const/4 v8, 0x0

    .line 569
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 573
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 575
    .local v3, "grayscale":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 576
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 577
    .local v4, "p":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 578
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 579
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 580
    .local v2, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 581
    invoke-virtual {v0, p1, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 582
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 584
    return-object v3

    .line 570
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "cm":Landroid/graphics/ColorMatrix;
    .end local v2    # "f":Landroid/graphics/ColorMatrixColorFilter;
    .end local v3    # "grayscale":Landroid/graphics/Bitmap;
    .end local v4    # "p":Landroid/graphics/Paint;
    :cond_0
    return-object p1
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 7
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "content"    # Landroid/graphics/RectF;
    .param p4, "fittingMode"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 283
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 286
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, p1

    div-float v1, v4, v5

    .line 287
    .local v1, "scale":F
    const/4 v4, 0x2

    if-eq p4, v4, :cond_0

    .line 290
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 292
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 295
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, p1

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float v2, v4, v6

    .line 297
    .local v2, "translateX":F
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float v3, v4, v6

    .line 299
    .local v3, "translateY":F
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 300
    return-object v0

    .line 288
    .end local v2    # "translateX":F
    .end local v3    # "translateY":F
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 550
    if-nez p1, :cond_1

    .line 551
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "bad argument to loadBitmap"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 550
    :cond_1
    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 553
    const/4 v2, 0x0

    .line 555
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 556
    const/4 v4, 0x0

    invoke-static {v2, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 558
    .local v0, "-l_4_R":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 563
    :goto_0
    return-object v0

    .line 560
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v3

    .line 562
    .local v3, "t":Ljava/io/IOException;
    const-string/jumbo v4, "PrintHelperKitkat"

    const-string/jumbo v5, "close fail "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 558
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "t":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .local v1, "-l_6_R":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 563
    :goto_1
    throw v1

    .line 560
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 561
    :catch_1
    move-exception v3

    .line 562
    .restart local v3    # "t":Ljava/io/IOException;
    const-string/jumbo v4, "PrintHelperKitkat"

    const-string/jumbo v5, "close fail "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSideLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 500
    if-gtz p2, :cond_1

    .line 501
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "bad argument to getScaledBitmap"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 500
    :cond_1
    if-eqz p1, :cond_0

    iget-object v13, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-eqz v13, :cond_0

    .line 504
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 505
    .local v10, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 506
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 508
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 509
    .local v12, "w":I
    iget v8, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 512
    .local v8, "h":I
    if-gtz v12, :cond_3

    .line 513
    :cond_2
    const/4 v13, 0x0

    return-object v13

    .line 512
    :cond_3
    if-lez v8, :cond_2

    .line 517
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 519
    .local v9, "imageSide":I
    const/4 v11, 0x1

    .line 520
    .local v11, "sampleSize":I
    :goto_0
    move/from16 v0, p2

    if-gt v9, v0, :cond_5

    .line 526
    if-gtz v11, :cond_6

    .line 527
    :cond_4
    const/4 v13, 0x0

    return-object v13

    .line 521
    :cond_5
    ushr-int/lit8 v9, v9, 0x1

    .line 522
    shl-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 526
    :cond_6
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    div-int/2addr v13, v11

    if-lez v13, :cond_4

    .line 529
    const/4 v7, 0x0

    .line 530
    .local v7, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .local v6, "-l_9_R":Ljava/lang/Object;
    monitor-enter v6

    .line 531
    :try_start_0
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v13, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 532
    iget-object v13, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 533
    iget-object v13, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v11, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 534
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 535
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :try_start_1
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v7}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 539
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .local v1, "-l_10_R":Ljava/lang/Object;
    monitor-enter v1

    .line 540
    const/4 v13, 0x0

    :try_start_2
    iput-object v13, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 541
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v6

    .line 535
    .end local v1    # "-l_10_R":Ljava/lang/Object;
    .end local v7    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v1

    .restart local v1    # "-l_10_R":Ljava/lang/Object;
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 541
    .restart local v7    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v2

    .local v2, "-l_11_R":Ljava/lang/Object;
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 539
    .end local v1    # "-l_10_R":Ljava/lang/Object;
    .end local v2    # "-l_11_R":Ljava/lang/Object;
    :catchall_2
    move-exception v3

    .local v3, "-l_12_R":Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .local v4, "-l_13_R":Ljava/lang/Object;
    monitor-enter v4

    .line 540
    const/4 v13, 0x0

    :try_start_5
    iput-object v13, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 541
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    :catchall_3
    move-exception v5

    .local v5, "-l_14_R":Ljava/lang/Object;
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v5
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 9
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 178
    iget v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 179
    .local v4, "fittingMode":I
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    .line 180
    .local v8, "printManager":Landroid/print/PrintManager;
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 181
    .local v7, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 184
    :goto_0
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v0, v7}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v6

    .line 189
    .local v6, "attr":Landroid/print/PrintAttributes;
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 271
    return-void

    .line 176
    .end local v4    # "fittingMode":I
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    .end local v7    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    .end local v8    # "printManager":Landroid/print/PrintManager;
    :cond_0
    return-void

    .line 182
    .restart local v4    # "fittingMode":I
    .restart local v7    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    .restart local v8    # "printManager":Landroid/print/PrintManager;
    :cond_1
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    goto :goto_0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 9
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 314
    iget v5, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 316
    .local v5, "fittingMode":I
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;I)V

    .line 477
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    .line 478
    .local v8, "printManager":Landroid/print/PrintManager;
    new-instance v7, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v7}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 479
    .local v7, "builder":Landroid/print/PrintAttributes$Builder;
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 481
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 483
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 486
    :goto_0
    invoke-virtual {v7}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v6

    .line 488
    .local v6, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 489
    return-void

    .line 482
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    :cond_0
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0

    .line 484
    :cond_1
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .prologue
    .line 133
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 134
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 143
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 144
    return-void
.end method

.method public setScaleMode(I)V
    .locals 0
    .param p1, "scaleMode"    # I

    .prologue
    .line 111
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 112
    return-void
.end method
