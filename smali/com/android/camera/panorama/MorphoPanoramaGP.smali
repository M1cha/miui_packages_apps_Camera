.class public Lcom/android/camera/panorama/MorphoPanoramaGP;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNative:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v1, Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/panorama/MorphoPanoramaGP;->TAG:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v1, "morpho_panorama"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/panorama/MorphoPanoramaGP;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadLibrary done"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/panorama/MorphoPanoramaGP;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t loadLibrary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->createNativeObject()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    :goto_0
    return-void

    :cond_0
    iput-wide v4, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/32 v0, -0x7ffffffc

    goto :goto_0
.end method

.method public static calcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeCalcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I

    move-result v0

    return v0
.end method

.method private final native createNativeObject()J
.end method

.method private final native deleteNativeObject(J)V
.end method

.method private final native nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeAttachStillImageExt(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private final native nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeCalcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I
.end method

.method private final native nativeEnd(J)I
.end method

.method private final native nativeFinish(J)I
.end method

.method private final native nativeGetBoundingRect(J[I)I
.end method

.method private final native nativeGetClippingRect(J[I)I
.end method

.method private final native nativeGetCurrentDirection(J[I)I
.end method

.method private final native nativeGetGuidancePos(J[I)I
.end method

.method private final native nativeGetMoveSpeed(J[I)I
.end method

.method private final native nativeInitialize(JLcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I
.end method

.method private final native nativeSaveOutputJpeg(JLjava/lang/String;IIIII[I)I
.end method

.method private final native nativeSetJpegForCopyingExif(JLjava/nio/ByteBuffer;)I
.end method

.method private final native nativeSetMotionlessThreshold(JI)I
.end method

.method private final native nativeSetUseSensorAssist(JII)I
.end method

.method private final native nativeSetUseSensorThreshold(JI)I
.end method

.method private final native nativeStart(J)I
.end method


# virtual methods
.method public attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I
    .locals 10

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetJpegForCopyingExif(JLjava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 7

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachStillImageExt(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 7

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public end()I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeEnd(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeFinish(J)I

    move-result v0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->deleteNativeObject(J)V

    iput-wide v4, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [I

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetBoundingRect(J[I)I

    move-result v1

    if-nez v1, :cond_0

    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return v1

    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [I

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetClippingRect(J[I)I

    move-result v1

    if-nez v1, :cond_0

    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return v1

    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getCurrentDirection([I)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetCurrentDirection(J[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [I

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetGuidancePos(J[I)I

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return v1

    :cond_0
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getMoveSpeed([I)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetMoveSpeed(J[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeInitialize(JLcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I
    .locals 11

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v4, p1

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSaveOutputJpeg(JLjava/lang/String;IIIII[I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMotionlessThreshold(I)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetMotionlessThreshold(JI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorAssist(II)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetUseSensorAssist(JII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorThreshold(I)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetUseSensorThreshold(JI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start()I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeStart(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
