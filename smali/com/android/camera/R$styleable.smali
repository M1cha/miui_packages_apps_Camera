.class public final Lcom/android/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final IconIndicator:[I

.field public static final IconListPreference:[I

.field public static final ListPreference:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 3071
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f010000

    aput v2, v0, v1

    sput-object v0, Lcom/android/camera/R$styleable;->CameraPreference:[I

    .line 3100
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/R$styleable;->IconIndicator:[I

    .line 3139
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/R$styleable;->IconListPreference:[I

    .line 3200
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/R$styleable;->ListPreference:[I

    return-void

    .line 3100
    :array_0
    .array-data 4
        0x7f010005
        0x7f010006
    .end array-data

    .line 3139
    :array_1
    .array-data 4
        0x7f010005
        0x7f010007
        0x7f010008
        0x7f010009
    .end array-data

    .line 3200
    :array_2
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
