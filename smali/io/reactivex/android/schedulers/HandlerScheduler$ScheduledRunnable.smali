.class final Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/android/schedulers/HandlerScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScheduledRunnable"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Runnable;

.field private volatile disposed:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->delegate:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->disposed:Z

    iget-object v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->disposed:Z

    return v0
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v3, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->delegate:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Fatal Exception thrown on Scheduler."

    invoke-direct {v0, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
