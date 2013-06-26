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
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private getPrefrenceSize()I
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 59
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 73
    .local v0, index:I
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->getPrefrenceSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 74
    const/4 v0, 0x0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->refreshValue()V

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, inflater:Lcom/android/camera/PreferenceInflater;
    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 54
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->refreshValue()V

    .line 55
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->toggle()V

    .line 45
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 31
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautifyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mBeautifyImage:Lcom/android/camera/ui/RotateImageView;

    .line 32
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SkinBeautifyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->refreshValue()V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautifyButton;->requestLayout()V

    .line 35
    return-void
.end method

.method public refreshValue()V
    .locals 5

    .prologue
    .line 85
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, index:I
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v3

    aget v0, v3, v1

    .line 92
    .local v0, iconId:I
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mBeautifyImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 94
    .end local v0           #iconId:I
    .end local v1           #index:I
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 49
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautifyButton;->mBeautifyImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 40
    return-void
.end method
