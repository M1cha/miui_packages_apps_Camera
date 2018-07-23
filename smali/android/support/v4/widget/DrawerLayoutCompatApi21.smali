.class Landroid/support/v4/widget/DrawerLayoutCompatApi21;
.super Ljava/lang/Object;
.source "DrawerLayoutCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;
    }
.end annotation


# static fields
.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010434

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->THEME_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 5
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p1

    .line 59
    check-cast v0, Landroid/view/WindowInsets;

    .line 60
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 63
    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    .line 67
    :goto_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 68
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 69
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 70
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 71
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0
.end method

.method public static configureApplyInsets(Landroid/view/View;)V
    .locals 1
    .param p0, "drawerLayout"    # Landroid/view/View;

    .prologue
    .line 38
    instance-of v0, p0, Landroid/support/v4/widget/DrawerLayoutImpl;

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 40
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p1

    .line 46
    check-cast v0, Landroid/view/WindowInsets;

    .line 47
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 50
    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    .line 54
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 55
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v3, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->THEME_ATTRS:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 80
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 82
    .local v0, "-l_2_R":Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static getTopInset(Ljava/lang/Object;)I
    .locals 1
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 74
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "insets":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "insets":Ljava/lang/Object;
    :cond_0
    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0
.end method
