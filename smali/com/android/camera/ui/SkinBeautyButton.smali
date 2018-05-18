.class public Lcom/android/camera/ui/SkinBeautyButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "SkinBeautyButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SkinBeautyButton$1;,
        Lcom/android/camera/ui/SkinBeautyButton$2;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSubDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mVisible:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    new-instance v0, Lcom/android/camera/ui/SkinBeautyButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SkinBeautyButton$1;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/ui/SkinBeautyButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SkinBeautyButton$2;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SkinBeautyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private findCurrentIndex()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPopupShown()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyClickToDispatcher()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0a00b6

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SkinBeautyButton;->setActivated(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_0
    return v0
.end method

.method protected dismissSubPopup()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_0
    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto :goto_0

    :pswitch_2
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v1, 0x4

    const v2, 0x7f0a00b6

    const/4 v3, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SkinBeautyButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_1
    return-void
.end method

.method protected initializeSubPopup()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showPopup()V

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onFinishInflate()V

    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/android/camera/ui/V6AbstractSettingPopup;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method protected showSubPopup()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializeSubPopup()V

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    :cond_1
    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-void
.end method
