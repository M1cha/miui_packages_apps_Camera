.class public final Lcom/android/camera/network/download/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private mAllowedOverMetered:Z

.field private mDestination:Ljava/io/File;

.field private mMaxRetryTimes:I

.field private mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVerifier:Lcom/android/camera/network/download/Verifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/network/download/Request;->mMaxRetryTimes:I

    iput-object p1, p0, Lcom/android/camera/network/download/Request;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/network/download/Request;->mUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not support scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "output file is a directory"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "dst file exists, is a directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "output file will be overwritten"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object p3, p0, Lcom/android/camera/network/download/Request;->mDestination:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getDestination()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/download/Request;->mDestination:Ljava/io/File;

    return-object v0
.end method

.method public getMaxRetryTimes()I
    .locals 1

    iget v0, p0, Lcom/android/camera/network/download/Request;->mMaxRetryTimes:I

    return v0
.end method

.method getNetworkType()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/network/download/Request;->mAllowedOverMetered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/download/Request;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/download/Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVerifier()Lcom/android/camera/network/download/Verifier;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/download/Request;->mVerifier:Lcom/android/camera/network/download/Verifier;

    return-object v0
.end method

.method public setVerifier(Lcom/android/camera/network/download/Verifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/download/Request;->mVerifier:Lcom/android/camera/network/download/Verifier;

    return-void
.end method
