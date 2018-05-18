.class public Lcom/android/camera/ui/GridSettingPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "GridSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentIndex:I

.field protected mDisplayColumnNum:I

.field protected mGridView:Landroid/widget/GridView;

.field protected mGridViewHeight:I

.field protected mHasImage:Z

.field protected mIgnoreSameItemClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "GridSettingPopup"

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    iput-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    return-void
.end method


# virtual methods
.method protected getItemResId()I
    .locals 1

    const v0, 0x7f040026

    return v0
.end method

.method protected initGridViewLayoutParam(I)V
    .locals 5

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    int-to-float v2, v2

    :goto_0
    div-float v2, v3, v2

    float-to-int v0, v2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    mul-int v2, p1, v0

    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getImageIds()[I

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v9

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    array-length v1, v7

    if-ge v8, v1, :cond_2

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "text"

    aget-object v4, v7, v8

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_1

    const-string/jumbo v1, "image"

    aget v4, v9, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "text"

    const/4 v4, 0x0

    aput-object v1, v5, v4

    const/4 v1, 0x1

    new-array v6, v1, [I

    const v1, 0x7f0a0080

    const/4 v4, 0x0

    aput v1, v6, v4

    :goto_1
    new-instance v0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getItemResId()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    array-length v4, v7

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setChoiceMode(I)V

    array-length v1, v7

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingPopup;->initGridViewLayoutParam(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->reloadPreference()V

    return-void

    :cond_4
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "image"

    const/4 v4, 0x0

    aput-object v1, v5, v4

    const-string/jumbo v1, "text"

    const/4 v4, 0x1

    aput-object v1, v5, v4

    const v1, 0x7f0a0083

    const v4, 0x7f0a0080

    filled-new-array {v1, v4}, [I

    move-result-object v6

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    goto :goto_2
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    const-string/jumbo v3, "pref_camera_scenemode_key"

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/GridSettingPopup;->notifyToDispatcher(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "pref_audio_focus_key"

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/module/BaseModule;->isModuleRecording(Lcom/android/camera/module/Module;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "camcorder_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    return-void
.end method

.method public reloadPreference()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GridSettingPopup"

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public show(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    const-string/jumbo v0, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    :cond_0
    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 0

    return-void
.end method
