.class public Landroid/support/v4/text/ICUCompatApi23;
.super Ljava/lang/Object;
.source "ICUCompatApi23.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v2, "libcore.icu.ICU"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "addLikelySubtags"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/text/ICUCompatApi23;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 45
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    .line 46
    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Landroid/support/v4/text/ICUCompatApi23;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 47
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "ICUCompatIcs"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 49
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "ICUCompatIcs"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
