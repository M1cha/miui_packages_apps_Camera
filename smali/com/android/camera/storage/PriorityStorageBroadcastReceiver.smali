.class public Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PriorityStorageBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isPriorityStorage()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const-class v6, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;

    invoke-direct {v1, v0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    return v4

    :cond_0
    if-ne v3, v4, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public static setPriorityStorage(Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;

    invoke-direct {v1, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
