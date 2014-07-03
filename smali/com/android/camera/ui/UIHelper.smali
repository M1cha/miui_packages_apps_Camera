.class public Lcom/android/camera/ui/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/UIHelper$ViewVisitAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static measureHeightByBackground(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 21
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 22
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 23
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 29
    .local v1, "height":I
    const/high16 v2, 0x40000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 31
    .end local v1    # "height":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "background is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static measureWidthByBackground(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 38
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 39
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 45
    .local v1, "width":I
    const/high16 v2, 0x40000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 47
    .end local v1    # "width":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "background is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static visitAllChildViews(Landroid/view/View;Lcom/android/camera/ui/UIHelper$ViewVisitAction;)V
    .locals 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "action"    # Lcom/android/camera/ui/UIHelper$ViewVisitAction;

    .prologue
    .line 60
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 61
    check-cast v1, Landroid/view/ViewGroup;

    .line 62
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 63
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/camera/ui/UIHelper;->visitAllChildViews(Landroid/view/View;Lcom/android/camera/ui/UIHelper$ViewVisitAction;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/camera/ui/UIHelper$ViewVisitAction;->visit(Landroid/view/View;)V

    .line 69
    return-void
.end method
