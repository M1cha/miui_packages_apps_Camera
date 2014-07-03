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

.field private mHDRStatus:Z

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "FlashButton.java"

    sput-object v0, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    .line 42
    return-void
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, value:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    if-eqz v1, :cond_0

    .line 193
    const-string v0, "off"

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, value:Ljava/lang/String;
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const v0, 0x7f0d012d

    .line 99
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 94
    .end local v0           #resId:I
    :cond_0
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const v0, 0x7f0d012e

    .restart local v0       #resId:I
    goto :goto_0

    .line 97
    .end local v0           #resId:I
    :cond_1
    const v0, 0x7f0d012c

    .restart local v0       #resId:I
    goto :goto_0
.end method

.method private getPrefrenceSize()I
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 222
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

    .line 145
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 146
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 149
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 80
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 119
    :goto_0
    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    const-string v0, "off"

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
    .line 54
    .local p2, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v0, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/FlashButton;->setIconListPreference(Ljava/util/List;)V

    .line 57
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 217
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
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    invoke-interface {v0}, Lcom/android/camera/ui/FlashButton$Callback;->dismissSettingView()V

    .line 63
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    invoke-interface {v0}, Lcom/android/camera/ui/FlashButton$Callback;->exitHDR()V

    .line 68
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->sendAccessibilityEvent(I)V

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    .line 48
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->requestLayout()V

    .line 51
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 74
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureWidthByBackground(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureHeightByBackground(Landroid/view/View;)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 106
    return-void
.end method

.method public refreshValue()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v0

    .line 186
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 188
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->reloadValue()V

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 181
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    .line 247
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    if-nez v0, :cond_1

    .line 229
    :cond_0
    const/4 p1, 0x0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 236
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 238
    :cond_2
    return-void
.end method

.method public setHDRStatus(Z)V
    .locals 0
    .parameter "hdr"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mHDRStatus:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 243
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

    .line 152
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->grayClosed()V

    .line 174
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 157
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->grayClosed()V

    .line 159
    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_0

    .line 165
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 142
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 111
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 214
    return-void
.end method

.method public toggle()V
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 128
    .local v0, index:I
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPrefrenceSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 129
    const/4 v0, 0x0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 134
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 135
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

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0
.end method
