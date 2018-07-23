.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectRouteWorkaround"
.end annotation


# instance fields
.field private mSelectRouteIntMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 283
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    .line 287
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/media/MediaRouter$RouteInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/media/MediaRouter;

    const-string/jumbo v2, "selectRouteInt"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9
    .param p1, "routerObj"    # Ljava/lang/Object;
    .param p2, "types"    # I
    .param p3, "routeObj"    # Ljava/lang/Object;

    .prologue
    move-object v4, p1

    .line 294
    check-cast v4, Landroid/media/MediaRouter;

    .local v4, "router":Landroid/media/MediaRouter;
    move-object v2, p3

    .line 295
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 298
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v3

    .line 299
    .local v3, "routeTypes":I
    const/high16 v5, 0x800000

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 324
    :goto_0
    invoke-virtual {v4, p2, v2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 325
    return-void

    .line 305
    :cond_0
    iget-object v5, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    .line 317
    const-string/jumbo v5, "MediaRouterJellybean"

    const-string/jumbo v6, "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "MediaRouterJellybean"

    const-string/jumbo v6, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 312
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 313
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v5, "MediaRouterJellybean"

    const-string/jumbo v6, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
