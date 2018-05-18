.class public Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPopupBeautyLevel.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xff2

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f04001a

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v2

    int-to-float v5, v3

    const/high16 v6, 0x3f400000    # 0.75f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
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
