.class public Lcom/android/camera/ui/FlashButton;
.super Landroid/widget/RelativeLayout;
.source "FlashButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FlashButton$Callback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/camera/ui/FlashButton$Callback;

.field private mCanEnabled:Z

.field public mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

.field private mFullScreen:Z

.field private mHDRStatus:Z

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "FlashButton.java"

    sput-object v0, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mFullScreen:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    .line 40
    return-void
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, value:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    if-eqz v1, :cond_0

    .line 167
    const-string v0, "off"

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getPrefrenceSize()I
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private grayClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 110
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize(ILjava/util/List;)V
    .locals 2
    .parameter "resId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/FlashButton;->setIconListPreference(Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    invoke-interface {v0}, Lcom/android/camera/ui/FlashButton$Callback;->dismissSettingView()V

    .line 61
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    invoke-interface {v0}, Lcom/android/camera/ui/FlashButton$Callback;->exitHDR()V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    .line 46
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->requestLayout()V

    .line 49
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureWidthByBackground(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureHeightByBackground(Landroid/view/View;)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 72
    return-void
.end method

.method public refreshValue()V
    .locals 3

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v2, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v1

    .line 147
    .local v1, index:I
    const/4 v0, 0x0

    .line 148
    .local v0, iconId:I
    iget-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mFullScreen:Z

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v2

    aget v0, v2, v1

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 155
    .end local v0           #iconId:I
    .end local v1           #index:I
    :cond_0
    return-void

    .line 151
    .restart local v0       #iconId:I
    .restart local v1       #index:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v2

    aget v0, v2, v1

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->reloadValue()V

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 142
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    .line 221
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    if-nez v0, :cond_1

    .line 203
    :cond_0
    const/4 p1, 0x0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 210
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 212
    :cond_2
    return-void
.end method

.method public setHDRStatus(Z)V
    .locals 0
    .parameter "hdr"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 217
    return-void
.end method

.method public setIconListPreference(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->grayClosed()V

    .line 135
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->grayClosed()V

    .line 120
    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_0

    .line 126
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 103
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 77
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 188
    return-void
.end method

.method public toggle()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 89
    .local v0, index:I
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPrefrenceSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 90
    const/4 v0, 0x0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch flash mode to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0
.end method
