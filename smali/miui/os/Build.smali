.class public Lmiui/os/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IS_ALPHA_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_CM_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_CTS_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_CU_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DEFY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DESIRE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DEVELOPMENT_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_FAST_GPU_DEVICE:Z = false

.field public static final IS_FINAL_USER_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_FULL_SOURCE_CODE_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_GALAXYS2:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_GALAXYS_NEXUS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HK_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HONGMI:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HTC_HD2:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_I9000:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_INTERNATIONAL_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_LOW_MEMORY_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MI1S:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MI2A:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MILESTONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE_CT_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE_PLUS_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITHREE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITHREE_TDSCDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITWO:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITWO_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_MITWO_HK_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_MITWO_TW_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_7:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_ONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_S:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_P990:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_RICH_MEMORY_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_STABLE_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_T959:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_TDS_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_TW_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_U8860:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_U9200:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_XIAOMI:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_XIAOMI_CDMA:Z = false

.field private static final REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+.\\d+.\\d+(.ALPHA)?"

.field public static final SHOW_MAGNIFIER_WHEN_INPUT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11
    const-string v0, "jordan"

    sget-object v3, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    .line 12
    const-string v0, "bravo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DESIRE:Z

    .line 13
    const-string v0, "galaxys2"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    .line 14
    const-string v0, "htcleo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "leo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lmiui/os/Build;->IS_HTC_HD2:Z

    .line 15
    const-string v0, "aries"

    sget-object v3, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    .line 16
    const-string v0, "umts_sholes"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    .line 17
    const-string v0, "mione"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mione_plus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    .line 18
    const-string v0, "aries"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "taurus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    .line 19
    const-string v0, "pisces"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    .line 20
    const-string v0, "HM2013022"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    .line 21
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_10

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    .line 22
    const-string v0, "passion"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_ONE:Z

    .line 23
    const-string v0, "crespo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    .line 24
    const-string v0, "grouper"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_7:Z

    .line 25
    const-string v0, "maguro"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    .line 26
    const-string v0, "p990"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_P990:Z

    .line 27
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vibrant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_T959:Z

    .line 28
    const-string v0, "hwu8860"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_U8860:Z

    .line 29
    const-string v0, "hwu9200"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_U9200:Z

    .line 30
    const-string v0, "MI 1S"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MI 1SC"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lmiui/os/Build;->IS_MI1S:Z

    .line 31
    const-string v0, "MI 2A"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    .line 33
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_12

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lmiui/os/Build;->IS_RICH_MEMORY_DEVICE:Z

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    sput-boolean v0, Lmiui/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    .line 36
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_13

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lmiui/os/Build;->IS_FAST_GPU_DEVICE:Z

    .line 39
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-eqz v0, :cond_14

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Lmiui/os/Build;->IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z

    .line 42
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lmiui/os/Build;->isMsm8660()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    :goto_8
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_PLUS_CDMA:Z

    .line 44
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lmiui/os/Build;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    :goto_9
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    .line 46
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lmiui/os/Build;->isTdsCdma()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    :goto_a
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    .line 48
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE_PLUS_CDMA:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    if-eqz v0, :cond_18

    :cond_8
    move v0, v2

    :goto_b
    sput-boolean v0, Lmiui/os/Build;->IS_XIAOMI_CDMA:Z

    .line 52
    const-string v0, "cu"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lmiui/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    .line 54
    const-string v0, "cm"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lmiui/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    .line 56
    const-string v0, "ct"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lmiui/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_CT_CUSTOMIZATION:Z

    .line 59
    invoke-static {}, Lmiui/os/Build;->isTdsCdma()Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_TDS_CDMA:Z

    .line 61
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_7:Z

    if-eqz v0, :cond_19

    :cond_9
    move v0, v2

    :goto_c
    sput-boolean v0, Lmiui/os/Build;->SHOW_MAGNIFIER_WHEN_INPUT:Z

    .line 64
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_7:Z

    if-eqz v0, :cond_1a

    :cond_a
    move v0, v2

    :goto_d
    sput-boolean v0, Lmiui/os/Build;->IS_FULL_SOURCE_CODE_DEVICE:Z

    .line 69
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(.ALPHA)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    :goto_e
    sput-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 73
    const-string v0, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_1c

    move v0, v2

    :goto_f
    sput-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 77
    const-string v0, "aries_tw"

    const-string v3, "ro.product.mod_device"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_TW_BUILD:Z

    .line 79
    const-string v0, "aries_hk"

    const-string v3, "ro.product.mod_device"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_HK_BUILD:Z

    .line 82
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_TW_BUILD:Z

    sput-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    .line 83
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_HK_BUILD:Z

    sput-boolean v0, Lmiui/os/Build;->IS_HK_BUILD:Z

    .line 84
    sget-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lmiui/os/Build;->IS_HK_BUILD:Z

    if-eqz v0, :cond_c

    :cond_b
    move v1, v2

    :cond_c
    sput-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 87
    const-string v0, "1"

    const-string v1, "ro.miui.secure"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    .line 90
    const-string v0, "1"

    const-string v1, "ro.miui.cts"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    return-void

    :cond_d
    move v0, v1

    .line 14
    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 17
    goto/16 :goto_1

    :cond_f
    move v0, v1

    .line 18
    goto/16 :goto_2

    :cond_10
    move v0, v1

    .line 21
    goto/16 :goto_3

    :cond_11
    move v0, v1

    .line 30
    goto/16 :goto_4

    :cond_12
    move v0, v1

    .line 33
    goto/16 :goto_5

    :cond_13
    move v0, v1

    .line 36
    goto/16 :goto_6

    :cond_14
    move v0, v1

    .line 39
    goto/16 :goto_7

    :cond_15
    move v0, v1

    .line 42
    goto/16 :goto_8

    :cond_16
    move v0, v1

    .line 44
    goto/16 :goto_9

    :cond_17
    move v0, v1

    .line 46
    goto/16 :goto_a

    :cond_18
    move v0, v1

    .line 48
    goto/16 :goto_b

    :cond_19
    move v0, v1

    .line 61
    goto/16 :goto_c

    :cond_1a
    move v0, v1

    .line 64
    goto/16 :goto_d

    :cond_1b
    move v0, v1

    .line 69
    goto/16 :goto_e

    :cond_1c
    move v0, v1

    .line 73
    goto/16 :goto_f
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    return-void
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"

    .prologue
    .line 134
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCdma()Z
    .locals 2

    .prologue
    .line 117
    const-string v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, cdma:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDevelopmentVersion()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    return v0
.end method

.method public static isMsm8660()Z
    .locals 2

    .prologue
    .line 111
    const-string v1, "ro.soc.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, soc:Ljava/lang/String;
    const-string v1, "msm8660"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOfficialVersion()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStableVersion()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    return v0
.end method

.method public static isTdsCdma()Z
    .locals 3

    .prologue
    .line 122
    const-string v0, "TD"

    const-string v1, "persist.radio.modem"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
