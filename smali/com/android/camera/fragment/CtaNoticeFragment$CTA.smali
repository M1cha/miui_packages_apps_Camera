.class public Lcom/android/camera/fragment/CtaNoticeFragment$CTA;
.super Ljava/lang/Object;
.source "CtaNoticeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/CtaNoticeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTA"
.end annotation


# static fields
.field private static sCanConnectToNetworkTemp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->sCanConnectToNetworkTemp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canConnectNetwork()Z
    .locals 2

    sget-boolean v1, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->sCanConnectToNetworkTemp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCTACanCollect()Z

    move-result v1

    return v1
.end method

.method public static setCanConnectNetwork(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCTACanCollect(Z)V

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->sCanConnectToNetworkTemp:Z

    goto :goto_0
.end method
