.class public abstract Lcom/android/camera/ui/AbstractSettingPopup;
.super Lcom/android/camera/ui/RotateLayout;
.source "AbstractSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AbstractSettingPopup$Listener;
    }
.end annotation


# instance fields
.field protected mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

.field protected mPreference:Lcom/android/camera/IconListPreference;

.field protected mSettingList:Landroid/view/ViewGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract initialize(Lcom/android/camera/IconListPreference;)V
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .line 49
    return-void
.end method

.method public abstract reloadPreference()V
.end method

.method public scrollToChecked()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 62
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    .line 53
    return-void
.end method
