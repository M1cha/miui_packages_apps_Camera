.class public Lmiui/external/Application;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private g:Lmiui/external/ApplicationDelegate;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-direct {p0}, Lmiui/external/Application;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/external/Application;->f()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/external/Application;->h:Z

    return-void
.end method

.method private d(Ljava/lang/Throwable;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "miuisdk"

    const-string/jumbo v1, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/a;->b(Lmiui/external/SdkConstants$SdkError;)V

    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;I)V
    .locals 3

    const-string/jumbo v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/a;->b(Lmiui/external/SdkConstants$SdkError;)V

    return-void
.end method

.method private f()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/external/c;->c()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "initialize"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/app/Application;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/util/Map;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "initialize"

    invoke-direct {p0, v1, v0}, Lmiui/external/Application;->e(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->d(Ljava/lang/Throwable;)V

    return v6

    :cond_0
    return v7
.end method

.method private g()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lmiui/external/SdkHelper;->isMiuiSystem()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.miui.core"

    const-string/jumbo v1, "miui"

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lmiui/external/SdkHelper;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.core"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lmiui/external/SdkHelper;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmiui/external/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lmiui/external/d;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/a;->b(Lmiui/external/SdkConstants$SdkError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->d(Ljava/lang/Throwable;)V

    return v4

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private h()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/external/c;->c()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "start"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_0

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/a;->b(Lmiui/external/SdkConstants$SdkError;)V

    return v6

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "start"

    invoke-direct {p0, v1, v0}, Lmiui/external/Application;->e(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->d(Ljava/lang/Throwable;)V

    return v6

    :cond_1
    return v7
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    iget-boolean v0, p0, Lmiui/external/Application;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/external/Application;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/external/Application;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p0}, Lmiui/external/ApplicationDelegate;->G(Lmiui/external/Application;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/external/Application;->i:Z

    return-void
.end method

.method final i(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final j()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method final k()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method final l()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method final m(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->i(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 1

    iget-boolean v0, p0, Lmiui/external/Application;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/external/Application;->j()V

    goto :goto_0
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onLowMemory()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->k()V

    goto :goto_0
.end method

.method public final onTerminate()V
    .locals 1

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->l()V

    goto :goto_0
.end method

.method public final onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/Application;->g:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onTrimMemory(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->m(I)V

    goto :goto_0
.end method
