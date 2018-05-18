.class public Lcom/android/camera/fragment/FragmentFilter;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;,
        Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;,
        Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;,
        Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAnimation:Z

.field private mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

.field private mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field private mCurrentIndex:I

.field private mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

.field private mEffectItemHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHolderWidth:I

.field private mIgnoreSameItemClick:Z

.field private mIsShowIndex:I

.field private mLastIndex:I

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTotalWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentFilter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/FragmentFilter;)Lmiui/view/animation/CubicEaseOutInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/FragmentFilter;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/FragmentFilter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemHolderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/fragment/FragmentFilter;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLastIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/FragmentFilter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/FragmentFilter;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentFilter;->showSelected(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemHolderList:Ljava/util/List;

    iput v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mLastIndex:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mIgnoreSameItemClick:Z

    iput v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    return-void
.end method

.method private getFilterInfo()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    :sswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_2
        0xa3 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xab -> :sswitch_1
    .end sparse-switch
.end method

.method private notifyItemChanged(II)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->notifyItemChanged(I)V

    :cond_0
    if-le p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private onFilterChanged(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa4

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configGroupSwitch(I)V

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa5

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v4

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;->onFilterChanged(II)V

    :cond_1
    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v1, v4, :cond_2

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p1, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xc4

    aput v5, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_3
    return-void
.end method

.method private onFilterSelected(IZ)V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    iget v4, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentMode:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/camera/fragment/FragmentFilter;->trackFilterChanged(IZ)V

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentFilter;->persistFilter(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFilter;->selectItem(I)V

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentFilter;->onFilterChanged(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/camera/fragment/FragmentFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid filter id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistFilter(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    invoke-virtual {v2}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_0
.end method

.method private selectItem(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLastIndex:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFilter;->scrollIfNeed(I)V

    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLastIndex:I

    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentFilter;->notifyItemChanged(II)V

    :cond_0
    return-void
.end method

.method private setItemInCenter(I)V
    .locals 3

    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mTotalWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mHolderWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showSelected(Landroid/widget/ImageView;I)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020058

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v0, v1, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private trackFilterChanged(IZ)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f"

    iget v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "\u6ee4\u955c"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->filterIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "\u65b9\u5f0f"

    if-eqz p2, :cond_1

    const-string/jumbo v1, "\u70b9\u51fb"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "filter_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string/jumbo v1, "\u6ed1\u52a8"

    goto :goto_0
.end method

.method private updateCurrentIndex()V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    sget-object v3, Lcom/android/camera/fragment/FragmentFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid filter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentFilter;->setItemInCenter(I)V

    return-void
.end method


# virtual methods
.method public delayShowSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->notifyItemChanged(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFilter;->setItemInCenter(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    goto :goto_0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f040011

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, 0x96

    const v3, 0x7f0a002c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFilter;->getFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mapToItems(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFilter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mTotalWidth:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mHolderWidth:I

    new-instance v3, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-direct {v3, p0, v1, v4}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;-><init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentConfigFilter;)V

    iput-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/effect/EffectController;->getEffectCount(I)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;-><init>(Lcom/android/camera/fragment/FragmentFilter;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/android/camera/fragment/FragmentFilter$1;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/FragmentFilter$1;-><init>(Lcom/android/camera/fragment/FragmentFilter;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v0, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v0, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/camera/fragment/FragmentFilter;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    return-void
.end method

.method public isShowAnimation(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mIgnoreSameItemClick:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/FragmentFilter;->onFilterSelected(IZ)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFilter;->updateCurrentIndex()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public switchFilter(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/android/camera/fragment/FragmentFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0, v0, v4}, Lcom/android/camera/fragment/FragmentFilter;->onFilterSelected(IZ)V

    :cond_1
    return-void

    :pswitch_1
    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public updateFilterData()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFilter;->getFilterInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mapToItems(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->updateData(Lcom/android/camera/data/data/config/ComponentConfigFilter;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFilter;->updateCurrentIndex()V

    return-void
.end method
