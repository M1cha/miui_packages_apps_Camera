.class public Lcom/android/camera/data/restore/DataRestoreMgr;
.super Ljava/lang/Object;
.source "DataRestoreMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/restore/DataRestoreMgr$DataRestoreImpl;
    }
.end annotation


# instance fields
.field private dataRestore:Lcom/android/camera/data/restore/DataRestore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/data/restore/DataRestoreMgr$DataRestoreImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/data/restore/DataRestoreMgr$DataRestoreImpl;-><init>(Lcom/android/camera/data/restore/DataRestoreMgr;)V

    iput-object v0, p0, Lcom/android/camera/data/restore/DataRestoreMgr;->dataRestore:Lcom/android/camera/data/restore/DataRestore;

    return-void
.end method
