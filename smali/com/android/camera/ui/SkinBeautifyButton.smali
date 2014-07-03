.class public Lcom/android/camera/ui/SkinBeautifyButton;
.super Landroid/widget/RelativeLayout;
.source "SkinBeautifyButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mBeautifyImage:Lcom/android/camera/ui/RotateImageView;

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private getPrefrenceSize()I
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSkinBeautifyState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    const-string v1, "off"

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const v0, 0x7f0d0134

    .line 125
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f0d0133

    .restart local v0    # "resId":I
    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 78
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->getPrefrenceSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 79
    const/4 v0, 0x0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->refreshValue()V

    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 110
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->getSkinBeautifyState()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "inflater":Lcom/android/camera/PreferenceInflater;
    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->refreshValue()V

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->toggle()V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautifyButton;->sendAccessibilityEvent(I)V

    .line 50
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 35
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautifyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mBeautifyImage:Lcom/android/camera/ui/RotateImageView;

    .line 36
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SkinBeautifyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->refreshValue()V

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->requestLayout()V

    .line 39
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 104
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->getSkinBeautifyState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public refreshValue()V
    .locals 5

    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v3

    aget v0, v3, v1

    .line 97
    .local v0, "iconId":I
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mBeautifyImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 99
    .end local v0    # "iconId":I
    .end local v1    # "index":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 54
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mBeautifyImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 44
    return-void
.end method
