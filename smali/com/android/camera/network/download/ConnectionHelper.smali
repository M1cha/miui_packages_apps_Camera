.class Lcom/android/camera/network/download/ConnectionHelper;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/network/download/ConnectionHelper$Holder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static open(Landroid/net/Uri;I)Lcom/android/camera/network/download/ConnectionHelper$Holder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Lcom/android/camera/network/download/ConnectionHelper$Holder",
            "<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/network/download/ConnectionHelper;->open(Ljava/lang/String;I)Lcom/android/camera/network/download/ConnectionHelper$Holder;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not support scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static open(Ljava/lang/String;I)Lcom/android/camera/network/download/ConnectionHelper$Holder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/camera/network/download/ConnectionHelper$Holder",
            "<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/camera/network/download/ConnectionHelper;->verify(I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Lcom/android/camera/network/download/ConnectionHelper$Holder;

    invoke-direct {v4, v0}, Lcom/android/camera/network/download/ConnectionHelper$Holder;-><init>(I)V

    return-object v4

    :cond_0
    :try_start_0
    const-string/jumbo v4, "ConnectionManager"

    const-string/jumbo v5, "try open http connection"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/camera/network/download/ConnectionHelper$Holder;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v4}, Lcom/android/camera/network/download/ConnectionHelper$Holder;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    const-string/jumbo v4, "ConnectionManager"

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Lcom/android/camera/network/download/ConnectionHelper$Holder;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/camera/network/download/ConnectionHelper$Holder;-><init>(I)V

    return-object v4

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static verify(I)I
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "ConnectionManager"

    const-string/jumbo v1, "refreshing network state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/network/util/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    if-ne p0, v2, :cond_2

    invoke-static {}, Lcom/android/camera/network/util/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
