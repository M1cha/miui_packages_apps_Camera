.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .locals 2

    .prologue
    .line 150
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    if-nez v1, :cond_0

    .line 156
    return-void

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v8, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-nez v8, :cond_0

    .line 71
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    .line 72
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 73
    iget-object v6, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 74
    .local v6, "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    iget-object v7, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 75
    .local v7, "obj":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-nez v6, :cond_1

    .line 81
    :goto_0
    if-nez v7, :cond_2

    .line 85
    :goto_1
    move-object v0, p0

    monitor-enter p0

    .line 86
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    return-void

    .line 69
    .end local v6    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .end local v7    # "obj":Ljava/lang/Object;
    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 79
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v6    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 85
    :catchall_1
    move-exception v3

    .local v3, "-l_6_R":Ljava/lang/Object;
    move-object v4, p0

    .local v4, "-l_7_R":Ljava/lang/Object;
    monitor-enter p0

    .line 86
    const/4 v8, 0x0

    :try_start_4
    iput-boolean v8, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    .line 82
    .end local v3    # "-l_6_R":Ljava/lang/Object;
    .end local v4    # "-l_7_R":Ljava/lang/Object;
    :cond_2
    :try_start_5
    invoke-static {v7}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 88
    :catchall_2
    move-exception v2

    .local v2, "-l_5_R":Ljava/lang/Object;
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .end local v2    # "-l_5_R":Ljava/lang/Object;
    .restart local v3    # "-l_6_R":Ljava/lang/Object;
    .restart local v4    # "-l_7_R":Ljava/lang/Object;
    :catchall_3
    move-exception v5

    .local v5, "-l_8_R":Ljava/lang/Object;
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v5
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 138
    move-object v0, p0

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 145
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    return-object v2

    .line 136
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_1
    return-object v4

    .line 140
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->create()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 141
    iget-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    invoke-static {v2}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter p0

    .line 45
    :try_start_0
    iget-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v2

    .line 46
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 112
    iget-object v2, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    if-eq v2, p1, :cond_1

    .line 115
    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 116
    iget-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-nez v2, :cond_2

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    monitor-exit p0

    return-void

    .line 116
    :cond_2
    if-eqz p1, :cond_0

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public throwIfCanceled()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0
.end method
