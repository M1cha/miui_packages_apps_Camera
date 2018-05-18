.class public abstract Lcom/android/camera/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# instance fields
.field protected mCurrentMode:I

.field protected mDegree:I

.field private mEnableClick:Z

.field private mInModeChanging:Z

.field private mLaseFragmentInfo:I

.field private mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

.field private mRegistered:Z

.field private mSilentRemove:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method


# virtual methods
.method public canProvide()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public abstract getFragmentInto()I
.end method

.method public final getFragmentTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLayoutResourceId()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method protected abstract initView(Landroid/view/View;)V
.end method

.method public isEnableClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return v0
.end method

.method protected isInModeChanging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    iput p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->provideEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->provideExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getLayoutResourceId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragment;->initView(Landroid/view/View;)V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterProtocol()V

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeDestroy(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public pendingGone(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    return-void
.end method

.method public pendingShow()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method protected final registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 2

    const/16 v1, 0xab

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public final registerProtocol()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method

.method public final setDegree(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return-void
.end method

.method public setEnableClickInitValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method

.method public setLastFragmentInfo(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    return-void
.end method

.method public setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method protected final unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 2

    const/16 v1, 0xab

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public final unRegisterProtocol()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method
