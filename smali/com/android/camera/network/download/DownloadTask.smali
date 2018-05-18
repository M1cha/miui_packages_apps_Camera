.class Lcom/android/camera/network/download/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/network/download/DownloadTask$CoreTask;,
        Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;,
        Lcom/android/camera/network/download/DownloadTask$OnProgressListener;,
        Lcom/android/camera/network/download/DownloadTask$TaskInfo;
    }
.end annotation


# static fields
.field private static final RETRY_INTERVAL_MILLI:J


# instance fields
.field private mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

.field private mOnCompleteListener:Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

.field private mOnProgressListener:Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

.field private mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;


# direct methods
.method static synthetic -get0(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mOnCompleteListener:Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mOnProgressListener:Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/network/download/DownloadTask;Lcom/android/camera/network/download/Request;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/network/download/DownloadTask;->performRequest(Lcom/android/camera/network/download/Request;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/network/download/DownloadTask;->RETRY_INTERVAL_MILLI:J

    return-void
.end method

.method constructor <init>(Lcom/android/camera/network/download/Request;Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;-><init>(Lcom/android/camera/network/download/DownloadTask;Lcom/android/camera/network/download/Request;)V

    iput-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    iput-object p2, p0, Lcom/android/camera/network/download/DownloadTask;->mOnCompleteListener:Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    return-void
.end method

.method private configure(Ljava/net/HttpURLConnection;)V
    .locals 2

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x3a98

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v1, "identity"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isRetryState(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static openOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DownloadTask"

    const-string/jumbo v4, "create folder failed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "DownloadTask"

    const-string/jumbo v4, "output file is a directory"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1
    const-string/jumbo v3, "DownloadTask"

    const-string/jumbo v4, "output file will be overwritten"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0}, Lcom/android/camera/network/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "DownloadTask"

    const-string/jumbo v4, "temp file exists, try delete"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "DownloadTask"

    const-string/jumbo v4, "temp file delete failed, will overwrite"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DownloadTask"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method

.method private performProgressUpdate([BI)V
    .locals 12

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    iget-object v4, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v0, v4, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDownloadSize:J

    iget-object v4, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v6, v4, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDownloadSize:J

    int-to-long v8, p2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDownloadSize:J

    iget-object v4, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-object v4, v4, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-object v4, v4, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, p2}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    iget-object v4, p0, Lcom/android/camera/network/download/DownloadTask;->mOnProgressListener:Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v4, v4, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mContentLength:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v4, v4, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDownloadSize:J

    long-to-double v4, v4

    iget-object v6, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v6, v6, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mContentLength:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v2, v4

    long-to-double v4, v0

    iget-object v6, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v6, v6, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mContentLength:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v3, v4

    if-eq v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-virtual {v4, v2}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->publishProgress(I)V

    :cond_1
    return-void
.end method

.method private performRequest(Lcom/android/camera/network/download/Request;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v4, "DownloadTask"

    const-string/jumbo v5, "start to download request[%s, %s, %s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getTag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getUri()Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getDestination()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/network/download/DownloadTask;->preRequest()V

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getMaxRetryTimes()I

    move-result v3

    const/4 v2, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/network/download/DownloadTask;->process(Lcom/android/camera/network/download/Request;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->isRetryState(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "DownloadTask"

    const-string/jumbo v5, "retry for %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-wide v4, Lcom/android/camera/network/download/DownloadTask;->RETRY_INTERVAL_MILLI:J

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    if-le v2, v3, :cond_0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/network/download/DownloadTask;->postRequest(I)I

    move-result v4

    return v4

    :catch_0
    move-exception v1

    const/4 v0, 0x5

    goto :goto_0
.end method

.method private postDownload()I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->-get0(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/network/download/Request;->getVerifier()Lcom/android/camera/network/download/Verifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->-get0(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/network/download/Request;->getVerifier()Lcom/android/camera/network/download/Verifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-object v1, v1, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/network/download/Verifier;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "DownloadTask"

    const-string/jumbo v1, "verify success"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string/jumbo v0, "DownloadTask"

    const-string/jumbo v1, "verify fail"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    return v0
.end method

.method private postRequest(I)I
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-static {v2}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->-get0(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/network/download/Request;->getDestination()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DownloadTask"

    const-string/jumbo v3, "delete tmp file failed %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-static {v2}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->-get0(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/network/download/Request;->getDestination()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "DownloadTask"

    const-string/jumbo v3, "downloaded file missing"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "DownloadTask"

    const-string/jumbo v3, "downloaded file rename failed"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    const-string/jumbo v2, "DownloadTask"

    const-string/jumbo v3, "rename tmp file success"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private preDownload(Lcom/android/camera/network/download/Request;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getVerifier()Lcom/android/camera/network/download/Verifier;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "need verify, try to get MessageDigest"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    invoke-virtual {v0}, Lcom/android/camera/network/download/Verifier;->getInstance()Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    :cond_0
    return-void
.end method

.method private preRequest()V
    .locals 2

    new-instance v0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/network/download/DownloadTask$TaskInfo;-><init>(Lcom/android/camera/network/download/DownloadTask$TaskInfo;)V

    iput-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    return-void
.end method

.method private process(Lcom/android/camera/network/download/Request;)I
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getNetworkType()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/camera/network/download/ConnectionHelper;->open(Landroid/net/Uri;I)Lcom/android/camera/network/download/ConnectionHelper$Holder;

    move-result-object v7

    iget-object v2, v7, Lcom/android/camera/network/download/ConnectionHelper$Holder;->value:Ljava/lang/Object;

    check-cast v2, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_0

    const-string/jumbo v8, "DownloadTask"

    const-string/jumbo v9, "open connection failed"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v7, Lcom/android/camera/network/download/ConnectionHelper$Holder;->reason:I

    invoke-static {v8}, Lcom/android/camera/network/download/DownloadTask;->translateErrorCode(I)I

    move-result v8

    return v8

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/camera/network/download/DownloadTask;->configure(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/network/download/DownloadTask;->translateResponseCode(I)I

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v8, "DownloadTask"

    const-string/jumbo v9, "response code not valid"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return v6

    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/camera/network/download/DownloadTask;->processHeader(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getDestination()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/network/download/DownloadTask;->openOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v8, "DownloadTask"

    const-string/jumbo v9, "open output stream failed"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    return v8

    :catch_0
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/camera/network/download/DownloadTask;->preDownload(Lcom/android/camera/network/download/Request;)V

    const-string/jumbo v8, "DownloadTask"

    const-string/jumbo v9, "start to transfer data"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v8, 0x2000

    new-array v0, v8, [B

    :goto_2
    iget-object v8, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    invoke-virtual {v8}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v11, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/network/download/DownloadTask;->performProgressUpdate([BI)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_5
    const-string/jumbo v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v8, 0xb

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_6
    :goto_4
    return v8

    :cond_7
    if-ne v1, v11, :cond_a

    :try_start_8
    const-string/jumbo v8, "DownloadTask"

    const-string/jumbo v9, "download success"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/network/download/DownloadTask;->postDownload()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_8
    :goto_5
    if-eqz v5, :cond_9

    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    :goto_6
    return v8

    :catch_3
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_4
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_a
    :try_start_b
    const-string/jumbo v8, "DownloadTask"

    const-string/jumbo v9, "cancelled, during download"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v8, 0x5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_b

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_b
    :goto_7
    if-eqz v5, :cond_c

    :try_start_d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_c
    :goto_8
    return v8

    :catch_5
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_6
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_7
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_8
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_d

    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_d
    :goto_9
    if-eqz v5, :cond_e

    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_e
    :goto_a
    throw v8

    :catch_9
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_a
    move-exception v3

    const-string/jumbo v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method private processHeader(Ljava/net/HttpURLConnection;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mContentLength:J

    const-string/jumbo v0, "DownloadTask"

    const-string/jumbo v1, "content length: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/network/download/DownloadTask;->mTaskInfo:Lcom/android/camera/network/download/DownloadTask$TaskInfo;

    iget-wide v4, v3, Lcom/android/camera/network/download/DownloadTask$TaskInfo;->mContentLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static translateErrorCode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0xb

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static translateResponseCode(I)I
    .locals 8

    const/16 v7, 0xc

    const/4 v6, 0x0

    const/4 v5, 0x7

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_6

    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "processing http code %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v5

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 v1, 0x198

    if-ne p0, v1, :cond_1

    return v7

    :cond_1
    return v5

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const/16 v1, 0x1f8

    if-ne p0, v1, :cond_3

    return v7

    :cond_3
    const/16 v1, 0x8

    return v1

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    return v5

    :cond_5
    return v5

    :cond_6
    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "http status is ok"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method


# virtual methods
.method execute(Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask;->mCoreTask:Lcom/android/camera/network/download/DownloadTask$CoreTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method setOnProgressListener(Lcom/android/camera/network/download/DownloadTask$OnProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/download/DownloadTask;->mOnProgressListener:Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    return-void
.end method
