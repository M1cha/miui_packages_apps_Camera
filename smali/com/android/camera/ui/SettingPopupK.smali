.class public Lcom/android/camera/ui/SettingPopupK;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "SettingPopupK.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingPopupK$CallBack;
    }
.end annotation


# instance fields
.field private mAdd:Landroid/widget/ImageView;

.field private mCallBack:Lcom/android/camera/ui/SettingPopupK$CallBack;

.field private mReduce:Landroid/widget/ImageView;

.field private mReturn:Landroid/widget/ImageView;

.field private mValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 34
    const v0, 0x7f0c009d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mAdd:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mReduce:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0c009e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mReturn:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mValue:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mReduce:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mAdd:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mReduce:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mReturn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupK;->mCallBack:Lcom/android/camera/ui/SettingPopupK$CallBack;

    invoke-interface {v0}, Lcom/android/camera/ui/SettingPopupK$CallBack;->backToWhiteBalance()V

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 47
    return-void
.end method
