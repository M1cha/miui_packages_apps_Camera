.class final Lcom/android/camera/Util$2;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Util;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/Util$PackageInstallerListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;


# direct methods
.method constructor <init>(Lcom/android/camera/Util$PackageInstallerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Util$2;->val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string/jumbo v1, "CameraUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageInstalled: packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " returnCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/Util$2;->val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Util$2;->val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;

    if-ne p2, v0, :cond_1

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/android/camera/Util$PackageInstallerListener;->onPackageInstalled(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
