.class public Lcom/android/camera/fragment/FragmentMainContent;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMainContent.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private mActiveIndicator:I

.field private mBottomCover:Landroid/view/View;

.field private mCoverParent:Landroid/view/ViewGroup;

.field private mDisplayRectTopMargin:I

.field private mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusView:Lcom/android/camera/ui/FocusView;

.field private mIsIntentAction:Z

.field private mLastCameraId:I

.field private mLastFaceLength:I

.field private mMultiSnapNum:Landroid/widget/TextView;

.field private mObjectView:Lcom/android/camera/ui/ObjectView;

.field private mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field private mPreviewPage:Lcom/android/camera/ui/V6RelativeLayout;

.field private mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field private mSnapStyle:Landroid/text/style/TextAppearanceSpan;

.field private mStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTopCover:Landroid/view/View;

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentMainContent;)Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return-void
.end method

.method private adjustViewHeight(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/V6PreviewPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/fragment/FragmentMainContent;->setDisplaySize(II)V

    :cond_0
    return-void
.end method

.method private initSnapNumAnimator()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060005

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearFocusView(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->clear(I)V

    return-void
.end method

.method public clearIndicator(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not allowed call in this method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroyEffectCropView()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onDestroy()V

    return-void
.end method

.method public getActiveIndicator()I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return v0
.end method

.method public getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    return-object v0
.end method

.method public getFocusRect(I)Landroid/graphics/RectF;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "FragmentMainContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFocusRectInPreviewFrame()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf3

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f040012

    return v0
.end method

.method public getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    return v0
.end method

.method public hideDelayNumber()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPanel;->hideDelayNumber()V

    return-void
.end method

.method public hideReviewViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public initEffectCropView()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onCreate()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    const v0, 0x7f0a004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Lcom/android/camera/ui/V6RelativeLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Lcom/android/camera/ui/V6RelativeLayout;

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method public initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    return-void
.end method

.method public initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0
.end method

.method public isAdjustingObjectView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    return v0
.end method

.method public isDragged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isDragged()Z

    move-result v0

    return v0
.end method

.method public isEffectViewMoved()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isMoved()Z

    move-result v0

    return v0
.end method

.method public isEffectViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isEvAdjusted(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result v0

    return v0
.end method

.method public isFaceExists(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->faceExists()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isFaceStable(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isFaceStable()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isIndicatorVisible(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v2}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isManualSplitMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isManualSplitMode()Z

    move-result v0

    return v0
.end method

.method public isNeedExposure(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->isNeedExposure()Z

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isNeedExposure()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isObjectTrackFailed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isTrackFailed()Z

    move-result v0

    return v0
.end method

.method public isPreviewFullScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->updateReferenceLineAccordSquare()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->updatePreviewGrid()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->reInit()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->hideReviewViews()V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v2, 0x7f0f012c

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    new-instance v2, Lcom/android/camera/fragment/FragmentMainContent$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/FragmentMainContent$1;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/camera/ui/V6PreviewFrame;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v2, 0x7f0f012b

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight(Landroid/view/View;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight(Landroid/view/View;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->destroyEffectCropView()V

    return-void
.end method

.method public onStopObjectTrack()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    return-void
.end method

.method public onViewTouchEvent(ILandroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FocusView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6EffectCropView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pauseIndicator(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->pause()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performHapticFeedback(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6PreviewFrame;->performHapticFeedback(I)Z

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    const/16 v7, 0xc8

    const/16 v6, 0x50

    const/16 v5, 0x30

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMode:I

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentMainContent;->setSnapNumVisible(Z)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewGrid()V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->clear()V

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->releaseListener()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->destroyEffectCropView()V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    return-void

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {v3, v5}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-static {v3, v6}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    :goto_2
    return-void

    :cond_2
    new-instance v3, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-direct {v3, v4, v6}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {v3, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-static {v3, v6}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-direct {v3, v4, v6}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa2 -> :sswitch_1
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_1
    .end sparse-switch
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    rsub-int v1, p2, 0x168

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FaceView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/FocusView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reShowFaceRect()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->reShowFaceRect()V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    return-void
.end method

.method public removeTiltShiftMask()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    return-void
.end method

.method public resumeIndicator(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->resume()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setActiveIndicator(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    return-void
.end method

.method public setDisplaySize(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->setDisplaySize(II)V

    return-void
.end method

.method public setEffectViewVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    goto :goto_0
.end method

.method public setEvAdjustable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->setEvAdjustable(Z)V

    return-void
.end method

.method public setFaces(I[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v5

    :pswitch_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    array-length v1, p2

    if-eq v0, v1, :cond_0

    array-length v0, p2

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/high16 v4, 0x7f100000

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->sendAccessibilityEvent(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    :cond_2
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusViewPosition(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->forceHideRect()V

    return-void
.end method

.method public setFocusViewType(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    return-void
.end method

.method public setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    return-void
.end method

.method public setPreviewAspectRatio(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->setPreviewSize(II)V

    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Z)V

    return-void
.end method

.method public setShowMagicMirror(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setShowMagicMirror(Z)V

    return-void
.end method

.method public setSkipDrawFace(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setSkipDraw(Z)V

    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11002b

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    goto :goto_0
.end method

.method public setSnapNumVisible(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initSnapNumAnimator()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setSnapNumValue(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1
.end method

.method public showDelayNumber(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDegree:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->showDelayNumber(Ljava/lang/String;)V

    return-void
.end method

.method public showIndicator(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showReviewViews(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    return-void
.end method

.method public updateEffectViewVisible()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    return-void
.end method

.method public updateEffectViewVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    return-void
.end method

.method public updateFaceView(ZZZZI)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    if-lez p5, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p5}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateFocusMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->updateFocusMode()V

    return-void
.end method
