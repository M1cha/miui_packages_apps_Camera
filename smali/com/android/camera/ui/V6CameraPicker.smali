.class public Lcom/android/camera/ui/V6CameraPicker;
.super Lcom/android/camera/ui/AnimationImageView;
.source "V6CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraFacing:I

.field private mEnabled:Z

.field private mPreference:Lcom/android/camera/preferences/ListPreference;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/V6CameraPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/V6CameraPicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/ListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/ui/V6CameraPicker;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "click switch camera button"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    if-nez v0, :cond_3

    const/4 v6, 0x1

    :goto_0
    iget v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    iput v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v2, 0x7f0a0020

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    return-void
.end method
