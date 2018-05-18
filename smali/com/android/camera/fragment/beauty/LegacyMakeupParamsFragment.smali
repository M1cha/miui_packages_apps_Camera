.class public Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;
.super Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.source "LegacyMakeupParamsFragment.java"


# static fields
.field private static final synthetic -com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I


# direct methods
.method private static synthetic -getcom-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->values()[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->BRIGHT_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->CONTRAST_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEBLEMISH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEPOUCH_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->LIP_BEAUTY_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RELIGHTING_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RUDDY_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_JAW_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_NOSE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    sput-object v0, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1

    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected beautyTypetoPosition(Lcom/miui/filtersdk/beauty/BeautyParameterType;)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;->-getcom-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v2

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected initItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v2, 0x7f020154

    const v3, 0x7f0f0295

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v2, 0x7f020155

    const v3, 0x7f0f0292

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v2, 0x7f020156

    const v3, 0x7f0f0293

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment$1;-><init>(Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;)V

    return-object v0
.end method

.method protected provideItemHorizontalMargin()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
