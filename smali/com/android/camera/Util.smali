.class public Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field private static sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/camera/Util;->sPixelDensity:F

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Util;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :cond_0
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 612
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 613
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 294
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 318
    if-le p0, p2, :cond_0

    .line 320
    .end local p2
    :goto_0
    return p2

    .line 319
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 320
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    .line 191
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 192
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 194
    .local v0, h:D
    if-gez p2, :cond_1

    move v2, v6

    .line 196
    .local v2, lowerBound:I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 200
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 210
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 194
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 196
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 205
    .restart local v3       #upperBound:I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 206
    goto :goto_2

    .line 207
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 210
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 173
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 177
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 178
    const/4 v1, 0x1

    .line 179
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 180
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 186
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"

    .prologue
    .line 604
    sget-object v1, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    monitor-enter v1

    .line 605
    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 105
    sget v0, Lcom/android/camera/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 298
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 616
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 619
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 620
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 621
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 625
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 628
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 629
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .parameter "currentActivity"

    .prologue
    const/4 v6, -0x1

    .line 493
    const/4 v1, -0x1

    .line 495
    .local v1, cameraId:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 498
    .local v3, intentCameraId:I
    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 500
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 501
    .local v2, frontCameraId:I
    if-eq v2, v6, :cond_0

    .line 502
    move v1, v2

    .line 511
    .end local v2           #frontCameraId:I
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    invoke-static {v3}, Lcom/android/camera/Util;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 507
    .local v0, backCameraId:I
    if-eq v0, v6, :cond_0

    .line 508
    move v1, v0

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 351
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 352
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 353
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 338
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 339
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 341
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 342
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 343
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 347
    :goto_0
    return v1

    .line 345
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 326
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    :pswitch_0
    return v1

    .line 328
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 329
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 330
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getJpegRotation(II)I
    .locals 4
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, rotation:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 638
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 639
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 640
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 647
    :goto_0
    return v1

    .line 642
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0

    .line 645
    :cond_1
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_0
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZ)Landroid/hardware/Camera$Size;
    .locals 14
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .parameter "captrueIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DZ)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 420
    :cond_0
    :goto_0
    return-object v5

    .line 376
    :cond_1
    const/4 v5, 0x0

    .line 377
    .local v5, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v3, 0x7fefffffffffffffL

    .line 384
    .local v3, minDiff:D
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 385
    .local v1, display:Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 386
    .local v6, point:Landroid/graphics/Point;
    invoke-virtual {v1, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 390
    .local v9, size:Landroid/hardware/Camera$Size;
    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v10

    iget v12, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v12

    div-double v7, v10, v12

    .line 391
    .local v7, ratio:D
    sub-double v10, v7, p2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f947ae147ae147bL

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    .line 394
    iget v10, v6, Landroid/graphics/Point;->x:I

    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v6, Landroid/graphics/Point;->y:I

    iget v12, v9, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v0, v10, v11

    .line 395
    .local v0, diff:I
    if-nez v0, :cond_5

    .line 396
    move-object v5, v9

    .line 406
    .end local v0           #diff:I
    .end local v7           #ratio:D
    .end local v9           #size:Landroid/hardware/Camera$Size;
    :cond_3
    if-nez v5, :cond_6

    .line 407
    const-string v10, "Util"

    const-string v11, "No preview size match the aspect ratio"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-wide v3, 0x7fefffffffffffffL

    .line 409
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 410
    .restart local v9       #size:Landroid/hardware/Camera$Size;
    iget v10, v6, Landroid/graphics/Point;->x:I

    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v6, Landroid/graphics/Point;->y:I

    iget v12, v9, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v0, v10, v11

    .line 411
    .restart local v0       #diff:I
    int-to-double v10, v0

    cmpg-double v10, v10, v3

    if-gez v10, :cond_4

    .line 412
    move-object v5, v9

    .line 413
    int-to-double v3, v0

    goto :goto_2

    .line 398
    .restart local v7       #ratio:D
    :cond_5
    int-to-double v10, v0

    cmpg-double v10, v10, v3

    if-gez v10, :cond_2

    .line 399
    move-object v5, v9

    .line 400
    int-to-double v3, v0

    goto :goto_1

    .line 417
    .end local v0           #diff:I
    .end local v7           #ratio:D
    .end local v9           #size:Landroid/hardware/Camera$Size;
    :cond_6
    if-nez p4, :cond_0

    .line 418
    invoke-static {v5}, Lcom/android/camera/Device;->updatePreviewSize(Landroid/hardware/Camera$Size;)V

    goto/16 :goto_0
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 9
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 450
    :cond_0
    return-object v1

    .line 429
    :cond_1
    const/4 v1, 0x0

    .line 432
    .local v1, optimalSize:Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 433
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v5, v5

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v7, v7

    div-double v2, v5, v7

    .line 434
    .local v2, ratio:D
    sub-double v5, v2, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f947ae147ae147bL

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_2

    .line 435
    if-eqz v1, :cond_3

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_2

    .line 436
    :cond_3
    move-object v1, v4

    goto :goto_0

    .line 442
    .end local v2           #ratio:D
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v1, :cond_0

    .line 443
    const-string v5, "Util"

    const-string v6, "No picture size match the aspect ratio"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 445
    .restart local v4       #size:Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_6

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_5

    .line 446
    :cond_6
    move-object v1, v4

    goto :goto_1
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .parameter "reference"
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 531
    .local v0, location:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 532
    aget v1, v0, v4

    .line 533
    .local v1, referenceX:I
    aget v2, v0, v5

    .line 534
    .local v2, referenceY:I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 535
    aget v3, v0, v4

    sub-int/2addr v3, v1

    aput v3, v0, v4

    .line 536
    aget v3, v0, v5

    sub-int/2addr v3, v2

    aput v3, v0, v5

    .line 537
    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 95
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 98
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/camera/Util;->sPixelDensity:F

    .line 100
    new-instance v2, Lcom/android/camera/Util$ImageFileNamer;

    const v3, 0x7f0d00ec

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    .line 102
    return-void
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    .line 519
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    const/4 v0, 0x1

    .line 515
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTimeout(JJJ)Z
    .locals 2
    .parameter "now"
    .parameter "last"
    .parameter "gap"

    .prologue
    .line 777
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 541
    if-nez p0, :cond_0

    .line 553
    :goto_0
    return v2

    .line 544
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 545
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 546
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 551
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 549
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 216
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 217
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 218
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 220
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 234
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 224
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 226
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 229
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 230
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 232
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 233
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .locals 3
    .parameter "file"
    .parameter "mode"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/4 v1, 0x0

    .line 756
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v1

    .line 761
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, parentDir:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 763
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1, p2, p3}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 767
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 769
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 4
    .parameter "activity"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 258
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    new-instance v2, Lcom/android/camera/CameraDisabledException;

    invoke-direct {v2}, Lcom/android/camera/CameraDisabledException;-><init>()V

    throw v2

    .line 263
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 264
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Lcom/android/camera/CameraHardwareException;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "openCamera failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 270
    :cond_1
    throw v1
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 524
    .local v0, location:[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 525
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_0

    aget v3, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_0

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    aget v3, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V
    .locals 3
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/high16 v2, 0x44fa

    const/high16 v1, 0x3f80

    .line 594
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 596
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 598
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 600
    int-to-float v0, p5

    int-to-float v1, p6

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 601
    return-void

    :cond_0
    move v0, v1

    .line 594
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 579
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 580
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 581
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 582
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 583
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 117
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 118
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 121
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 122
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 123
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 124
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 132
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 134
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 139
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 141
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    move-object p0, v7

    .line 149
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 126
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 127
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 129
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 359
    const/4 v0, 0x1

    .line 365
    :goto_0
    if-eqz v0, :cond_0

    .line 366
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 368
    .end local p1
    :cond_0
    return p1

    .line 361
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 362
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 363
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 13
    .parameter "parameters"
    .parameter "loc"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 658
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 664
    if-eqz p1, :cond_1

    .line 665
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 666
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 667
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_0

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 669
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 670
    const-string v7, "Util"

    const-string v8, "Set gps location"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 672
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 673
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 675
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 682
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 685
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    div-long v5, v7, v11

    .line 686
    .local v5, utcTimeSeconds:J
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 692
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    .end local v5           #utcTimeSeconds:J
    :cond_1
    :goto_2
    return-void

    .line 667
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 680
    .restart local v0       #hasLatLon:Z
    :cond_3
    invoke-virtual {p0, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 689
    :cond_4
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static setRotationParameter(Landroid/hardware/Camera$Parameters;II)V
    .locals 4
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 699
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 700
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 701
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 706
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 707
    return-void

    .line 703
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "msgId"

    .prologue
    .line 276
    new-instance v0, Lcom/android/camera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 283
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f0d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00ea

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 290
    return-void
.end method
