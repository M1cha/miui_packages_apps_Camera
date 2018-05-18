.class public Lcom/android/camera/ui/GridSettingExpandedTextPopup;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingExpandedTextPopup.java"


# instance fields
.field private mLeftMargin:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mIgnoreSameItemClick:Z

    return-void
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->clearAnimation()V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->notifyPopupVisibleChange(Z)V

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->setVisibility(I)V

    goto :goto_0
.end method

.method public getAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f05000c

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f050015

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mRightMargin:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    const v0, 0x7f05000b

    :goto_1
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_2
    const v0, 0x7f050016

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemResId()I
    .locals 1

    const v0, 0x7f040024

    return v0
.end method

.method protected initGridViewLayoutParam(I)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int v2, p1, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mRightMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const-string/jumbo v2, "pref_camera_hdr_key"

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "pref_camera_face_beauty_switch_key"

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mHasImage:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mIgnoreSameItemClick:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    return-void
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

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

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mGridViewHeight:I

    return-void
.end method

.method public show(Z)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->clearAnimation()V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->notifyPopupVisibleChange(Z)V

    return-void
.end method

.method public updateBackground()V
    .locals 0

    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f0a0080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mCurrentIndex:I

    if-ne v1, p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method
