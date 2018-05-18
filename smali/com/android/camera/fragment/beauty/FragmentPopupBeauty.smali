.class public Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPopupBeauty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mIconBeauty:Landroid/view/View;

.field private mIconSticker:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf9

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f040019

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v1, 0x7f0a0061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    const v1, 0x7f0a0062

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0xa0

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0061
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez p2, :cond_2

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    new-instance v1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-direct {v1, v2, v4}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-direct {v1, v2, v5}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-direct {v1, v2, v4}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-direct {v1, v2, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0xa1

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_0
    .end packed-switch
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method
