.class public Lcom/miui/filtersdk/filter/helper/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilterByType(Lcom/miui/filtersdk/filter/helper/FilterType;)Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .locals 2

    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-BERRY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-COOKIE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-DELICACY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-FADE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-FILM.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-KOIZORA.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-LATTE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-LIGHT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-LIVELY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-QUIET.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-SODA.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-WARM.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-FAIRYTALE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-JAPANESE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_e
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-MINT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-HEART.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_10
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-NATURE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-PINK.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_12
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-ROMANCE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_13
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-MAZE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_14
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-WHITEANDBLACK.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_15
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-STORY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_16
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-RIDDLE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_17
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-MOVIE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_18
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-FILM.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_19
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-YEARS.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1a
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-POLAROID.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1b
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-FOREST.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1c
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/common/WHITEANDBLACK.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1d
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-BYGONE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public static getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;
    .locals 7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/miui/filtersdk/filter/helper/FilterType;

    return-object v6

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/miui/filtersdk/filter/helper/FilterType;->getFilterScene()Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    move-result-object v6

    if-eq v6, p0, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
