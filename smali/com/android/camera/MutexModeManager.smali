.class public Lcom/android/camera/MutexModeManager;
.super Ljava/lang/Object;
.source "MutexModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MutexModeManager$ChangeListener;,
        Lcom/android/camera/MutexModeManager$NoneChangeListener;
    }
.end annotation


# instance fields
.field private mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

.field private mCurrentMutexMode:I

.field private mIsMandatory:Z

.field private mLastMutexMode:I

.field private mRunnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    new-instance v0, Lcom/android/camera/MutexModeManager$NoneChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/MutexModeManager$NoneChangeListener;-><init>(Lcom/android/camera/MutexModeManager$NoneChangeListener;)V

    iput-object v0, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    return-void
.end method

.method private enter(I)V
    .locals 4

    iput p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "enter"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private exit(I)V
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v2, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    iput v3, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static getMutexModeName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "hdr"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "aohdr"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "hand-night"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "raw"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "burst-shoot"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private switchMutexMode(II)V
    .locals 3

    const-string/jumbo v0, "MutexModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchMutexMode from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/MutexModeManager;->exit(I)V

    invoke-direct {p0, p2}, Lcom/android/camera/MutexModeManager;->enter(I)V

    iget-object v0, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/MutexModeManager$ChangeListener;->onMutexModeChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearMandatoryFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, ""

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "AO_HDR"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "HDR"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "HHT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getLastMutexMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    return v0
.end method

.method public getMutexMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "_RAW"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->enableAlgorithmInFileSuffix()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, ""

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "_AO_HDR"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "_HDR"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "_HHT"

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public inMandatoryMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    return v0
.end method

.method public isAoHdr()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurstShoot()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandNight()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdr()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMorphoHdr()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedComposed()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNormal()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRAW()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSceneHdr()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedFlashOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isSupportedTorch()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isUbiFocus()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetMutexMode()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method

.method public setMutexMode(I)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method

.method public setMutexModeChangeListener(Lcom/android/camera/MutexModeManager$ChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/MutexModeManager$NoneChangeListener;

    invoke-direct {p1, v0}, Lcom/android/camera/MutexModeManager$NoneChangeListener;-><init>(Lcom/android/camera/MutexModeManager$NoneChangeListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    return-void
.end method

.method public setMutexModeMandatory(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method
