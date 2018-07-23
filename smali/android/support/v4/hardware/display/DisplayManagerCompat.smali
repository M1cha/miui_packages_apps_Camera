.class public abstract Landroid/support/v4/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;,
        Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;
    }
.end annotation


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field private static final sInstances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/hardware/display/DisplayManagerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v4, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/hardware/display/DisplayManagerCompat;

    .line 56
    .local v2, "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    if-eqz v2, :cond_0

    .line 65
    :goto_0
    monitor-exit v0

    return-object v2

    .line 57
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .local v3, "version":I
    const/16 v4, 0x11

    if-ge v3, v4, :cond_1

    .line 61
    new-instance v2, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;

    .end local v2    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    invoke-direct {v2, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;-><init>(Landroid/content/Context;)V

    .line 63
    .restart local v2    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    :goto_1
    sget-object v4, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    .end local v2    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .end local v3    # "version":I
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v2    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .restart local v3    # "version":I
    :cond_1
    :try_start_1
    new-instance v2, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;

    .end local v2    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    invoke-direct {v2, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    goto :goto_1
.end method


# virtual methods
.method public abstract getDisplay(I)Landroid/view/Display;
.end method

.method public abstract getDisplays()[Landroid/view/Display;
.end method

.method public abstract getDisplays(Ljava/lang/String;)[Landroid/view/Display;
.end method
