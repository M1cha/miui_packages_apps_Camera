.class Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCompatBase"

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 47
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 105
    :goto_1
    return v2

    .line 88
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 89
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_2
    sput-boolean v3, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    goto :goto_0

    .line 98
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 82
    :goto_1
    return v2

    .line 65
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 66
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_2
    sput-boolean v3, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    goto :goto_0

    .line 75
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static isAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isLaidOut(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-nez v0, :cond_0

    .line 44
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 42
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 53
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-nez v0, :cond_0

    .line 56
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 54
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
