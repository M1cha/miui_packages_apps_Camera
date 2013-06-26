.class public Lcom/android/camera/CameraAppImpl;
.super Landroid/app/Application;
.source "CameraAppImpl.java"


# static fields
.field private static sContext:Lcom/android/camera/CameraAppImpl;


# instance fields
.field private mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

.field private mLock:Ljava/lang/Object;

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static sGetAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/CameraAppImpl;->sContext:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 4
    .parameter "current"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 105
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->getActivityCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraAppImpl;->getActivity(I)Landroid/app/Activity;

    move-result-object v0

    .line 107
    if-eq v0, p1, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 109
    iget-object v3, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 105
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_1
    return-void
.end method

.method public getActivity(I)Landroid/app/Activity;
    .locals 1
    .parameter "index"

    .prologue
    .line 52
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->getActivityCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getActivityCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/gallery3d/data/DataManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/DataManager;-><init>(Lcom/android/camera/CameraAppImpl;)V

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 62
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->initializeSourceMap()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/camera/CameraAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/gallery3d/data/ImageCacheService;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 44
    sput-object p0, Lcom/android/camera/CameraAppImpl;->sContext:Lcom/android/camera/CameraAppImpl;

    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 46
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 48
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    .line 49
    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
