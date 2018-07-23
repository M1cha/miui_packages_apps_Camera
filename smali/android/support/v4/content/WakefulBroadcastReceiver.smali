.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static final mActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static mNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    .line 64
    const/4 v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    const-string/jumbo v4, "android.support.content.wakelockid"

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 114
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 117
    sget-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager$WakeLock;

    .line 119
    .local v3, "wl":Landroid/os/PowerManager$WakeLock;
    if-nez v3, :cond_1

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No active wake lock id #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "WakefulBroadcastReceiver"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    monitor-exit v0

    return v6

    .line 115
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    .end local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_0
    return v5

    .line 120
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    .restart local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_1
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 121
    sget-object v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 122
    monitor-exit v0

    return v6

    .line 132
    .end local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 81
    sget-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 82
    :try_start_0
    sget v3, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 83
    .local v3, "id":I
    sget v6, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 84
    sget v6, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    if-lez v6, :cond_0

    .line 88
    :goto_0
    const-string/jumbo v6, "android.support.content.wakelockid"

    invoke-virtual {p1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    .line 90
    .local v2, "comp":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 94
    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 95
    .local v4, "pm":Landroid/os/PowerManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wake:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 97
    .local v5, "wl":Landroid/os/PowerManager$WakeLock;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 98
    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 99
    sget-object v6, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    monitor-exit v0

    return-object v2

    .line 85
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_0
    const/4 v6, 0x1

    sput v6, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    goto :goto_0

    .line 101
    .end local v3    # "id":I
    :catchall_0
    move-exception v1

    .local v1, "-l_7_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    .restart local v2    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "id":I
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method
