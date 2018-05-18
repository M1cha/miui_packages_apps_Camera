.class public Lcom/android/camera/network/download/GalleryDownloadManager;
.super Ljava/lang/Object;
.source "GalleryDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/network/download/GalleryDownloadManager$1;,
        Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;,
        Lcom/android/camera/network/download/GalleryDownloadManager$TaskMonitor;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/network/download/GalleryDownloadManager;


# instance fields
.field private mBlockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/network/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static synthetic -get0(Lcom/android/camera/network/download/GalleryDownloadManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mTasks:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/network/download/GalleryDownloadManager;

    invoke-direct {v0}, Lcom/android/camera/network/download/GalleryDownloadManager;-><init>()V

    sput-object v0, Lcom/android/camera/network/download/GalleryDownloadManager;->INSTANCE:Lcom/android/camera/network/download/GalleryDownloadManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/android/camera/network/download/GalleryDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/network/download/GalleryDownloadManager$1;-><init>(Lcom/android/camera/network/download/GalleryDownloadManager;)V

    iput-object v0, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v8, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-wide/16 v4, 0x1e

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mTasks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public enqueue(Lcom/android/camera/network/download/Request;Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;)V
    .locals 3

    new-instance v0, Lcom/android/camera/network/download/DownloadTask;

    new-instance v1, Lcom/android/camera/network/download/GalleryDownloadManager$TaskMonitor;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/network/download/GalleryDownloadManager$TaskMonitor;-><init>(Lcom/android/camera/network/download/GalleryDownloadManager;Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;)V

    invoke-direct {v0, p1, v1}, Lcom/android/camera/network/download/DownloadTask;-><init>(Lcom/android/camera/network/download/Request;Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;)V

    iget-object v1, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/network/download/GalleryDownloadManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lcom/android/camera/network/download/DownloadTask;->execute(Ljava/util/concurrent/Executor;)V

    return-void
.end method
