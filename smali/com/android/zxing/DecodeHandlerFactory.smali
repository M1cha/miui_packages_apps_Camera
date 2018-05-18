.class final Lcom/android/zxing/DecodeHandlerFactory;
.super Ljava/lang/Object;
.source "DecodeHandlerFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/zxing/DecodeHandler;

.field private final mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mHints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lcom/android/zxing/DecodeFormats;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/zxing/DecodeFormats;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/android/zxing/DecodeHandler;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandler:Lcom/android/zxing/DecodeHandler;

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandler;->cancel()V

    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Lcom/android/zxing/DecodeHandler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public start()V
    .locals 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DecodeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/zxing/DecodeHandler;

    iget-object v2, p0, Lcom/android/zxing/DecodeHandlerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/zxing/DecodeHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/Hashtable;)V

    iput-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandler:Lcom/android/zxing/DecodeHandler;

    iget-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
