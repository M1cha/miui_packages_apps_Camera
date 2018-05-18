.class public Lcom/android/camera/ui/SubScreenIndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "SubScreenIndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;


# instance fields
.field private mOverrideValue:Ljava/lang/String;

.field private mParentPopup:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setClickable(Z)V

    return-void
.end method

.method private getPreferenceSize()I
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SubScreenIndicatorButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private notifyMessageToDispatcher(I)V
    .locals 6

    const-string/jumbo v0, "VIEW_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessageDispatcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x3

    move v1, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private toggle()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    :cond_1
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SubScreenPopup;->dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_2

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShowedColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getShowedColor()I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcom/android/camera/ui/SubScreenIndicatorButton;->TEXT_COLOR_DEFAULT:I

    return v0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    check-cast p7, Lcom/android/camera/ui/SubScreenPopup;

    iput-object p7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    return-void
.end method

.method public isOverridden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    return v3

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_8

    if-ne v0, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->showPopup()V

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->toggle()V

    :cond_6
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    goto :goto_0

    :cond_8
    return v3
.end method

.method public reloadPreference()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->updateContent()V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SubScreenPopup;->showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    :cond_0
    return-void
.end method

.method protected updateContent()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "pref_skin_beautify_skin_color_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "pref_skin_beautify_slim_face_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "pref_skin_beautify_skin_smooth_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "pref_skin_beautify_enlarge_eye_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getSkinBeautifyHumanReadableValue(Landroid/content/Context;Lcom/android/camera/preferences/ListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "pref_focus_position_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
