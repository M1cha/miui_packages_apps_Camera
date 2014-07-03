.class public Lcom/android/camera/ui/IndicatorButton;
.super Lcom/android/camera/ui/AbstractIndicatorButton;
.source "IndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/AbstractSettingPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/IndicatorButton$Listener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

.field private mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "IndicatorButton"

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->TAG:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 48
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    const-string v1, "IndicatorButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize popup failed with key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 116
    .local v0, root:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 117
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/AbstractSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/IndicatorButton$Listener;->onSettingChanged()V

    .line 130
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 4
    .parameter "keyvalues"

    .prologue
    .line 94
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 96
    aget-object v1, p1, v0

    .line 97
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 98
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    iput-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 100
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/IndicatorButton;->setEnabled(Z)V

    .line 104
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 105
    return-void

    .line 100
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 95
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 7

    .prologue
    .line 52
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 53
    .local v2, singleIcon:I
    iget-boolean v4, p0, Lcom/android/camera/ui/IndicatorButton;->mBackgroundLocked:Z

    if-eqz v4, :cond_0

    .line 80
    :goto_0
    return-void

    .line 56
    :cond_0
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorButton;->setImageResource(I)V

    .line 79
    :goto_1
    invoke-super {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 64
    .local v0, iconIds:[I
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 65
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v5, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, index:I
    :goto_2
    if-ltz v1, :cond_2

    array-length v4, v0

    if-lt v1, v4, :cond_5

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, value:Ljava/lang/String;
    :goto_3
    const-string v4, "IndicatorButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to find override value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_0

    .line 67
    .end local v1           #index:I
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v5, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #index:I
    goto :goto_2

    .line 71
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    goto :goto_3

    .line 77
    :cond_5
    aget v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/IndicatorButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/IndicatorButton$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    .line 42
    return-void
.end method
