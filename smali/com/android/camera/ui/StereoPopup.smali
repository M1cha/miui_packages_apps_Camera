.class public Lcom/android/camera/ui/StereoPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "StereoPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StereoPopup$AnimationListener;,
        Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentIndex:I

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListView:Lcom/android/camera/ui/HorizontalListView;

.field private mShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/StereoPopup;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/StereoPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/StereoPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/StereoPopup;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/StereoPopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    return-void
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/camera/ui/StereoPopup$AnimationListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/StereoPopup$AnimationListener;-><init>(Lcom/android/camera/ui/StereoPopup;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050017

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/camera/ui/StereoPopup$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/StereoPopup$AnimationListener;-><init>(Lcom/android/camera/ui/StereoPopup;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->clearAnimation()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/StereoPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->setVisibility(I)V

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 3

    const-string/jumbo v1, "pref_camera_stereo_key"

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->filterValue()V

    new-instance v0, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/StereoPopup;)V

    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v2, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

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

    iget v1, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    iput p3, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/StereoPopup;->notifyToDispatcher(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    iget v0, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v1, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/ui/StereoPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public show(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/StereoPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
