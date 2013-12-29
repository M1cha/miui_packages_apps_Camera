.class public Lcom/android/camera/ui/IndicatorButtonWhiteBalance;
.super Lcom/android/camera/ui/IndicatorButton;
.source "IndicatorButtonWhiteBalance.java"

# interfaces
.implements Lcom/android/camera/ui/GridSettingPopupWhiteBalance$ShowKViewCallBack;
.implements Lcom/android/camera/ui/SettingPopupK$CallBack;


# instance fields
.field private mPopupWB:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V
    .locals 0
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorButton;-><init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V

    .line 19
    return-void
.end method


# virtual methods
.method public backToWhiteBalance()V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorButtonWhiteBalance;->mPopupWB:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorButtonWhiteBalance;->mPopupWB:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    iput-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->showPopup(Z)V

    .line 56
    return-void
.end method

.method protected initializePopup()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/camera/ui/IndicatorButton;->initializePopup()V

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    check-cast v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorButtonWhiteBalance;->mPopupWB:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButtonWhiteBalance;->mPopupWB:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->setShowKViewCallBack(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$ShowKViewCallBack;)V

    .line 26
    return-void
.end method
