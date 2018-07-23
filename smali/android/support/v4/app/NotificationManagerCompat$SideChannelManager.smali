.class Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SideChannelManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    }
.end annotation


# static fields
.field private static final KEY_BINDER:Ljava/lang/String; = "binder"

.field private static final MSG_QUEUE_TASK:I = 0x0

.field private static final MSG_RETRY_LISTENER_QUEUE:I = 0x3

.field private static final MSG_SERVICE_CONNECTED:I = 0x1

.field private static final MSG_SERVICE_DISCONNECTED:I = 0x2


# instance fields
.field private mCachedEnabledPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    .line 295
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    .line 296
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NotificationManagerCompat"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 297
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 298
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    .line 299
    return-void
.end method

.method private ensureServiceBound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z
    .locals 4
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .prologue
    const/4 v3, 0x0

    .line 434
    iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-nez v1, :cond_0

    .line 437
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 438
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/support/v4/app/NotificationManagerCompat;->access$000()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    .line 439
    iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-nez v1, :cond_1

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to bind to listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NotifManCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 445
    :goto_0
    iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    return v1

    .line 435
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 440
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iput v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    goto :goto_0
.end method

.method private ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-nez v0, :cond_0

    .line 456
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    .line 457
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 454
    iput-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    goto :goto_0
.end method

.method private handleQueueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
    .locals 3
    .param p1, "task"    # Landroid/support/v4/app/NotificationManagerCompat$Task;

    .prologue
    .line 330
    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->updateListenerMap()V

    .line 331
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    return-void

    .line 331
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 332
    .local v1, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    iget-object v2, v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    goto :goto_0
.end method

.method private handleRetryListenerQueue(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 354
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 355
    .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    goto :goto_0
.end method

.method private handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 338
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 339
    .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {p2}, Landroid/support/v4/app/INotificationSideChannel$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/app/INotificationSideChannel;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    .line 341
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 342
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    goto :goto_0
.end method

.method private handleServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 347
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 348
    .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    goto :goto_0
.end method

.method private processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 6
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .prologue
    const/4 v5, 0x3

    .line 488
    const-string/jumbo v3, "NotifManCompat"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    :goto_0
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 495
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceBound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 497
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 498
    return-void

    .line 489
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Processing component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " queued tasks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NotifManCompat"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_2
    return-void

    .line 495
    :cond_3
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    if-eqz v3, :cond_0

    .line 502
    :goto_1
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationManagerCompat$Task;

    .line 503
    .local v2, "task":Landroid/support/v4/app/NotificationManagerCompat$Task;
    if-eqz v2, :cond_4

    .line 507
    :try_start_0
    const-string/jumbo v3, "NotifManCompat"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 510
    :goto_2
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;

    invoke-interface {v2, v3}, Landroid/support/v4/app/NotificationManagerCompat$Task;->send(Landroid/support/v4/app/INotificationSideChannel;)V

    .line 511
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "NotifManCompat"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 522
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_4
    :goto_3
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 526
    :goto_4
    return-void

    .line 508
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NotifManCompat"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 517
    :catch_1
    move-exception v1

    .line 518
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException communicating with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NotifManCompat"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 514
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "e":Landroid/os/DeadObjectException;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote service has died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NotifManCompat"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 524
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    goto :goto_4
.end method

.method private scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 6
    .param p1, "record"    # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .prologue
    const/4 v4, 0x3

    .line 465
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 469
    iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    const/4 v3, 0x6

    if-gt v2, v3, :cond_1

    .line 475
    iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    mul-int/lit16 v0, v2, 0x3e8

    .line 476
    .local v0, "delayMs":I
    const-string/jumbo v2, "NotifManCompat"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 479
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 480
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 481
    return-void

    .line 466
    .end local v0    # "delayMs":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 470
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Giving up on delivering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tasks to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " retries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotifManCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 473
    return-void

    .line 477
    .restart local v0    # "delayMs":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scheduling retry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotifManCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateListenerMap()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    .line 383
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/support/v4/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 384
    .local v2, "enabledPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 388
    iput-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    .line 389
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 391
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 392
    .local v1, "enabledComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 406
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 415
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 417
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    .line 427
    return-void

    .line 386
    .end local v1    # "enabledComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;>;"
    .end local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    return-void

    .line 392
    .restart local v1    # "enabledComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 393
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 396
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 403
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Permission present on component "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", not adding listener record."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "NotifManCompat"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 407
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 408
    const-string/jumbo v8, "NotifManCompat"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_7

    .line 411
    :goto_3
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    new-instance v9, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    invoke-direct {v9, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 409
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Adding listener record for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "NotifManCompat"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 418
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;>;"
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 419
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 420
    const-string/jumbo v8, "NotifManCompat"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 423
    :goto_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    invoke-direct {p0, v8}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 424
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 421
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing listener record for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "NotifManCompat"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 311
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 326
    const/4 v1, 0x0

    return v1

    .line 313
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$Task;

    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleQueueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    .line 314
    return v3

    .line 316
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;

    .line 317
    .local v0, "event":Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;
    iget-object v1, v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 318
    return v3

    .line 320
    .end local v0    # "event":Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleServiceDisconnected(Landroid/content/ComponentName;)V

    .line 321
    return v3

    .line 323
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleRetryListenerQueue(Landroid/content/ComponentName;)V

    .line 324
    return v3

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 362
    const-string/jumbo v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 368
    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connected to service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotifManCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 372
    const-string/jumbo v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Disconnected from service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotifManCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
    .locals 2
    .param p1, "task"    # Landroid/support/v4/app/NotificationManagerCompat$Task;

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    return-void
.end method
