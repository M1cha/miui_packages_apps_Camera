.class public final Lio/reactivex/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;
    }
.end annotation


# static fields
.field private static final MAIN_THREAD:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/android/schedulers/AndroidSchedulers$1;

    invoke-direct {v0}, Lio/reactivex/android/schedulers/AndroidSchedulers$1;-><init>()V

    invoke-static {v0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static mainThread()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->onMainThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
