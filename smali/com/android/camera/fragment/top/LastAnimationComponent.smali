.class public Lcom/android/camera/fragment/top/LastAnimationComponent;
.super Ljava/lang/Object;
.source "LastAnimationComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/top/LastAnimationComponent$TargetType;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public mAnchorView:Landroid/view/View;

.field public mHidedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field public mReverseLeft:I

.field public mReverseRecyclerViewLeft:I

.field public mShown:Z

.field private mTargetType:I
    .annotation build Lcom/android/camera/fragment/top/LastAnimationComponent$TargetType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/top/LastAnimationComponent;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideOtherViews(ILjava/util/List;I)V
    .locals 4
    .param p3    # I
        .annotation build Lcom/android/camera/fragment/top/LastAnimationComponent$TargetType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    iget-boolean v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    iput p3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mTargetType:I

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v2, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    sget-object v3, Lcom/android/camera/fragment/top/LastAnimationComponent;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public reverse(ZI)Z
    .locals 9
    .param p2    # I
        .annotation build Lcom/android/camera/fragment/top/LastAnimationComponent$TargetType;
        .end annotation
    .end param

    const/16 v8, 0x12c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    iget v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mTargetType:I

    if-eq p2, v2, :cond_0

    return v3

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    if-nez v2, :cond_1

    return v3

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_2

    new-instance v2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v2, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v8}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    new-instance v3, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v3}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    :cond_4
    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_6

    new-instance v2, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    iget v4, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    iget-object v5, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v8}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    sget-object v3, Lcom/android/camera/fragment/top/LastAnimationComponent;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    iput-object v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    :cond_5
    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    iget-object v4, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    sget-object v3, Lcom/android/camera/fragment/top/LastAnimationComponent;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/top/LastAnimationComponent$1;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/top/LastAnimationComponent$1;-><init>(Lcom/android/camera/fragment/top/LastAnimationComponent;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_6
    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    iget-object v4, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v7}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    iget-object v4, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iput-object v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    goto :goto_2
.end method
