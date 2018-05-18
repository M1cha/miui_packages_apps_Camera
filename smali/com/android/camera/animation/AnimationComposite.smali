.class public Lcom/android/camera/animation/AnimationComposite;
.super Ljava/lang/Object;
.source "AnimationComposite.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

.field private mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationDisposable:Lio/reactivex/disposables/Disposable;

.field private mCurrentDegree:I

.field private mOrientation:I

.field private mRotationAnimator:Landroid/animation/ValueAnimator;

.field private mStartDegree:I

.field private mTargetDegree:I

.field private resourceSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/animation/AnimationDelegate$AnimationResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/camera/animation/AnimationComposite;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/animation/AnimationComposite;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/camera/animation/AnimationComposite;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/animation/AnimationComposite;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    iput v1, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    iput v1, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/camera/animation/AnimationComposite$1;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/AnimationComposite$1;-><init>(Lcom/android/camera/animation/AnimationComposite;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->setClickEnable(Z)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyAfterFrameAvailable(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/AnimationComposite;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;IZ)Lio/reactivex/disposables/Disposable;
    .locals 5
    .param p1    # Lio/reactivex/Completable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/Action;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    move-object v3, v1

    :goto_2
    invoke-interface {v2, p3, v3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideAnimateElement(ILjava/util/List;)V

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v1}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-virtual {v3, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    :goto_3
    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    return-object v3

    :cond_5
    invoke-static {v1}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-virtual {v3}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_3
.end method

.method public disposeRotation(I)V
    .locals 14

    const/16 v13, 0x168

    const/4 v12, 0x0

    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    :goto_0
    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    if-ne v10, p1, :cond_1

    return-void

    :cond_0
    rem-int/lit16 v10, p1, 0x168

    add-int/lit16 p1, v10, 0x168

    goto :goto_0

    :cond_1
    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    const/4 v5, 0x1

    :goto_1
    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    sub-int v3, p1, v10

    if-ltz v3, :cond_4

    :goto_2
    const/16 v10, 0xb4

    if-le v3, v10, :cond_2

    add-int/lit16 v3, v3, -0x168

    :cond_2
    if-gtz v3, :cond_5

    const/4 v2, 0x1

    :goto_3
    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    if-nez v10, :cond_6

    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    if-nez v10, :cond_6

    return-void

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    add-int/lit16 v3, v3, 0x168

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    rsub-int v10, p1, 0x168

    rem-int/lit16 v10, v10, 0x168

    iput v10, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v4, v10, :cond_8

    iget-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v7}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v10

    if-nez v10, :cond_7

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    invoke-interface {v7, v6, v10}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideRotateItem(Ljava/util/List;I)V

    goto :goto_5

    :cond_8
    if-nez v5, :cond_a

    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    iput v10, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    int-to-float v10, v10

    invoke-static {v8, v10}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    iget-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    iput v10, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    if-eqz v2, :cond_e

    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    if-ne v10, v13, :cond_c

    const/4 v1, 0x0

    :goto_7
    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-nez v10, :cond_d

    const/16 v0, 0x168

    :goto_8
    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v1, v10, v12

    const/4 v11, 0x1

    aput v0, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/camera/animation/AnimationComposite$2;

    invoke-direct {v11, p0, v6}, Lcom/android/camera/animation/AnimationComposite$2;-><init>(Lcom/android/camera/animation/AnimationComposite;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v10, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_c
    iget v1, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    goto :goto_7

    :cond_d
    iget v0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    goto :goto_8

    :cond_e
    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    if-nez v10, :cond_f

    const/16 v1, 0x168

    :goto_9
    iget v10, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-ne v10, v13, :cond_10

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    iget v1, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    goto :goto_9

    :cond_10
    iget v0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    goto :goto_8
.end method

.method public notifyAfterFirstFrameArrived(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyDataChanged(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->isEnableClick()Z

    move-result v2

    if-eq v2, p1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->setClickEnable(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
