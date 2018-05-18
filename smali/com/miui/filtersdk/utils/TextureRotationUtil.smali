.class public Lcom/miui/filtersdk/utils/TextureRotationUtil;
.super Ljava/lang/Object;
.source "TextureRotationUtil.java"


# static fields
.field public static final CUBE:[F

.field public static final TEXTURE_NO_ROTATION:[F

.field public static final TEXTURE_ROTATED_180:[F

.field public static final TEXTURE_ROTATED_270:[F

.field public static final TEXTURE_ROTATED_90:[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v2, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_90:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v3, v0, v4

    aput v2, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_180:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v2, v0, v4

    aput v2, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_270:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v4

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v5

    aput v3, v0, v6

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x3

    aput v1, v0, v2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustSize(IZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/miui/filtersdk/utils/Rotation;->fromInt(I)Lcom/miui/filtersdk/utils/Rotation;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->getRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)[F

    move-result-object v1

    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static flip(F)F
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    return v1
.end method

.method public static getRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)[F
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v2, Lcom/miui/filtersdk/utils/TextureRotationUtil$1;->$SwitchMap$com$miui$filtersdk$utils$Rotation:[I

    invoke-virtual {p0}, Lcom/miui/filtersdk/utils/Rotation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_0

    :goto_1
    if-nez p2, :cond_1

    move-object v0, v1

    :goto_2
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_90:[F

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_180:[F

    move-object v1, v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_270:[F

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    new-array v0, v2, [F

    aget v2, v1, v4

    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v4

    aget v2, v1, v5

    aput v2, v0, v5

    aget v2, v1, v6

    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v6

    aget v2, v1, v7

    aput v2, v0, v7

    aget v2, v1, v8

    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v8

    const/4 v2, 0x5

    aget v2, v1, v2

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v2, 0x6

    aget v2, v1, v2

    const/4 v3, 0x6

    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v3

    const/4 v2, 0x7

    aget v2, v1, v2

    const/4 v3, 0x7

    aput v2, v0, v3

    move-object v1, v0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    new-array v0, v2, [F

    aget v2, v1, v4

    aput v2, v0, v4

    aget v2, v1, v5

    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v5

    aget v2, v1, v6

    aput v2, v0, v6

    aget v2, v1, v7

    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v7

    aget v2, v1, v8

    aput v2, v0, v8

    const/4 v2, 0x5

    aget v2, v1, v2

    const/4 v3, 0x5

    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v3

    const/4 v2, 0x6

    aget v2, v1, v2

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v2, 0x7

    aget v2, v1, v2

    const/4 v3, 0x7

    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
