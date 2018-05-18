.class public Lcom/android/camera/ui/GridSettingTextPopup;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingTextPopup.java"


# instance fields
.field private mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initializeSplitLine()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v0, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1, v4, v4}, Lcom/android/camera/ui/GridSettingTextPopup;->setSplitLineParameters(IZZ)V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private setSplitLineParameters(IZZ)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SplitLineDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisplayColumnNum:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getItemResId()I
    .locals 1

    const v0, 0x7f040029

    return v0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mHasImage:Z

    const-string/jumbo v0, "pref_audio_focus_mode_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_audio_focus_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    invoke-direct {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->initializeSplitLine()V

    return-void

    :cond_0
    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "pref_camera_tilt_shift_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mIgnoreSameItemClick:Z

    goto :goto_0
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingTextPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridViewHeight:I

    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;->updateItemView(ILandroid/view/View;)V

    if-eqz p2, :cond_0

    const v1, 0x7f0a0080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11001e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisableKeys:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisableKeys:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
