.class public Lcom/android/camera/fragment/top/FragmentTopAlert;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/top/FragmentTopAlert$AlertImageType;
    }
.end annotation


# instance fields
.field private mAlertImageType:I

.field private mAlertImageView:Landroid/widget/ImageView;

.field private mAlertRecordingText:Landroid/widget/TextView;

.field private mAlertStatusValue:Landroid/widget/TextView;

.field private mBlingAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShow:Z

.field private mStateValueText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    return-void
.end method

.method private getAlertImageBottom()I
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private getUpdateZoom()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0x64

    if-le v2, v6, :cond_1

    div-int/lit8 v2, v2, 0xa

    div-int/lit8 v5, v2, 0xa

    rem-int/lit8 v4, v2, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v7
.end method

.method private setAlertImageVisible(II)V
    .locals 5

    const/16 v4, 0x64

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    new-instance v2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertImageBottom()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v1, v2, v3

    new-instance v2, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-direct {v2, v3, v1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v4}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v1, p2, v2

    new-instance v2, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-direct {v2, v3, v1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v4}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0
.end method

.method private setViewMargin(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public alertFlash(IIZ)V
    .locals 3

    if-nez p1, :cond_4

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p3, 0x0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    const v1, 0x7f02005d

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAlertImageVisible(II)V

    return-void

    :cond_3
    const v1, 0x7f02005c

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    return-void

    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    goto :goto_2
.end method

.method public alertHDR(IIZ)V
    .locals 3

    if-nez p1, :cond_3

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    const v1, 0x7f02005f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAlertImageVisible(II)V

    return-void

    :cond_2
    const v1, 0x7f02005e

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    return-void

    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    goto :goto_2
.end method

.method public alertUpdateValue(II)V
    .locals 4

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb6

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getUpdateZoom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertImageBottom()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-direct {p0, v2, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    const/16 v1, 0x8

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xfd

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f04001f

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const v0, 0x7f0a006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShow:Z

    return v0
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const-string/jumbo v1, "00:10"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShow:Z

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    iput-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
