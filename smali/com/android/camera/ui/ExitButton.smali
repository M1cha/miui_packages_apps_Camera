.class public Lcom/android/camera/ui/ExitButton;
.super Landroid/view/View;
.source "ExitButton.java"


# instance fields
.field private mExpand:Z

.field private mExpandLeft:I

.field private mExpandRight:I

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/camera/ui/ExitButton;->mExpandLeft:I

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ExitButton;->setLeft(I)V

    iget v5, p0, Lcom/android/camera/ui/ExitButton;->mExpandRight:I

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ExitButton;->setRight(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-gt v5, v6, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v3, v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v5, v8, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-boolean v5, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    mul-int/lit16 v6, v2, 0xff

    div-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v6

    float-to-int v5, v6

    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v4, v6, v7

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_1
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/ExitButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setExpandedAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    return-void
.end method

.method public setExpandingSize(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ExitButton;->mExpandLeft:I

    iput p2, p0, Lcom/android/camera/ui/ExitButton;->mExpandRight:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->invalidate()V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    return-void
.end method
