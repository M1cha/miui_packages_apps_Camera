.class public Lcom/android/camera/network/net/base/ResponseDispatcher;
.super Ljava/lang/Object;
.source "ResponseDispatcher.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;


# direct methods
.method static synthetic -get0(Lcom/android/camera/network/net/base/ResponseDispatcher;)Lcom/android/camera/network/net/base/ResponseListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/camera/network/net/base/ResponseListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    instance-of v1, v1, Lcom/android/camera/network/net/base/ResponseHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/network/net/base/ResponseDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/network/net/base/ResponseDispatcher$1;-><init>(Lcom/android/camera/network/net/base/ResponseDispatcher;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    invoke-interface {v1, p1}, Lcom/android/camera/network/net/base/ResponseListener;->onResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->DATA_BIND_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/camera/network/net/base/ResponseDispatcher;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    instance-of v0, v0, Lcom/android/camera/network/net/base/ResponseHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/network/net/base/ResponseDispatcher$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/network/net/base/ResponseDispatcher$2;-><init>(Lcom/android/camera/network/net/base/ResponseDispatcher;Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/network/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/android/camera/network/net/base/ResponseListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/network/net/base/ResponseListener;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
