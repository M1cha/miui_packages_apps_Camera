.class public Lcom/android/zxing/WiFiConManager;
.super Ljava/lang/Object;
.source "WiFiConManager.java"


# instance fields
.field private final TRY_TIMES:I

.field private mActivity:Landroid/app/Activity;

.field private mPassWord:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mSecurity:Ljava/lang/String;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "textView"
    .parameter "ssid"
    .parameter "security"
    .parameter "pwd"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/zxing/WiFiConManager;->TRY_TIMES:I

    .line 27
    iput-object p1, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    .line 28
    iput-object p3, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/android/zxing/WiFiConManager;->mPassWord:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 32
    return-void
.end method

.method private OpenWifiUntilTimeout()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, i:I
    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_2
    const/4 v0, 0x0

    .line 132
    .local v0, enabled:Z
    :goto_1
    if-nez v0, :cond_0

    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    .line 134
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 135
    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/zxing/WiFiConManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/zxing/WiFiConManager;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/zxing/WiFiConManager;->getResultMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/zxing/WiFiConManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/zxing/WiFiConManager;->connect()I

    move-result v0

    return v0
.end method

.method private connect()I
    .locals 7

    .prologue
    const/4 v1, 0x2

    .line 69
    invoke-direct {p0}, Lcom/android/zxing/WiFiConManager;->OpenWifiUntilTimeout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    const/4 v1, 0x1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/zxing/WiFiUtil;->getSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/zxing/WiFiConManager;->mPassWord:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/zxing/WiFiUtil;->connectToNewNetwork(Landroid/net/wifi/WifiManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/zxing/WiFiConManager;->getWifiConnectUntilTimeout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 79
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/zxing/WiFiUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private getResultMessage(I)Ljava/lang/String;
    .locals 2
    .parameter "ret"

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0225

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0227

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0224

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getWifiConnectUntilTimeout()Z
    .locals 4

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, b:Z
    const/4 v1, 0x0

    .line 104
    .local v1, i:I
    :goto_0
    if-nez v0, :cond_1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_1

    .line 106
    if-nez v1, :cond_0

    .line 107
    const-wide/16 v2, 0x320

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 111
    :goto_1
    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/zxing/WiFiUtil;->isWiFiContected(Landroid/content/Context;)Z

    move-result v0

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v2

    goto :goto_0

    .line 117
    :cond_1
    return v0
.end method


# virtual methods
.method public connectInBackground()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mWiFiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/zxing/WiFiUtil;->isCurrentConnection(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/zxing/WiFiConManager;->getResultMessage(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v1, Lcom/android/zxing/WiFiConManager$1;

    invoke-direct {v1, p0}, Lcom/android/zxing/WiFiConManager$1;-><init>(Lcom/android/zxing/WiFiConManager;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"
    .parameter "security"
    .parameter "pwd"

    .prologue
    .line 35
    iput-object p2, p0, Lcom/android/zxing/WiFiConManager;->mSecurity:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/zxing/WiFiConManager;->mSSID:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/android/zxing/WiFiConManager;->mPassWord:Ljava/lang/String;

    .line 38
    return-void
.end method
