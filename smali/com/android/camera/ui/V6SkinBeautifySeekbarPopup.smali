.class public Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6SkinBeautifySeekbarPopup.java"

# interfaces
.implements Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;


# instance fields
.field private mBar:Lcom/android/camera/ui/V6SeekBar;

.field private mMaxText:Landroid/widget/TextView;

.field private mMinText:Landroid/widget/TextView;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMinText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMaxText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6SeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    const v0, 0x7f0a00e1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMinText:Landroid/widget/TextView;

    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMaxText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V

    return-void
.end method

.method public onValueChanged(IZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    new-instance v4, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    iget v1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
