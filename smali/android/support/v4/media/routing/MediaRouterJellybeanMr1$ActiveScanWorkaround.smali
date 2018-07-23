.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveScanWorkaround"
.end annotation


# static fields
.field private static final WIFI_DISPLAY_SCAN_INTERVAL:I = 0x3a98


# instance fields
.field private mActivelyScanningWifiDisplays:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 72
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 73
    iput-object p2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/hardware/display/DisplayManager;

    const-string/jumbo v2, "scanWifiDisplays"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 108
    iget-boolean v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-nez v2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_1
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "MediaRouterJellybeanMr1"

    const-string/jumbo v3, "Cannot scan for wifi displays."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 113
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "MediaRouterJellybeanMr1"

    const-string/jumbo v3, "Cannot scan for wifi displays."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setActiveScanRouteTypes(I)V
    .locals 2
    .param p1, "routeTypes"    # I

    .prologue
    const/4 v1, 0x0

    .line 87
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 99
    iget-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-nez v0, :cond_3

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 93
    const-string/jumbo v0, "MediaRouterJellybeanMr1"

    const-string/jumbo v1, "Cannot scan for wifi displays because the DisplayManager.scanWifiDisplays() method is not available on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    .line 91
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 100
    :cond_3
    iput-boolean v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    .line 101
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
