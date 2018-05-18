.class public Lcom/android/camera/ui/V6IndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "V6IndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mModeRemind:Landroid/view/View;

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/IconListPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    return-void
.end method

.method private notifyClickAction(Z)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->cancelRemind(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_camera_panoramamode_key"

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private notifyToModule()V
    .locals 6

    const-string/jumbo v0, "VIEW_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessageDispatcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private onIndicatorValueChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->resetOtherSetting()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->refreshValue()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updatePopup()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->notifyToModule()V

    return-void
.end method

.method private refreshValue()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "pref_camera_manual_mode_key"

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetOtherSetting()V
    .locals 6

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateExitButton()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePopup()V
    .locals 3

    const-string/jumbo v0, "VIEW_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePopup this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->showPopup()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    goto :goto_0
.end method

.method private updateRemind()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNeedRemind(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->isDefaultValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/TwoStateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6IndicatorButton;->setClickable(Z)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateExitButton()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updatePopup()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateRemind()V

    return-void
.end method

.method protected initializePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected isIndicatorSelected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v0

    return v0
.end method

.method public isItemSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    return v0
.end method

.method public isPopupVisible()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "VIEW_"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visible="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " this="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/android/camera/ui/TwoStateImageView;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6IndicatorButton;->notifyClickAction(Z)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->onIndicatorValueChange()V

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->onFinishInflate()V

    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6IndicatorButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reloadPreference()V
    .locals 2

    const-string/jumbo v0, "VIEW_"

    const-string/jumbo v1, "indicatorbutton reloadPreference"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateImage()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateExitButton()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateRemind()V

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public resetSettings()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->onIndicatorValueChange()V

    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    :cond_0
    return-void
.end method
