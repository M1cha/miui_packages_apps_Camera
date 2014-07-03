.class public Lcom/android/camera/ui/CameraPickerButton;
.super Landroid/widget/RelativeLayout;
.source "CameraPickerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;


# static fields
.field private static final sButtonImageResource:[I


# instance fields
.field private mCameraFacing:I

.field private mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

.field private mCameras:[Ljava/lang/CharSequence;

.field private mImageResourceIndex:I

.field private mIsChangeImage:Z

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02010a
        0x7f02010c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mImageResourceIndex:I

    .line 56
    return-void
.end method

.method private getCameraPickerState(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isFocused"    # Z

    .prologue
    .line 146
    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    if-nez v1, :cond_1

    .line 147
    if-eqz p1, :cond_0

    const v0, 0x7f0d0126

    .line 153
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraPickerButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f0d0127

    goto :goto_0

    .line 150
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0d0125

    .restart local v0    # "resId":I
    :goto_1
    goto :goto_0

    .end local v0    # "resId":I
    :cond_2
    const v0, 0x7f0d0128

    goto :goto_1
.end method

.method private updateImageResource()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->getCurrentMode()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v0, v1

    .line 73
    .local v0, "bCameraMode":Z
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    aget v1, v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 76
    return-void

    .end local v0    # "bCameraMode":Z
    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    .line 73
    .restart local v0    # "bCameraMode":Z
    :cond_1
    sget-object v2, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    aget v1, v2, v1

    goto :goto_1
.end method


# virtual methods
.method public OnRotateAxisFinished()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public OnRotatePointFinished()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mIsChangeImage:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/camera/ui/CameraPickerButton;->updateImageResource()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mIsChangeImage:Z

    .line 84
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 165
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 166
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/ui/CameraPickerButton;->getCameraPickerState(Z)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 6
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const-string v2, "pref_camera_id_key"

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 100
    .local v1, "pref":Lcom/android/camera/ListPreference;
    if-nez v1, :cond_0

    .line 101
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 119
    :goto_0
    return-void

    .line 104
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mPreference:Lcom/android/camera/ListPreference;

    .line 105
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    .line 106
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 107
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iput v4, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    goto :goto_0

    .line 117
    :cond_2
    iput v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    goto :goto_0
.end method

.method public initializeForPanorama(Lcom/android/camera/PreferenceGroup;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 124
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 128
    iput v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/CameraPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 138
    .local v0, "newCameraIndex":I
    :goto_1
    iput v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 139
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 141
    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->overturn()V

    goto :goto_0

    .line 135
    .end local v0    # "newCameraIndex":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPickerButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RotateImageView;->setOnRotateFinishedListener(Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;)V

    .line 63
    invoke-direct {p0}, Lcom/android/camera/ui/CameraPickerButton;->updateImageResource()V

    .line 64
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraPickerButton;->getCameraPickerState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 185
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 186
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 95
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 69
    return-void
.end method
