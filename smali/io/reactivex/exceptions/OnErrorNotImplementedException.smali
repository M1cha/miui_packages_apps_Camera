.class public final Lio/reactivex/exceptions/OnErrorNotImplementedException;
.super Ljava/lang/RuntimeException;
.source "OnErrorNotImplementedException.java"


# annotations
.annotation build Lio/reactivex/annotations/Beta;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x576a0913e5716a6cL


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    :cond_0
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
