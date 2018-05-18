.class public Lcom/android/camera/constant/ModeConstant;
.super Ljava/lang/Object;
.source "ModeConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/constant/ModeConstant$ConstantMode;
    }
.end annotation


# static fields
.field static sModeList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/constant/ModeConstant;->sModeList:[I

    return-void

    :array_0
    .array-data 4
        0xa1
        0xa2
        0xa3
        0xa5
        0xa6
        0xa6
        0xa7
        0xa8
        0xa9
        0xab
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllModes()[I
    .locals 1

    sget-object v0, Lcom/android/camera/constant/ModeConstant;->sModeList:[I

    return-object v0
.end method
