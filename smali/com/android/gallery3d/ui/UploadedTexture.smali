.class public abstract Lcom/android/gallery3d/ui/UploadedTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsPremultiplied:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    new-instance v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;-><init>(Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;)V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsUploading:Z

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsPremultiplied:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/UploadedTexture;->setBorder(Z)V

    iput v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsPremultiplied:Z

    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->setSize(II)V

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    iput-boolean p0, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    iput-object p1, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iput p2, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 26

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_5

    :try_start_0
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int v25, v22, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int v24, v21, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureHeight()I

    move-result v5

    move/from16 v0, v22

    if-gt v0, v4, :cond_1

    move/from16 v0, v21

    if-gt v0, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    int-to-float v2, v2

    const/4 v6, 0x0

    aput v2, v1, v6

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v21

    int-to-float v2, v2

    const/4 v6, 0x1

    aput v2, v1, v6

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v6, 0x2

    aput v2, v1, v6

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    move/from16 v0, v21

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v6, 0x3

    aput v2, v1, v6

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/16 v2, 0xde1

    const v6, 0x8b9d

    const/4 v7, 0x0

    invoke-static {v2, v6, v1, v7}, Landroid/opengl/GLES20;->glTexParameterfv(II[FI)V

    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v6, 0x812f

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v6, 0x812f

    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0xde1

    const/16 v6, 0x2801

    invoke-static {v2, v6, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0xde1

    const/16 v6, 0x2800

    invoke-static {v2, v6, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    move/from16 v0, v22

    if-ne v0, v4, :cond_2

    move/from16 v0, v21

    if-ne v0, v5, :cond_2

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v2, v13, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mId:I

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mState:I

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-static {v13}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-static {v13}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v23

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v7, v3

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    const/16 v9, 0xde1

    const/4 v10, 0x0

    move v14, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    if-lez v1, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, v23

    invoke-static {v1, v0, v5}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v19, v3

    move/from16 v20, v8

    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    const/4 v1, 0x0

    move-object/from16 v0, v23

    invoke-static {v1, v0, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v19, v3

    move/from16 v20, v8

    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v1, v1, v22

    if-ge v1, v4, :cond_4

    const/4 v1, 0x1

    move-object/from16 v0, v23

    invoke-static {v1, v0, v5}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v16, v1, v22

    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v19, v3

    move/from16 v20, v8

    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v1, v1, v21

    if-ge v1, v5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, v23

    invoke-static {v1, v0, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v17, v1, v21

    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v19, v3

    move/from16 v20, v8

    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    throw v1

    :cond_5
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mState:I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Texture load fail, no bitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mHeight:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    return v0
.end method

.method public isContentValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isPremultiplied()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsPremultiplied:Z

    goto :goto_0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method public updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7

    const/16 v0, 0xde1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    iget v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
