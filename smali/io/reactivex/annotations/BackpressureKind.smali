.class public final enum Lio/reactivex/annotations/BackpressureKind;
.super Ljava/lang/Enum;
.source "BackpressureKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/annotations/BackpressureKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/annotations/BackpressureKind;

.field public static final enum ERROR:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum FULL:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum NONE:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum SPECIAL:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string/jumbo v1, "PASS_THROUGH"

    invoke-direct {v0, v1, v3}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string/jumbo v1, "FULL"

    invoke-direct {v0, v1, v4}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string/jumbo v1, "SPECIAL"

    invoke-direct {v0, v1, v5}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string/jumbo v1, "UNBOUNDED_IN"

    invoke-direct {v0, v1, v6}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;

    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/annotations/BackpressureKind;

    sget-object v1, Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;

    aput-object v1, v0, v3

    sget-object v1, Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;

    aput-object v1, v0, v4

    sget-object v1, Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;

    aput-object v1, v0, v5

    sget-object v1, Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;

    aput-object v1, v0, v6

    sget-object v1, Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;

    aput-object v1, v0, v7

    sget-object v1, Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->$VALUES:[Lio/reactivex/annotations/BackpressureKind;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/annotations/BackpressureKind;
    .locals 1

    const-class v0, Lio/reactivex/annotations/BackpressureKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/annotations/BackpressureKind;

    return-object v0
.end method

.method public static values()[Lio/reactivex/annotations/BackpressureKind;
    .locals 1

    sget-object v0, Lio/reactivex/annotations/BackpressureKind;->$VALUES:[Lio/reactivex/annotations/BackpressureKind;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/annotations/BackpressureKind;

    return-object v0
.end method
