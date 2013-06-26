.class public Lcom/android/zxing/QRCodeMatcher;
.super Ljava/lang/Object;
.source "QRCodeMatcher.java"


# static fields
.field private static final MARKET:Ljava/util/regex/Pattern;

.field private static final MECARD:Ljava/util/regex/Pattern;

.field private static final MECARDHEAD:Ljava/util/regex/Pattern;

.field private static final MECARDSPLIT:Ljava/util/regex/Pattern;

.field private static final VCARD:Ljava/util/regex/Pattern;

.field private static final WEB_URL:Ljava/util/regex/Pattern;

.field private static final WECHAT:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "(?:(?:((http|https|rtsp)):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:\\/(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/QRCodeMatcher;->WEB_URL:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "BEGIN\\s*:\\s*VCARD"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/QRCodeMatcher;->VCARD:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "(mecard\\s*:.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/QRCodeMatcher;->MECARD:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "(market\\s*:\\/\\/.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/QRCodeMatcher;->MARKET:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "(http:\\/\\/weixin.qq.com|weixin:\\/\\/)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/QRCodeMatcher;->WECHAT:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "([a-zA-Z]{1,6}\\s*:[^;]+);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/QRCodeMatcher;->MECARDSPLIT:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\s*(MECARD|mecard)\\s*:\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/QRCodeMatcher;->MECARDHEAD:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contactsCardSpliter(Ljava/lang/String;Lcom/android/zxing/QRCodeType;)Ljava/util/HashMap;
    .locals 1
    .parameter "s"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/zxing/QRCodeType;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    if-ne p1, v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/android/zxing/QRCodeMatcher;->meCardSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/zxing/QRCodeMatcher;->vCardSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public static isVCard(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    .line 91
    new-instance v3, La_vcard/android/syncml/pim/vcard/VCardParser;

    invoke-direct {v3}, La_vcard/android/syncml/pim/vcard/VCardParser;-><init>()V

    .line 92
    .local v3, parser:La_vcard/android/syncml/pim/vcard/VCardParser;
    new-instance v0, La_vcard/android/syncml/pim/VDataBuilder;

    invoke-direct {v0}, La_vcard/android/syncml/pim/VDataBuilder;-><init>()V

    .line 93
    .local v0, builder:La_vcard/android/syncml/pim/VDataBuilder;
    const/4 v2, 0x0

    .line 95
    .local v2, parsed:Z
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v3, p0, v4, v0}, La_vcard/android/syncml/pim/vcard/VCardParser;->parse(Ljava/lang/String;Ljava/lang/String;La_vcard/android/syncml/pim/VDataBuilder;)Z
    :try_end_0
    .catch La_vcard/android/syncml/pim/vcard/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 101
    :goto_0
    return v2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:La_vcard/android/syncml/pim/vcard/VCardException;
    invoke-virtual {v1}, La_vcard/android/syncml/pim/vcard/VCardException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v1           #e:La_vcard/android/syncml/pim/vcard/VCardException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static match(Ljava/lang/String;)Lcom/android/zxing/QRCodeType;
    .locals 2
    .parameter "s"

    .prologue
    .line 47
    sget-object v1, Lcom/android/zxing/QRCodeMatcher;->VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-static {p0}, Lcom/android/zxing/QRCodeMatcher;->isVCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    .line 87
    :goto_0
    return-object v1

    .line 56
    :cond_0
    sget-object v1, Lcom/android/zxing/QRCodeMatcher;->WECHAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_1

    .line 59
    sget-object v1, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 65
    sget-object v1, Lcom/android/zxing/QRCodeMatcher;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    const-string v1, ".apk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    goto :goto_0

    .line 70
    :cond_2
    sget-object v1, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    goto :goto_0

    .line 73
    :cond_3
    sget-object v1, Lcom/android/zxing/QRCodeMatcher;->MARKET:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_4

    .line 76
    sget-object v1, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    goto :goto_0

    .line 81
    :cond_4
    sget-object v1, Lcom/android/zxing/QRCodeMatcher;->MECARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_5

    .line 84
    sget-object v1, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    goto :goto_0

    .line 87
    :cond_5
    sget-object v1, Lcom/android/zxing/QRCodeType;->TEXT:Lcom/android/zxing/QRCodeType;

    goto :goto_0
.end method

.method private static meCardSpliter(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 142
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/android/zxing/QRCodeMatcher;->MECARDHEAD:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 144
    .local v1, head:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 145
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, content:Ljava/lang/String;
    sget-object v6, Lcom/android/zxing/QRCodeMatcher;->MECARDSPLIT:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 147
    .local v5, split:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, pair:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 150
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 151
    .local v2, index:I
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #pair:Ljava/lang/String;
    .end local v5           #split:Ljava/util/regex/Matcher;
    :cond_1
    return-object v3
.end method

.method private static vCardSpliter(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v7, La_vcard/android/syncml/pim/vcard/VCardParser;

    invoke-direct {v7}, La_vcard/android/syncml/pim/vcard/VCardParser;-><init>()V

    .line 113
    .local v7, parser:La_vcard/android/syncml/pim/vcard/VCardParser;
    new-instance v0, La_vcard/android/syncml/pim/VDataBuilder;

    invoke-direct {v0}, La_vcard/android/syncml/pim/VDataBuilder;-><init>()V

    .line 114
    .local v0, builder:La_vcard/android/syncml/pim/VDataBuilder;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 117
    .local v6, parsed:Z
    :try_start_0
    const-string v11, "UTF-8"

    invoke-virtual {v7, p0, v11, v0}, La_vcard/android/syncml/pim/vcard/VCardParser;->parse(Ljava/lang/String;Ljava/lang/String;La_vcard/android/syncml/pim/VDataBuilder;)Z
    :try_end_0
    .catch La_vcard/android/syncml/pim/vcard/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 124
    :goto_0
    if-eqz v6, :cond_2

    .line 125
    iget-object v8, v0, La_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    .line 126
    .local v8, pimContacts:Ljava/util/List;,"Ljava/util/List<La_vcard/android/syncml/pim/VNode;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La_vcard/android/syncml/pim/VNode;

    .line 127
    .local v1, contact:La_vcard/android/syncml/pim/VNode;
    iget-object v10, v1, La_vcard/android/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    .line 128
    .local v10, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<La_vcard/android/syncml/pim/PropertyNode;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La_vcard/android/syncml/pim/PropertyNode;

    .line 129
    .local v9, prop:La_vcard/android/syncml/pim/PropertyNode;
    const-string v11, "TITLE"

    iget-object v12, v9, La_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 130
    const-string v11, "TIL"

    iget-object v12, v9, La_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    iget-object v11, v9, La_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    iget-object v12, v9, La_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 118
    .end local v1           #contact:La_vcard/android/syncml/pim/VNode;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #pimContacts:Ljava/util/List;,"Ljava/util/List<La_vcard/android/syncml/pim/VNode;>;"
    .end local v9           #prop:La_vcard/android/syncml/pim/PropertyNode;
    .end local v10           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<La_vcard/android/syncml/pim/PropertyNode;>;"
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:La_vcard/android/syncml/pim/vcard/VCardException;
    invoke-virtual {v2}, La_vcard/android/syncml/pim/vcard/VCardException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v2           #e:La_vcard/android/syncml/pim/vcard/VCardException;
    :catch_1
    move-exception v2

    .line 121
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    return-object v5
.end method
