.class public Lcom/android/camera/ui/ManualExposurePopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualExposurePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentIndex:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListView:Lcom/android/camera/ui/HorizontalListView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ManualExposurePopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ManualExposurePopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/ManualExposurePopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ManualExposurePopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    return-void
.end method

.method private filterPreference(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v6, :cond_1

    const v2, 0x1e8480

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMinExposureTimes()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v3, v0, :cond_2

    if-gt v0, v2, :cond_2

    :goto_2
    aget-object v6, v4, v1

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v6, v5, v1

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMaxExposureTimes()I

    move-result v2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0171

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    sget-boolean v3, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ManualExposurePopup;->filterPreference(Ljava/util/List;Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->filterValue()V

    new-instance v2, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/ManualExposurePopup;)V

    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v4, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualExposurePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    iput p3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ManualExposurePopup;->notifyToDispatcher(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    iget v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/ui/ManualExposurePopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
