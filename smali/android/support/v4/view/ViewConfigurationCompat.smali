.class public Landroid/support/v4/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;,
        Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;,
        Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;,
        Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;,
        Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 93
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 105
    sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 113
    sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
