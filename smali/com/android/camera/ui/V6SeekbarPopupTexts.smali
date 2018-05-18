.class public Lcom/android/camera/ui/V6SeekbarPopupTexts;
.super Landroid/widget/RelativeLayout;
.source "V6SeekbarPopupTexts.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mGap:F

.field private mHeight:I

.field private mPadding:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mPadding:I

    return-void
.end method

.method private addTextView(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->addTextView(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget v5, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mWidth:I

    iget v6, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mGap:F

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_0

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    :goto_1
    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mGap:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v0, v6

    iget v5, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mPadding:I

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mPadding:I

    add-int/2addr v6, v0

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mHeight:I

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mWidth:I

    iput p2, p0, Lcom/android/camera/ui/V6SeekbarPopupTexts;->mHeight:I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setValue(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v2, -0x4c000001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
