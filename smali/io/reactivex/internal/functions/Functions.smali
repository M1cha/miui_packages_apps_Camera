.class public final Lio/reactivex/internal/functions/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/functions/Functions$Array2Func;,
        Lio/reactivex/internal/functions/Functions$EmptyAction;,
        Lio/reactivex/internal/functions/Functions$EmptyConsumer;,
        Lio/reactivex/internal/functions/Functions$EmptyLongConsumer;,
        Lio/reactivex/internal/functions/Functions$EmptyRunnable;,
        Lio/reactivex/internal/functions/Functions$ErrorConsumer;,
        Lio/reactivex/internal/functions/Functions$FalsePredicate;,
        Lio/reactivex/internal/functions/Functions$Identity;,
        Lio/reactivex/internal/functions/Functions$JustValue;,
        Lio/reactivex/internal/functions/Functions$MaxRequestSubscription;,
        Lio/reactivex/internal/functions/Functions$NaturalObjectComparator;,
        Lio/reactivex/internal/functions/Functions$NullCallable;,
        Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;,
        Lio/reactivex/internal/functions/Functions$TruePredicate;
    }
.end annotation


# static fields
.field static final ALWAYS_FALSE:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final ALWAYS_TRUE:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ACTION:Lio/reactivex/functions/Action;

.field static final EMPTY_CONSUMER:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

.field public static final EMPTY_RUNNABLE:Ljava/lang/Runnable;

.field public static final ERROR_CONSUMER:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static final IDENTITY:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final NATURAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_SUPPLIER:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_ERROR_MISSING:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_MAX:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/functions/Functions$Identity;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$Identity;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->IDENTITY:Lio/reactivex/functions/Function;

    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyRunnable;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyRunnable;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyAction;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyAction;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyConsumer;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyConsumer;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex/functions/Consumer;

    new-instance v0, Lio/reactivex/internal/functions/Functions$ErrorConsumer;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$ErrorConsumer;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->ERROR_CONSUMER:Lio/reactivex/functions/Consumer;

    new-instance v0, Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/functions/Consumer;

    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyLongConsumer;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyLongConsumer;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

    new-instance v0, Lio/reactivex/internal/functions/Functions$TruePredicate;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$TruePredicate;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->ALWAYS_TRUE:Lio/reactivex/functions/Predicate;

    new-instance v0, Lio/reactivex/internal/functions/Functions$FalsePredicate;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$FalsePredicate;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->ALWAYS_FALSE:Lio/reactivex/functions/Predicate;

    new-instance v0, Lio/reactivex/internal/functions/Functions$NullCallable;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$NullCallable;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->NULL_SUPPLIER:Ljava/util/concurrent/Callable;

    new-instance v0, Lio/reactivex/internal/functions/Functions$NaturalObjectComparator;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$NaturalObjectComparator;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lio/reactivex/internal/functions/Functions$MaxRequestSubscription;

    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$MaxRequestSubscription;-><init>()V

    sput-object v0, Lio/reactivex/internal/functions/Functions;->REQUEST_MAX:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyConsumer()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/functions/Consumer",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex/functions/Consumer;

    return-object v0
.end method

.method public static justCallable(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/functions/Functions$JustValue;

    invoke-direct {v0, p0}, Lio/reactivex/internal/functions/Functions$JustValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiFunction",
            "<-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/functions/Function",
            "<[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string/jumbo v0, "f is null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/functions/Functions$Array2Func;

    invoke-direct {v0, p0}, Lio/reactivex/internal/functions/Functions$Array2Func;-><init>(Lio/reactivex/functions/BiFunction;)V

    return-object v0
.end method
