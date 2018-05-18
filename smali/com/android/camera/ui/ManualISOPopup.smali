.class public Lcom/android/camera/ui/ManualISOPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualISOPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;
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
.method static synthetic -get0(Lcom/android/camera/ui/ManualISOPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ManualISOPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/ManualISOPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ManualISOPopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    return-void
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

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

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v0}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->filterValue()V

    new-instance v1, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/ManualISOPopup;)V

    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v4, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualISOPopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualISOPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualISOPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualISOPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

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

    iget v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    iput p3, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ManualISOPopup;->notifyToDispatcher(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    iget v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/ui/ManualISOPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
