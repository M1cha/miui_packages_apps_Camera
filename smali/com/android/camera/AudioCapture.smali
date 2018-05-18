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


# instance fields
.field private mCallback:Lcom/android/camera/AudioCapture$Callback;

.field private mClapper:Lcom/android/camera/Clapper;

.field private mIsRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/AudioCapture$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    return-void
.end method


# virtual methods
.method public heard(F)V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    return v0
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    invoke-virtual {v0}, Lcom/android/camera/Clapper;->stop()V

    return-void
.end method

.method public releaseShutter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->readyToAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->releaseShutter()V

    :cond_0
    return-void
.end method

.method public start()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/camera/Clapper;

    invoke-direct {v0, p0}, Lcom/android/camera/Clapper;-><init>(Lcom/android/camera/Clapper$ClapperListener;)V

    iput-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    invoke-virtual {v0}, Lcom/android/camera/Clapper;->start()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
