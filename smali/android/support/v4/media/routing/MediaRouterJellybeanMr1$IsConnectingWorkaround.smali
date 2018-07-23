.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsConnectingWorkaround"
.end annotation


# instance fields
.field private mGetStatusCodeMethod:Ljava/lang/reflect/Method;

.field private mStatusConnecting:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    .line 135
    :try_start_0
    const-class v4, Landroid/media/MediaRouter$RouteInfo;

    const-string/jumbo v5, "STATUS_CONNECTING"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 137
    .local v3, "statusConnectingField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mStatusConnecting:I

    .line 138
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/media/MediaRouter$RouteInfo;

    const-string/jumbo v6, "getStatusCode"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 144
    .end local v3    # "statusConnectingField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 140
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 141
    .end local v1    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 142
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method


# virtual methods
.method public isConnecting(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    move-object v1, p1

    .line 147
    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 150
    .local v1, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 160
    :goto_0
    return v4

    .line 152
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 153
    .local v2, "statusCode":I
    iget v3, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mStatusConnecting:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v2, v3, :cond_1

    move v3, v4

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 154
    .end local v2    # "statusCode":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 155
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
