.class public Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;
.super Ljava/lang/Object;
.source "SurfaceCreatedOnSubScribe.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/android/camera/module/loader/SurfaceCreatedCallback;"
    }
.end annotation


# instance fields
.field private singleEmitter:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->surfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    return-void
.end method


# virtual methods
.method public onGlSurfaceCreated()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    return-void
.end method

.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->surfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    invoke-interface {v0}, Lcom/android/camera/module/loader/SurfaceStateListener;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    goto :goto_0
.end method
