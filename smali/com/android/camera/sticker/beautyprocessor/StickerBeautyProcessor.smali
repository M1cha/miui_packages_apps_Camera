.class public Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;
.super Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
.source "StickerBeautyProcessor.java"


# static fields
.field private static final synthetic -com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I


# instance fields
.field private mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;


# direct methods
.method private static synthetic -getcom-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

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

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->CONTRAST_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEBLEMISH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEPOUCH_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->LIP_BEAUTY_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RELIGHTING_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RUDDY_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_JAW_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    sput-object v0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

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

.method public constructor <init>(Lcom/sensetime/stmobile/STBeautifyNative;)V
    .locals 4

    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;-><init>()V

    iput-object p1, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mLevelParameters:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_3
    .array-data 4
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data
.end method


# virtual methods
.method public beautify([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedBeautyParamTypes()[Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/filtersdk/beauty/BeautyParameterType;

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->CONTRAST_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_JAW_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F
    .locals 2

    invoke-static {}, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->-getcom-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0

    :pswitch_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public init(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    invoke-virtual {v0, p1, p2}, Lcom/sensetime/stmobile/STBeautifyNative;->createInstance(II)I

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STBeautifyNative;->destroyBeautify()V

    return-void
.end method

.method public setBeautyParamDegree(Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->-getcom-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sensetime/stmobile/STBeautifyNative;->setParam(IF)I

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setBeautyParamsDegree(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->setBeautyParamDegree(Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;)V

    goto :goto_0

    :cond_0
    return-void
.end method
