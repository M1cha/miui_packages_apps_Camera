.class public Lcom/android/gallery3d/ui/StringTexture;
.super Lcom/android/gallery3d/ui/CanvasTexture;
.source "StringTexture.java"


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lcom/android/gallery3d/ui/CanvasTexture;-><init>(II)V

    iput-object p1, p0, Lcom/android/gallery3d/ui/StringTexture;->mText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/gallery3d/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/android/gallery3d/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static getDefaultPaint(FII)Landroid/text/TextPaint;
    .locals 6

    const/4 v1, 0x1

    const/high16 v5, -0x1000000

    const/high16 v2, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    const v3, 0x3dcccccd    # 0.1f

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    if-ne p2, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v3, v2, v2, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/StringTexture;->setLongshotMode(Landroid/text/TextPaint;F)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTimeTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x2e000000

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/StringTexture;->setLongshotMode(Landroid/text/TextPaint;F)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v4, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;FIFZI)Lcom/android/gallery3d/ui/StringTexture;
    .locals 2

    invoke-static {p1, p2, p5}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FII)Landroid/text/TextPaint;

    move-result-object v0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p3, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0, v0, p5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;FII)Lcom/android/gallery3d/ui/StringTexture;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FII)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v0, 0x5

    :cond_0
    add-int v4, v1, v0

    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v5, v0, v1

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-gtz v5, :cond_2

    const/4 v5, 0x1

    :cond_2
    new-instance v0, Lcom/android/gallery3d/ui/StringTexture;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0
.end method

.method private static setLongshotMode(Landroid/text/TextPaint;F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setTextPaintLetterSpacing(Landroid/text/TextPaint;F)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/ui/StringTexture;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
