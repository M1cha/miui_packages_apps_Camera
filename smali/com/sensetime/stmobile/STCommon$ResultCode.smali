.class final enum Lcom/sensetime/stmobile/STCommon$ResultCode;
.super Ljava/lang/Enum;
.source "STCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensetime/stmobile/STCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sensetime/stmobile/STCommon$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_ACTIVE_CODE_INVALID:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_ACTIVE_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_AUTH_EXPIRE:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_DELNOTFOUND:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_FILE_EXPIRE:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_FILE_NOT_FOUND:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_GET_HOST_ERROR:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_GET_UDID_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_HANDLE:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_INVALIDARG:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_INVALID_APPID:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_INVALID_AUTH:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_INVALID_FILE_FORMAT:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_INVALID_PIXEL_FORMAT:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_LICENSE_IS_NOT_ACTIVABLE:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_NO_CAPABILITY:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_ONLINE_AUTH_CONNECT_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_ONLINE_AUTH_INVALID:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_ONLINE_AUTH_TIMEOUT:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_OUTOFMEMORY:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_SOCKET_INIT_FAILED:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_SOCKET_NO_VERSION_TWO_POINT_TWO:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_E_UUID_MISMATCH:Lcom/sensetime/stmobile/STCommon$ResultCode;

.field public static final enum ST_OK:Lcom/sensetime/stmobile/STCommon$ResultCode;


# instance fields
.field private final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_OK:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_INVALIDARG"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALIDARG:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_HANDLE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_HANDLE:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_OUTOFMEMORY"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_OUTOFMEMORY:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_FAIL"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_DELNOTFOUND"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_DELNOTFOUND:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_INVALID_PIXEL_FORMAT"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALID_PIXEL_FORMAT:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_FILE_NOT_FOUND"

    const/4 v2, 0x7

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_FILE_NOT_FOUND:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_INVALID_FILE_FORMAT"

    const/16 v2, 0x8

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALID_FILE_FORMAT:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_FILE_EXPIRE"

    const/16 v2, 0x9

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_FILE_EXPIRE:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_INVALID_AUTH"

    const/16 v2, 0xa

    const/16 v3, -0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALID_AUTH:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_INVALID_APPID"

    const/16 v2, 0xb

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALID_APPID:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_AUTH_EXPIRE"

    const/16 v2, 0xc

    const/16 v3, -0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_AUTH_EXPIRE:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_UUID_MISMATCH"

    const/16 v2, 0xd

    const/16 v3, -0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_UUID_MISMATCH:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_ONLINE_AUTH_CONNECT_FAIL"

    const/16 v2, 0xe

    const/16 v3, -0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ONLINE_AUTH_CONNECT_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_ONLINE_AUTH_TIMEOUT"

    const/16 v2, 0xf

    const/16 v3, -0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ONLINE_AUTH_TIMEOUT:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_ONLINE_AUTH_INVALID"

    const/16 v2, 0x10

    const/16 v3, -0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ONLINE_AUTH_INVALID:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_LICENSE_IS_NOT_ACTIVABLE"

    const/16 v2, 0x11

    const/16 v3, -0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_LICENSE_IS_NOT_ACTIVABLE:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_ACTIVE_FAIL"

    const/16 v2, 0x12

    const/16 v3, -0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ACTIVE_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_ACTIVE_CODE_INVALID"

    const/16 v2, 0x13

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ACTIVE_CODE_INVALID:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_NO_CAPABILITY"

    const/16 v2, 0x14

    const/16 v3, -0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_NO_CAPABILITY:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_GET_UDID_FAIL"

    const/16 v2, 0x15

    const/16 v3, -0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_GET_UDID_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_SOCKET_INIT_FAILED"

    const/16 v2, 0x16

    const/16 v3, -0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_SOCKET_INIT_FAILED:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_SOCKET_NO_VERSION_TWO_POINT_TWO"

    const/16 v2, 0x17

    const/16 v3, -0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_SOCKET_NO_VERSION_TWO_POINT_TWO:Lcom/sensetime/stmobile/STCommon$ResultCode;

    new-instance v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    const-string/jumbo v1, "ST_E_GET_HOST_ERROR"

    const/16 v2, 0x18

    const/16 v3, -0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/stmobile/STCommon$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_GET_HOST_ERROR:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/sensetime/stmobile/STCommon$ResultCode;

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_OK:Lcom/sensetime/stmobile/STCommon$ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALIDARG:Lcom/sensetime/stmobile/STCommon$ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_HANDLE:Lcom/sensetime/stmobile/STCommon$ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_OUTOFMEMORY:Lcom/sensetime/stmobile/STCommon$ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_DELNOTFOUND:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALID_PIXEL_FORMAT:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_FILE_NOT_FOUND:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALID_FILE_FORMAT:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_FILE_EXPIRE:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALID_AUTH:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_INVALID_APPID:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_AUTH_EXPIRE:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_UUID_MISMATCH:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ONLINE_AUTH_CONNECT_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ONLINE_AUTH_TIMEOUT:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ONLINE_AUTH_INVALID:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_LICENSE_IS_NOT_ACTIVABLE:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ACTIVE_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_ACTIVE_CODE_INVALID:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_NO_CAPABILITY:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_GET_UDID_FAIL:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_SOCKET_INIT_FAILED:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_SOCKET_NO_VERSION_TWO_POINT_TWO:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sensetime/stmobile/STCommon$ResultCode;->ST_E_GET_HOST_ERROR:Lcom/sensetime/stmobile/STCommon$ResultCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->$VALUES:[Lcom/sensetime/stmobile/STCommon$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sensetime/stmobile/STCommon$ResultCode;->resultCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensetime/stmobile/STCommon$ResultCode;
    .locals 1

    const-class v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sensetime/stmobile/STCommon$ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/sensetime/stmobile/STCommon$ResultCode;
    .locals 1

    sget-object v0, Lcom/sensetime/stmobile/STCommon$ResultCode;->$VALUES:[Lcom/sensetime/stmobile/STCommon$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/sensetime/stmobile/STCommon$ResultCode;->resultCode:I

    return v0
.end method
