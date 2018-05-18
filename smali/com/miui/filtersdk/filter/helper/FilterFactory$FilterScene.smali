.class public final enum Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;
.super Ljava/lang/Enum;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/filtersdk/filter/helper/FilterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

.field public static final enum BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

.field public static final enum NONE:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

.field public static final enum NORMAL:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

.field public static final enum PORTRAIT:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

.field public static final enum STICKER:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    const-string/jumbo v1, "BEAUTY"

    invoke-direct {v0, v1, v3}, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    const-string/jumbo v1, "STICKER"

    invoke-direct {v0, v1, v4}, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    const-string/jumbo v1, "PORTRAIT"

    invoke-direct {v0, v1, v5}, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->PORTRAIT:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NONE:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->PORTRAIT:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NONE:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->$VALUES:[Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;
    .locals 1

    const-class v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object v0
.end method

.method public static values()[Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;
    .locals 1

    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->$VALUES:[Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object v0
.end method
