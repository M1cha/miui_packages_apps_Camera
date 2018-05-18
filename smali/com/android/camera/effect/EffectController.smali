.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$EffectChangeType;,
        Lcom/android/camera/effect/EffectController$EffectChangedListener;,
        Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    }
.end annotation


# static fields
.field private static final synthetic -com-miui-filtersdk-filter-helper-FilterTypeSwitchesValues:[I

.field public static final EFFECT_ALL_CHANGE_TYPES:[I

.field private static final TAG:Ljava/lang/String;

.field public static sDividerIndex:I

.field private static sFishEyeIndex:I

.field private static sInstance:Lcom/android/camera/effect/EffectController;


# instance fields
.field private mBeautyEnable:Z

.field private mBeautyFrameReady:Z

.field private mBlur:Z

.field private mBlurStep:I

.field private mChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectController$EffectChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSticker:Ljava/lang/String;

.field private mDeviceRotation:F

.field private mDrawGradienter:Z

.field private mDrawPeaking:Z

.field private mDrawTilt:Z

.field private mEffectId:I

.field private mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field private mFilterInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsDrawMainFrame:Z

.field private mNeedDestroyMakeup:Z

.field private mOrientation:I

.field private mOverrideEffectIndex:I

.field private mTiltShiftMaskAlpha:F


# direct methods
.method private static synthetic -getcom-miui-filtersdk-filter-helper-FilterTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/camera/effect/EffectController;->-com-miui-filtersdk-filter-helper-FilterTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/EffectController;->-com-miui-filtersdk-filter-helper-FilterTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_FAIRYTALE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1e

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_JAPANESE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1d

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MAZE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1c

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MINT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1b

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MOOD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1a

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MOVIE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_19

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_NATURE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_18

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_PINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_17

    :goto_7
    :try_start_8
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_RIDDLE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_16

    :goto_8
    :try_start_9
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_ROMANCE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_15

    :goto_9
    :try_start_a
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_STORY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_14

    :goto_a
    :try_start_b
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_13

    :goto_b
    :try_start_c
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_BERRY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_12

    :goto_c
    :try_start_d
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_COOKIE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_11

    :goto_d
    :try_start_e
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_DELICACY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_10

    :goto_e
    :try_start_f
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FADE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_e

    :goto_10
    :try_start_11
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_KOIZORA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_d

    :goto_11
    :try_start_12
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LATTE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_c

    :goto_12
    :try_start_13
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIGHT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_b

    :goto_13
    :try_start_14
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIVELY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_a

    :goto_14
    :try_start_15
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_QUIET:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_9

    :goto_15
    :try_start_16
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_SODA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_8

    :goto_16
    :try_start_17
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WARM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_7

    :goto_17
    :try_start_18
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_6

    :goto_18
    :try_start_19
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_BYGONE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_5

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_4

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FOREST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_3

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_POLAROID:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_2

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_YEARS:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_0

    :goto_1e
    sput-object v0, Lcom/android/camera/effect/EffectController;->-com-miui-filtersdk-filter-helper-FilterTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1e

    :catch_1
    move-exception v1

    goto :goto_1d

    :catch_2
    move-exception v1

    goto :goto_1c

    :catch_3
    move-exception v1

    goto :goto_1b

    :catch_4
    move-exception v1

    goto :goto_1a

    :catch_5
    move-exception v1

    goto :goto_19

    :catch_6
    move-exception v1

    goto :goto_18

    :catch_7
    move-exception v1

    goto :goto_17

    :catch_8
    move-exception v1

    goto :goto_16

    :catch_9
    move-exception v1

    goto :goto_15

    :catch_a
    move-exception v1

    goto :goto_14

    :catch_b
    move-exception v1

    goto/16 :goto_13

    :catch_c
    move-exception v1

    goto/16 :goto_12

    :catch_d
    move-exception v1

    goto/16 :goto_11

    :catch_e
    move-exception v1

    goto/16 :goto_10

    :catch_f
    move-exception v1

    goto/16 :goto_f

    :catch_10
    move-exception v1

    goto/16 :goto_e

    :catch_11
    move-exception v1

    goto/16 :goto_d

    :catch_12
    move-exception v1

    goto/16 :goto_c

    :catch_13
    move-exception v1

    goto/16 :goto_b

    :catch_14
    move-exception v1

    goto/16 :goto_a

    :catch_15
    move-exception v1

    goto/16 :goto_9

    :catch_16
    move-exception v1

    goto/16 :goto_8

    :catch_17
    move-exception v1

    goto/16 :goto_7

    :catch_18
    move-exception v1

    goto/16 :goto_6

    :catch_19
    move-exception v1

    goto/16 :goto_5

    :catch_1a
    move-exception v1

    goto/16 :goto_4

    :catch_1b
    move-exception v1

    goto/16 :goto_3

    :catch_1c
    move-exception v1

    goto/16 :goto_2

    :catch_1d
    move-exception v1

    goto/16 :goto_1

    :catch_1e
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/EffectController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const/16 v0, 0xc

    sput v0, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    const/16 v0, 0x8

    sput v0, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/EffectController;->EFFECT_ALL_CHANGE_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-direct {v0, v2, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initialize()V

    return-void
.end method

.method private convertToFilterScene(I)Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NONE:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getBeautyRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/effect/EffectController;
    .locals 2

    const-class v1, Lcom/android/camera/effect/EffectController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    :cond_0
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMakeupRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 5

    new-instance v1, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    invoke-direct {v1}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;-><init>()V

    new-instance v0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;

    invoke-direct {v0}, Lcom/android/camera/effect/ArcsoftBeautyProcessor;-><init>()V

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/BeautyParameters;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10e

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/camera/effect/ArcsoftBeautyProcessor;->setRotation(I)V

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/BeautyParameters;->setMakeupProcessor(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;)V

    invoke-virtual {v1, v0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->setBeautyProcessor(Lcom/miui/filtersdk/beauty/BeautyProcessor;)V

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    sget v4, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v1, v3, v4}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->initBeautyProcessor(II)V

    new-instance v2, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    sget v3, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/BeautyParameters;->isFrontCamera()Z

    move-result v4

    invoke-direct {v2, p1, v3, v1, v4}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;Z)V

    invoke-virtual {p2, v2}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p2

    :cond_0
    const/16 v3, 0x5a

    goto :goto_0
.end method

.method private getNormalRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 10

    const/4 v6, 0x0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_4

    if-nez p3, :cond_0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-ne p5, v0, :cond_13

    :cond_0
    :goto_0
    if-nez p3, :cond_1

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-ne p5, v0, :cond_14

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    instance-of v7, v0, Lcom/android/camera/effect/renders/XBlurEffectRender;

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    instance-of v8, v0, Lcom/android/camera/effect/renders/YBlurEffectRender;

    :goto_2
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-eqz v7, :cond_17

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    :goto_3
    if-eqz v8, :cond_18

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_4
    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    if-nez v7, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_3
    :goto_5
    const/4 v6, 0x1

    :cond_4
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_6

    if-nez p3, :cond_5

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    if-ne p5, v0, :cond_1a

    :cond_5
    :goto_6
    if-eqz p4, :cond_1b

    new-instance v0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {v0, p1, v1}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :goto_7
    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    const/4 v6, 0x1

    :cond_6
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p3, :cond_7

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    if-ne p5, v0, :cond_1c

    :cond_7
    :goto_8
    if-nez p3, :cond_8

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    if-ne p5, v0, :cond_1d

    :cond_8
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    new-instance v3, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :goto_9
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_a
    const/4 v5, 0x0

    invoke-direct {v3, p1, v1, v4, v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_b
    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_9
    :goto_c
    const/4 v6, 0x1

    :cond_a
    const-string/jumbo v0, "is_camera_replace_higher_cost_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_e

    if-nez p3, :cond_b

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    if-ne p5, v0, :cond_23

    :cond_b
    :goto_d
    if-nez p3, :cond_c

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    if-ne p5, v0, :cond_24

    :cond_c
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    new-instance v3, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :goto_e
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_f
    const/4 v5, 0x0

    invoke-direct {v3, p1, v1, v4, v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_27

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    :goto_10
    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_d
    :goto_11
    const/4 v6, 0x1

    :cond_e
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v0

    if-eqz v0, :cond_10

    xor-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10

    if-nez p3, :cond_f

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    if-ne p5, v0, :cond_2a

    :cond_f
    :goto_12
    new-instance v0, Lcom/android/camera/effect/renders/FocusPeakingRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-direct {v0, p1, v1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_10
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_12

    if-nez p3, :cond_11

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    if-ne p5, v0, :cond_2b

    :cond_11
    :goto_13
    new-instance v9, Lcom/android/camera/effect/renders/StickerRender;

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getCurrentSticker()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, p1, v0, v1}, Lcom/android/camera/effect/renders/StickerRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/camera/effect/renders/StickerRender;->getMakeupProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/BeautyParameters;->setStickerMakeupProcessor(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;)V

    invoke-virtual {p2, v9}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_12
    return-object p2

    :cond_13
    if-gez p5, :cond_4

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_5

    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_17
    new-instance v3, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v3, p1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto/16 :goto_3

    :cond_18
    new-instance v4, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v4, p1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto/16 :goto_4

    :cond_19
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_5

    :cond_1a
    if-gez p5, :cond_6

    xor-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_6

    goto/16 :goto_6

    :cond_1b
    new-instance v0, Lcom/android/camera/effect/renders/GradienterEffectRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {v0, p1, v1}, Lcom/android/camera/effect/renders/GradienterEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto/16 :goto_7

    :cond_1c
    if-gez p5, :cond_a

    xor-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_a

    goto/16 :goto_8

    :cond_1d
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v0, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_c

    :cond_1e
    new-instance v1, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto/16 :goto_9

    :cond_1f
    new-instance v4, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v4, p1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto/16 :goto_a

    :cond_20
    new-instance v4, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v4, p1}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto/16 :goto_b

    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance v0, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_c

    :cond_22
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_c

    :cond_23
    if-gez p5, :cond_e

    xor-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_e

    goto/16 :goto_d

    :cond_24
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_11

    :cond_25
    new-instance v1, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto/16 :goto_e

    :cond_26
    new-instance v4, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v4, p1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto/16 :goto_f

    :cond_27
    new-instance v4, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v4, p1}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto/16 :goto_10

    :cond_28
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_11

    :cond_29
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_11

    :cond_2a
    if-gez p5, :cond_10

    xor-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_10

    goto/16 :goto_12

    :cond_2b
    if-gez p5, :cond_12

    xor-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_12

    goto/16 :goto_13
.end method

.method private getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/camera/effect/EffectController;->convertToFilterScene(I)Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    move-result-object v4

    sget-object v5, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NONE:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    if-ne v4, v5, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v3

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 7

    const/4 v5, 0x0

    if-gez p4, :cond_0

    return-object p2

    :cond_0
    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p4, v6, :cond_2

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p3, :cond_1

    new-instance v5, Lcom/android/camera/effect/renders/NoneEffectRender;

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-direct {v5, p1, v6}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :cond_1
    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p2

    :cond_2
    invoke-virtual {p2, p4}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {p4}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v2

    const/4 v5, -0x1

    if-le v2, v5, :cond_4

    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_4

    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v5

    aget-object v4, v5, v2

    invoke-static {v4}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFilterByType(Lcom/miui/filtersdk/filter/helper/FilterType;)Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v1

    instance-of v5, v1, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isIndiaBeautyFilter()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Lcom/android/camera/effect/BeautyInfoFactory;->getIndiaFilterDegree(Lcom/miui/filtersdk/filter/helper/FilterType;)I

    move-result v0

    :goto_0
    move-object v5, v1

    check-cast v5, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    invoke-virtual {v5, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->setDegree(I)V

    :cond_3
    new-instance v3, Lcom/android/camera/effect/renders/WrapperRender;

    invoke-direct {v3, p1, p4, v1}, Lcom/android/camera/effect/renders/WrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_4
    return-object p2

    :cond_5
    invoke-static {v4}, Lcom/android/camera/effect/BeautyInfoFactory;->getFilterDegree(Lcom/miui/filtersdk/filter/helper/FilterType;)I

    move-result v0

    goto :goto_0
.end method

.method private getStickerRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    return-object v0
.end method

.method private initNormalFilterInfoNew()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    new-instance v7, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const v10, 0x7f0f0083

    const v11, 0x7f020048

    invoke-direct {v7, v2, v10, v11, v5}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-static {v2}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v11, v9

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v8, v9, v10

    invoke-static {}, Lcom/android/camera/effect/EffectController;->-getcom-miui-filtersdk-filter-helper-FilterTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v8}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {v8}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v2

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    :pswitch_0
    const/16 v5, 0xa

    const v3, 0x7f0f0095

    const v4, 0x7f02004b

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x14

    const v3, 0x7f0f0096

    const v4, 0x7f020044

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x1e

    const v3, 0x7f0f0097

    const v4, 0x7f020046

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x28

    const v3, 0x7f0f0098

    const v4, 0x7f020047

    goto :goto_1

    :pswitch_4
    const/16 v5, 0x32

    const v3, 0x7f0f0099

    const v4, 0x7f02004c

    goto :goto_1

    :pswitch_5
    const/16 v5, 0x3c

    const v3, 0x7f0f009a

    const v4, 0x7f020041

    goto :goto_1

    :pswitch_6
    const/16 v5, 0x46

    const v3, 0x7f0f009b

    const v4, 0x7f020049

    goto :goto_1

    :pswitch_7
    const/16 v5, 0x50

    const v3, 0x7f0f009c

    const v4, 0x7f02004a

    goto :goto_1

    :pswitch_8
    const/16 v5, 0x5a

    const v3, 0x7f0f009d

    const v4, 0x7f020042

    goto :goto_1

    :pswitch_9
    const/16 v5, 0x64

    const v3, 0x7f0f009e

    const v4, 0x7f020045

    goto :goto_1

    :pswitch_a
    const/16 v5, 0x6e

    const v3, 0x7f0f009f

    const v4, 0x7f02003f

    goto :goto_1

    :pswitch_b
    const/16 v5, 0x78

    const v3, 0x7f0f00a0

    const v4, 0x7f020040

    goto/16 :goto_1

    :pswitch_c
    const/16 v5, 0x82

    const v3, 0x7f0f00a1

    const v4, 0x7f020043

    goto/16 :goto_1

    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_8
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method

.method private initPrivateFilterInfo()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    const/4 v5, 0x0

    const/4 v2, 0x1

    invoke-direct {v1, v4, v5}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v1, v4, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    add-int/lit8 v2, v3, 0x1

    invoke-direct {v1, v4, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/android/camera/effect/FilterInfo;->setNeedRect(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v1, v4, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/android/camera/effect/FilterInfo;->setNeedRect(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    add-int/lit8 v2, v3, 0x1

    invoke-direct {v1, v4, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v1, v4, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initStickerFilterInfo()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    new-instance v7, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const v10, 0x7f0f0083

    const v11, 0x7f0201ae

    invoke-direct {v7, v2, v10, v11, v5}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-static {v2}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v11, v9

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v8, v9, v10

    invoke-static {}, Lcom/android/camera/effect/EffectController;->-getcom-miui-filtersdk-filter-helper-FilterTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v8}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {v8}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v2

    const/4 v1, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    :pswitch_0
    const/16 v5, 0xa

    const v3, 0x7f0f00a2

    const v4, 0x7f0201ab

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x14

    const v3, 0x7f0f00a3

    const v4, 0x7f0201ad

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x1e

    const v3, 0x7f0f00a4

    const v4, 0x7f0201af

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x28

    const v3, 0x7f0f00a5

    const v4, 0x7f0201ac

    goto :goto_1

    :pswitch_4
    const/16 v5, 0x2d

    const v3, 0x7f0f00a7

    const v4, 0x7f0201aa

    goto :goto_1

    :pswitch_5
    const/16 v5, 0x32

    const v3, 0x7f0f00a6

    const v4, 0x7f0201a9

    goto :goto_1

    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private initialize()V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initPrivateFilterInfo()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initNormalFilterInfoNew()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/Device;->isIndiaBeautyFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/camera/effect/BeautyInfoFactory;->initIndiaBeautyFilterInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initStickerFilterInfo()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/camera/effect/BeautyInfoFactory;->initBeautyFilterInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private varargs postNotifyEffectChanged([I)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectController$EffectChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/effect/EffectController$EffectChangedListener;->onEffectChanged([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v1, Lcom/android/camera/effect/EffectController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/camera/EffectChangedListenerController;->addEffectChangedListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V

    return-void
.end method

.method public clearEffectAttribute()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput v1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    return-void
.end method

.method public copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    return-object v0
.end method

.method public enableMakeup(Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    :cond_0
    new-array v0, v0, [I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public getBlurAnimationValue()I
    .locals 4

    const/4 v1, -0x1

    const/16 v3, 0x8

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_2

    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    mul-int/lit16 v0, v0, 0xd4

    div-int/lit8 v0, v0, 0x8

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getCurrentSticker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRotation()F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return v0
.end method

.method public getEffect(Z)I
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object v0
.end method

.method public getEffectCount(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 4

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p2, p5}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p5, v1, :cond_2

    invoke-static {p5}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    :cond_2
    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid renderId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2

    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getPrivateRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getNormalRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/camera/effect/EffectController;->getBeautyRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/camera/effect/EffectController;->getStickerRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectController;->getMakeupRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, v1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getFilterInfo(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInvertFlag()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return v0
.end method

.method public getTiltShiftMaskAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return v0
.end method

.method public hasEffect()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBackGroundBlur()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeautyFrameReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    return v0
.end method

.method public isDrawGradienter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    return v0
.end method

.method public isDrawTilt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    return v0
.end method

.method public isFishEye()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v1, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMainFrameDisplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    return v0
.end method

.method public isMakeupEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    return v0
.end method

.method public isNeedDrawPeaking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    return v0
.end method

.method public isNeedRect(I)Z
    .locals 5

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {v1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/effect/FilterInfo;->isNeedRect()Z

    move-result v4

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public isStickerEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public needDestroyMakeup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    return v0
.end method

.method public removeChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    sget-object v0, Lcom/android/camera/effect/EffectController;->EFFECT_ALL_CHANGE_TYPES:[I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setBeautyFrameReady(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setCurrentSticker(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDestroyMakeup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    return-void
.end method

.method public setDeviceRotation(ZF)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    :cond_0
    iput p2, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return-void
.end method

.method public setDrawGradienter(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDrawPeaking(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDrawTilt(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setEffect(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p4, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    return-void
.end method

.method public setInvertFlag(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return-void
.end method

.method public setTiltShiftMaskAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return-void
.end method
