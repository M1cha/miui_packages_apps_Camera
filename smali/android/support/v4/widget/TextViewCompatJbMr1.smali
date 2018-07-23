.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 31
    .local v0, "rtl":Z
    :goto_0
    if-nez v0, :cond_1

    move-object v1, p1

    :goto_1
    if-nez v0, :cond_2

    .end local p3    # "end":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void

    .end local v0    # "rtl":Z
    .restart local p3    # "end":Landroid/graphics/drawable/Drawable;
    :cond_0
    move v0, v1

    .line 30
    goto :goto_0

    .restart local v0    # "rtl":Z
    :cond_1
    move-object v1, p3

    .line 31
    goto :goto_1

    :cond_2
    move-object p3, p1

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 45
    .local v0, "rtl":Z
    :goto_0
    if-nez v0, :cond_1

    move v1, p1

    :goto_1
    if-nez v0, :cond_2

    .end local p3    # "end":I
    :goto_2
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 47
    return-void

    .end local v0    # "rtl":Z
    .restart local p3    # "end":I
    :cond_0
    move v0, v1

    .line 44
    goto :goto_0

    .restart local v0    # "rtl":Z
    :cond_1
    move v1, p3

    .line 45
    goto :goto_1

    :cond_2
    move p3, p1

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 38
    .local v0, "rtl":Z
    :goto_0
    if-nez v0, :cond_1

    move-object v1, p1

    :goto_1
    if-nez v0, :cond_2

    .end local p3    # "end":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void

    .end local v0    # "rtl":Z
    .restart local p3    # "end":Landroid/graphics/drawable/Drawable;
    :cond_0
    move v0, v1

    .line 37
    goto :goto_0

    .restart local v0    # "rtl":Z
    :cond_1
    move-object v1, p3

    .line 38
    goto :goto_1

    :cond_2
    move-object p3, p1

    goto :goto_2
.end method
