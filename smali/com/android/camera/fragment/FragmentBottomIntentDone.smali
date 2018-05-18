.class public Lcom/android/camera/fragment/FragmentBottomIntentDone;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomIntentDone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private mApplyView:Landroid/widget/ImageView;

.field private mRetryView:Landroid/widget/ImageView;

.field private mainView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 3

    const/high16 v2, 0x7f0d0000

    const/16 v1, 0xa5

    if-ne p2, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :pswitch_1
    const v1, 0x7f0d000c

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xff3

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f04000d

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mainView:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mCurrentMode:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    const v1, 0x7f0a0041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    const v1, 0x7f0a0042

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mainView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mCurrentMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mainView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mCurrentMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackEvent(I)Z
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    return v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->canProvide()Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0041
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    const/16 v0, 0xa7

    const/16 v1, 0xa1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    const/16 v0, 0xa8

    const/16 v1, 0xa2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
