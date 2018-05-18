.class public Lcom/android/gallery3d/ui/BitmapTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
