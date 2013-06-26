.class public final La_vcard/android/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, La_vcard/android/util/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La_vcard/android/util/Log;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 214
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, La_vcard/android/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 253
    sget-object v0, La_vcard/android/util/Log;->logger:Ljava/util/logging/Logger;

    invoke-static {p0}, La_vcard/android/util/Log;->prioToLevel(I)Ljava/util/logging/Level;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method private static prioToLevel(I)Ljava/util/logging/Level;
    .locals 1
    .parameter "priority"

    .prologue
    .line 258
    packed-switch p0, :pswitch_data_0

    .line 266
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    :goto_0
    return-object v0

    .line 259
    :pswitch_0
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    goto :goto_0

    .line 260
    :pswitch_1
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    goto :goto_0

    .line 261
    :pswitch_2
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    goto :goto_0

    .line 262
    :pswitch_3
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    .line 263
    :pswitch_4
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    goto :goto_0

    .line 264
    :pswitch_5
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 161
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, La_vcard/android/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
