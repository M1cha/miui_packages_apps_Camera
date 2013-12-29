.class public Lcom/android/zxing/WiFiUtil;
.super Ljava/lang/Object;
.source "WiFiUtil.java"


# static fields
.field public static final EAP_METHOD:[Ljava/lang/String;

.field static final SECURITY_MODES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "PEAP"

    aput-object v1, v0, v2

    const-string v1, "TLS"

    aput-object v1, v0, v3

    const-string v1, "TTLS"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/zxing/WiFiUtil;->EAP_METHOD:[Ljava/lang/String;

    .line 461
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WEP"

    aput-object v1, v0, v2

    const-string v1, "WPA"

    aput-object v1, v0, v3

    const-string v1, "WPA2"

    aput-object v1, v0, v4

    const-string v1, "WPA-EAP"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "IEEE8021X"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/zxing/WiFiUtil;->SECURITY_MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectToConfiguredNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 8
    .parameter "ctx"
    .parameter "wifiMgr"
    .parameter "config"
    .parameter "reassociate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-static {p2}, Lcom/android/zxing/WiFiUtil;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, security:Ljava/lang/String;
    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 100
    .local v3, oldPri:I
    invoke-static {p1}, Lcom/android/zxing/WiFiUtil;->getMaxPriority(Landroid/net/wifi/WifiManager;)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 101
    .local v2, newPri:I
    const v7, 0x1869f

    if-le v2, v7, :cond_1

    .line 102
    invoke-static {p1}, Lcom/android/zxing/WiFiUtil;->shiftPriorityAndSave(Landroid/net/wifi/WifiManager;)I

    move-result v2

    .line 103
    invoke-static {p1, p2, v4}, Lcom/android/zxing/WiFiUtil;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 104
    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v5

    .line 110
    :cond_1
    iput v2, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 111
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 112
    .local v1, networkId:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 117
    invoke-virtual {p1, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    iput v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v7

    if-nez v7, :cond_3

    .line 123
    iput v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 128
    :cond_3
    invoke-static {p1, p2, v4}, Lcom/android/zxing/WiFiUtil;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 129
    if-eqz p2, :cond_0

    .line 136
    iget v7, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v7, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 140
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reassociate()Z

    move-result v0

    .line 141
    .local v0, connect:Z
    :goto_1
    if-eqz v0, :cond_0

    move v5, v6

    .line 145
    goto :goto_0

    .line 140
    .end local v0           #connect:Z
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v0

    goto :goto_1
.end method

.method public static connectToNewNetwork(Landroid/net/wifi/WifiManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "wifiMgr"
    .parameter "context"
    .parameter "ssid"
    .parameter "security"
    .parameter "pwd"

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 46
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {p2}, Lcom/android/zxing/WiFiUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 49
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0, v3, p3}, Lcom/android/zxing/WiFiUtil;->removetWifiConfiguration(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {v0, p3, p4}, Lcom/android/zxing/WiFiUtil;->setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 53
    .local v1, id:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-static {p0, v0, p3}, Lcom/android/zxing/WiFiUtil;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 66
    const/4 v2, 0x1

    invoke-static {p1, p0, v0, v2}, Lcom/android/zxing/WiFiUtil;->connectToConfiguredNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    const-string p0, ""

    .line 458
    .end local p0
    .local v0, lastPos:I
    :cond_0
    :goto_0
    return-object p0

    .line 453
    .end local v0           #lastPos:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 454
    .restart local v0       #lastPos:I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 458
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getMaxPriority(Landroid/net/wifi/WifiManager;)I
    .locals 5
    .parameter "wifiManager"

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, configurations:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .line 175
    .local v3, pri:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 176
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v4, v3, :cond_0

    .line 177
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 180
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return v3
.end method

.method public static getSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cap"

    .prologue
    .line 476
    sget-object v1, Lcom/android/zxing/WiFiUtil;->SECURITY_MODES:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 477
    sget-object v1, Lcom/android/zxing/WiFiUtil;->SECURITY_MODES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    sget-object v1, Lcom/android/zxing/WiFiUtil;->SECURITY_MODES:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 481
    :goto_1
    return-object v1

    .line 476
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 481
    :cond_1
    const-string v1, "nopass"

    goto :goto_1
.end method

.method public static getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .parameter "wifiMgr"
    .parameter "configToFind"
    .parameter "security"

    .prologue
    const/4 v6, 0x0

    .line 275
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 276
    .local v5, ssid:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    move-object v1, v6

    .line 300
    :goto_0
    return-object v1

    .line 280
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 283
    .local v0, bssid:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 284
    invoke-static {p1}, Lcom/android/zxing/WiFiUtil;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p2

    .line 287
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 288
    .local v3, configurations:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_2

    move-object v1, v6

    goto :goto_0

    .line 289
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 290
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 293
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 294
    :cond_4
    invoke-static {v1}, Lcom/android/zxing/WiFiUtil;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, configSecurity:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #configSecurity:Ljava/lang/String;
    :cond_5
    move-object v1, v6

    .line 300
    goto :goto_0
.end method

.method public static getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 4
    .parameter "wifiConfig"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    const-string v0, "WEP"

    .line 330
    :goto_0
    return-object v0

    .line 318
    :cond_1
    const-string v0, "nopass"

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    const-string v0, "WPA2"

    goto :goto_0

    .line 322
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    const-string v0, "WPA-EAP"

    goto :goto_0

    .line 324
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    const-string v0, "IEEE8021X"

    goto :goto_0

    .line 326
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 327
    const-string v0, "WPA"

    goto :goto_0

    .line 329
    :cond_6
    const-string v0, "WiFi Connecter"

    const-string v1, "Unknown security type from WifiConfiguration, falling back on open."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v0, "nopass"

    goto :goto_0
.end method

.method public static isCurrentConnection(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "wifiMgr"
    .parameter "SSID"
    .parameter "security"

    .prologue
    const/4 v7, 0x0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v7

    .line 243
    :cond_1
    if-nez p2, :cond_2

    .line 244
    const-string p2, "nopass"

    .line 247
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 248
    .local v4, info:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 251
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, ssid:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    .line 254
    .local v5, networdId:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 257
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p1}, Lcom/android/zxing/WiFiUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 260
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 261
    .local v2, configurations:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 263
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, v8, :cond_4

    .line 264
    invoke-static {v0}, Lcom/android/zxing/WiFiUtil;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, configSecurity:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 266
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private static isHex(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 439
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 440
    .local v0, c:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x46

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x66

    if-le v0, v2, :cond_3

    .line 441
    :cond_2
    const/4 v2, 0x0

    .line 445
    .end local v0           #c:C
    :goto_1
    return v2

    .line 438
    .restart local v0       #c:C
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 445
    .end local v0           #c:C
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isHexWepKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "wepKey"

    .prologue
    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 430
    .local v0, len:I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 431
    const/4 v1, 0x0

    .line 434
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/zxing/WiFiUtil;->isHex(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isWiFiContected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 485
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 487
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 489
    .local v1, wifiNetworkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removetWifiConfiguration(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "wifiMgr"
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 235
    :cond_0
    return-void

    .line 221
    :cond_1
    if-nez p2, :cond_2

    .line 222
    const-string p2, "nopass"

    .line 225
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 226
    .local v2, configurations:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 228
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    invoke-static {v0}, Lcom/android/zxing/WiFiUtil;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, configSecurity:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 231
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0
.end method

.method private static setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "config"
    .parameter "security"
    .parameter "password"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 351
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 352
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 353
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 354
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    const-string p1, "nopass"

    .line 358
    const-string v3, "WiFi Connecter"

    const-string v4, "Empty security, assuming open"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    const-string v3, "WEP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, wepPasswordType:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 365
    if-nez v0, :cond_4

    .line 366
    invoke-static {p2}, Lcom/android/zxing/WiFiUtil;->isHexWepKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p2, v3, v2

    .line 378
    .end local p2
    :cond_1
    :goto_0
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 380
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 381
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 383
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 385
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 386
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 424
    .end local v0           #wepPasswordType:I
    :cond_2
    :goto_1
    return-void

    .line 369
    .restart local v0       #wepPasswordType:I
    .restart local p2
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/zxing/WiFiUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_0

    .line 372
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-ne v0, v1, :cond_5

    invoke-static {p2}, Lcom/android/zxing/WiFiUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_5
    aput-object p2, v3, v2

    goto :goto_0

    .line 388
    .end local v0           #wepPasswordType:I
    .restart local p2
    :cond_6
    const-string v3, "WPA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "WPA2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 389
    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 390
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 392
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 394
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 395
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 397
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const-string v4, "WPA2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_2
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 400
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    invoke-static {p2}, Lcom/android/zxing/WiFiUtil;->isHex(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 403
    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move v1, v2

    .line 397
    goto :goto_2

    .line 406
    :cond_9
    invoke-static {p2}, Lcom/android/zxing/WiFiUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 410
    :cond_a
    const-string v1, "nopass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 411
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 412
    :cond_b
    const-string v1, "WPA-EAP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "IEEE8021X"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    :cond_c
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 414
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 415
    const-string v1, "WPA-EAP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 416
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 420
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    invoke-static {p2}, Lcom/android/zxing/WiFiUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 418
    :cond_d
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3
.end method

.method private static shiftPriorityAndSave(Landroid/net/wifi/WifiManager;)I
    .locals 4
    .parameter "wifiMgr"

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, configurations:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static {v1}, Lcom/android/zxing/WiFiUtil;->sortByPriority(Ljava/util/List;)V

    .line 162
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 163
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 164
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 165
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 166
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 169
    return v3
.end method

.method private static sortByPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, configurations:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v0, Lcom/android/zxing/WiFiUtil$1;

    invoke-direct {v0}, Lcom/android/zxing/WiFiUtil$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    return-void
.end method
