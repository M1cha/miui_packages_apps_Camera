.class public Lcom/android/camera/ui/CameraPickerButton;
.super Landroid/widget/RelativeLayout;
.source "CameraPickerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;


# static fields
.field private static final sButtonImageResource:[[I


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
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 47
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[[I

    return-void

    :array_0
    .array-data 0x4
        0xft 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x10t 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mImageResourceIndex:I

    .line 56
    return-void
.end method

.method private updateImageResource()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->getCurrentMode()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v0, v1

    .line 79
    .local v0, bCameraMode:Z
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[[I

    iget v4, p0, Lcom/android/camera/ui/CameraPickerButton;->mImageResourceIndex:I

    aget-object v1, v1, v4

    aget v1, v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 82
    return-void

    .end local v0           #bCameraMode:Z
    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    .line 79
    .restart local v0       #bCameraMode:Z
    :cond_1
    sget-object v2, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[[I

    iget v4, p0, Lcom/android/camera/ui/CameraPickerButton;->mImageResourceIndex:I

    aget-object v2, v2, v4

    aget v1, v2, v1

    goto :goto_1
.end method


# virtual methods
.method public OnRotateAxisFinished()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public OnRotatePointFinished()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mIsChangeImage:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/camera/ui/CameraPickerButton;->updateImageResource()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mIsChangeImage:Z

    .line 90
    :cond_0
    return-void
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 6
    .parameter "group"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    const-string v2, "pref_camera_id_key"

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 106
    .local v1, pref:Lcom/android/camera/ListPreference;
    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 125
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mPreference:Lcom/android/camera/ListPreference;

    .line 111
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    .line 112
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 113
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 117
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, cameraId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    iput v4, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    goto :goto_0

    .line 123
    :cond_2
    iput v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    goto :goto_0
.end method

.method public initializeForPanorama(Lcom/android/camera/PreferenceGroup;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "group"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 130
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 134
    iput v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 135
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/CameraPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 155
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
    .parameter "v"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 144
    .local v0, newCameraIndex:I
    :goto_1
    iput v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 145
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 147
    iget-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->overturn()V

    goto :goto_0

    .line 141
    .end local v0           #newCameraIndex:I
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

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 161
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 162
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 101
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 70
    return-void
.end method
