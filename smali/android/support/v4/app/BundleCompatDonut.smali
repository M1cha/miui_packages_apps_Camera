.class Landroid/support/v4/app/BundleCompatDonut;
.super Ljava/lang/Object;
.source "BundleCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatDonut"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 39
    sget-boolean v4, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    if-eqz v4, :cond_0

    .line 49
    :goto_0
    sget-object v4, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 63
    :goto_1
    return-object v7

    .line 41
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const-string/jumbo v6, "getIBinder"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 42
    sget-object v4, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_2
    sput-boolean v8, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "BundleCompatDonut"

    const-string/jumbo v5, "Failed to retrieve getIBinder method"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 51
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :try_start_1
    sget-object v4, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v4

    .line 52
    :catch_1
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "BundleCompatDonut"

    const-string/jumbo v5, "Failed to invoke getIBinder via reflection"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    sput-object v7, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 55
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "BundleCompatDonut"

    const-string/jumbo v5, "Failed to invoke getIBinder via reflection"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    sput-object v7, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "BundleCompatDonut"

    const-string/jumbo v5, "Failed to invoke getIBinder via reflection"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    sput-object v7, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 67
    sget-boolean v4, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    if-eqz v4, :cond_0

    .line 78
    :goto_0
    sget-object v4, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 92
    :goto_1
    return-void

    .line 69
    :cond_0
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const-string/jumbo v6, "putIBinder"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 71
    sget-object v4, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_2
    sput-boolean v7, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "BundleCompatDonut"

    const-string/jumbo v5, "Failed to retrieve putIBinder method"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 80
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :try_start_1
    sget-object v4, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 81
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "BundleCompatDonut"

    const-string/jumbo v5, "Failed to invoke putIBinder via reflection"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    sput-object v8, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 84
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "BundleCompatDonut"

    const-string/jumbo v5, "Failed to invoke putIBinder via reflection"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    sput-object v8, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "BundleCompatDonut"

    const-string/jumbo v5, "Failed to invoke putIBinder via reflection"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    sput-object v8, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1
.end method
