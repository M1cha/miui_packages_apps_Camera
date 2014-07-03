.class public Lcom/android/camera/ui/PopupMenuItem;
.super Landroid/widget/RelativeLayout;
.source "PopupMenuItem.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final DISABLED_ALPHA:F

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 11
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    .line 20
    return-void
.end method

.method private setTextShadow(Z)V
    .locals 5
    .parameter "selected"

    .prologue
    const/4 v4, 0x0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/PopupMenuItem;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/PopupMenuItem;->mText:Landroid/widget/TextView;

    const/high16 v1, 0x40a0

    const/high16 v2, 0x4000

    const v3, 0x75ffffff

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PopupMenuItem;->mText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/PopupMenuItem;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 29
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/PopupMenuItem;->mText:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method public setActivated(Z)V
    .locals 0
    .parameter "activated"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PopupMenuItem;->setTextShadow(Z)V

    .line 66
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupMenuItem;->setAlpha(F)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupMenuItem;->setAlpha(F)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 6
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->getRotation()F

    move-result v3

    float-to-int v2, v3

    .line 35
    .local v2, rotation:I
    if-ltz v2, :cond_0

    rem-int/lit16 v1, v2, 0x168

    .line 36
    .local v1, r:I
    :goto_0
    sub-int v0, p1, v1

    .line 37
    .local v0, deltaR:I
    if-nez v0, :cond_1

    .line 50
    :goto_1
    return-void

    .line 35
    .end local v0           #deltaR:I
    .end local v1           #r:I
    :cond_0
    rem-int/lit16 v3, v2, 0x168

    add-int/lit16 v1, v3, 0x168

    goto :goto_0

    .line 38
    .restart local v0       #deltaR:I
    .restart local v1       #r:I
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    if-le v3, v4, :cond_2

    .line 39
    if-ltz v0, :cond_3

    .line 40
    add-int/lit16 v0, v0, -0x168

    .line 45
    :cond_2
    :goto_2
    if-eqz p2, :cond_4

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0x10e

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 42
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 48
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method public setPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 71
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PopupMenuItem;->setTextShadow(Z)V

    .line 72
    return-void
.end method
