.class public interface abstract Lcom/android/camera/data/provider/DataProvider;
.super Ljava/lang/Object;
.source "DataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/provider/DataProvider$ProviderEditor;,
        Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    }
.end annotation


# virtual methods
.method public abstract dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/data/provider/DataProvider$ProviderEvent;",
            ">()TP;"
        }
    .end annotation
.end method

.method public abstract dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/data/provider/DataProvider$ProviderEvent;",
            ">(II)TP;"
        }
    .end annotation
.end method

.method public abstract dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/data/provider/DataProvider$ProviderEvent;",
            ">()TP;"
        }
    .end annotation
.end method

.method public abstract dataRunning()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/data/provider/DataProvider$ProviderEvent;",
            ">()TP;"
        }
    .end annotation
.end method

.method public abstract setTimeOut(Z)V
.end method
