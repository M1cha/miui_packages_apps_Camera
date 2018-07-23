.class Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "DrawableCompatJellybeanMr1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompatJellybeanMr1"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 63
    sget-boolean v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    if-eqz v2, :cond_0

    .line 73
    :goto_0
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 81
    :goto_1
    const/4 v2, -0x1

    return v2

    .line 65
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v4, "getLayoutDirection"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 66
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_2
    sput-boolean v5, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "DrawableCompatJellybeanMr1"

    const-string/jumbo v3, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 75
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :try_start_1
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 76
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DrawableCompatJellybeanMr1"

    const-string/jumbo v3, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    sput-object v6, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    goto :goto_1
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    sget-boolean v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 60
    :goto_1
    return-void

    .line 43
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v4, "setLayoutDirection"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 45
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_2
    sput-boolean v5, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "DrawableCompatJellybeanMr1"

    const-string/jumbo v3, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 54
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :try_start_1
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DrawableCompatJellybeanMr1"

    const-string/jumbo v3, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    sput-object v6, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    goto :goto_1
.end method
