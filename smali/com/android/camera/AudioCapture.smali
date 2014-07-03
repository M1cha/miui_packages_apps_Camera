.class public Lcom/android/camera/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"

# interfaces
.implements Lcom/android/camera/Clapper$ClapperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AudioCapture$Callback;
    }
.end annotation


# static fields
.field public static final SHUTTER_BUTTON_DRAWABLE_LENGHT:I

.field private static final mShutterButtonDrawable:[I


# instance fields
.field private mCallback:Lcom/android/camera/AudioCapture$Callback;

.field private mClapper:Lcom/android/camera/Clapper;

.field private mFinishAmplitude:I

.field private mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private final mRunnableHeard:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/AudioCapture;->mShutterButtonDrawable:[I

    .line 23
    sget-object v0, Lcom/android/camera/AudioCapture;->mShutterButtonDrawable:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/camera/AudioCapture;->SHUTTER_BUTTON_DRAWABLE_LENGHT:I

    return-void

    .line 18
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/AudioCapture$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    .line 15
    iput v0, p0, Lcom/android/camera/AudioCapture;->mFinishAmplitude:I

    .line 32
    new-instance v0, Lcom/android/camera/AudioCapture$1;

    invoke-direct {v0, p0}, Lcom/android/camera/AudioCapture$1;-><init>(Lcom/android/camera/AudioCapture;)V

    iput-object v0, p0, Lcom/android/camera/AudioCapture;->mRunnableHeard:Ljava/lang/Runnable;

    .line 54
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AudioCapture;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AudioCapture;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/AudioCapture;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    iget v0, p0, Lcom/android/camera/AudioCapture;->mFinishAmplitude:I

    return v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/android/camera/AudioCapture;->mShutterButtonDrawable:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/AudioCapture;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/AudioCapture;->updateShutterButton(I)V

    return-void
.end method

.method private updateShutterButton(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v1}, Lcom/android/camera/AudioCapture$Callback;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    .line 48
    .local v0, button:Lcom/android/camera/ShutterButton;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public heard(I)V
    .locals 2
    .parameter "finishAmplitude"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/camera/AudioCapture;->mFinishAmplitude:I

    .line 102
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/AudioCapture;->mRunnableHeard:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    .line 85
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    invoke-virtual {v0}, Lcom/android/camera/Clapper;->stop()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0, v1}, Lcom/android/camera/AudioCapture$Callback;->setAudioCaptureICPressed(Z)V

    .line 89
    const v0, 0x7f02003a

    invoke-direct {p0, v0}, Lcom/android/camera/AudioCapture;->updateShutterButton(I)V

    goto :goto_0
.end method

.method public releaseShutter()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->readyToAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->releaseShutter()V

    .line 114
    :cond_0
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 60
    iget-boolean v1, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 64
    :cond_0
    new-instance v1, Lcom/android/camera/Clapper;

    invoke-direct {v1, p0}, Lcom/android/camera/Clapper;-><init>(Lcom/android/camera/Clapper$ClapperListener;)V

    iput-object v1, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    .line 65
    iget-object v1, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    invoke-virtual {v1}, Lcom/android/camera/Clapper;->start()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iput-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    .line 69
    iget-object v1, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v1, v0}, Lcom/android/camera/AudioCapture$Callback;->setAudioCaptureICPressed(Z)V

    .line 70
    const/high16 v1, 0x7f02

    invoke-direct {p0, v1}, Lcom/android/camera/AudioCapture;->updateShutterButton(I)V

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
