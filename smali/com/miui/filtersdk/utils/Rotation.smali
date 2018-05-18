.class public final enum Lcom/miui/filtersdk/utils/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/filtersdk/utils/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum NORMAL:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const-string/jumbo v1, "ROTATION_90"

    invoke-direct {v0, v1, v3}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const-string/jumbo v1, "ROTATION_180"

    invoke-direct {v0, v1, v4}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const-string/jumbo v1, "ROTATION_270"

    invoke-direct {v0, v1, v5}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/filtersdk/utils/Rotation;

    sget-object v1, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->$VALUES:[Lcom/miui/filtersdk/utils/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/miui/filtersdk/utils/Rotation;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    return-object v0

    :sswitch_1
    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    return-object v0

    :sswitch_2
    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    return-object v0

    :sswitch_3
    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    return-object v0

    :sswitch_4
    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
        0x168 -> :sswitch_4
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/filtersdk/utils/Rotation;
    .locals 1

    const-class v0, Lcom/miui/filtersdk/utils/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/utils/Rotation;

    return-object v0
.end method

.method public static values()[Lcom/miui/filtersdk/utils/Rotation;
    .locals 1

    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->$VALUES:[Lcom/miui/filtersdk/utils/Rotation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/filtersdk/utils/Rotation;

    return-object v0
.end method
