.class public Lcom/android/camera/ui/V6PreviewPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6PreviewPanel$1;
    }
.end annotation


# instance fields
.field public mCaptureDelayNumber:Landroid/widget/TextView;

.field public mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

.field public mCropView:Lcom/android/camera/ui/V6EffectCropView;

.field public mFaceView:Lcom/android/camera/ui/FaceView;

.field public mFocusView:Lcom/android/camera/ui/FocusView;

.field private mHidePreviewCover:Ljava/lang/Runnable;

.field private mIsDelayNumInCenter:Z

.field public mObjectView:Lcom/android/camera/ui/ObjectView;

.field private mPreviewCover:Landroid/view/View;

.field public mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field public mVideoReviewImage:Landroid/widget/ImageView;

.field public mVideoReviewPlay:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6PreviewPanel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewCover:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/camera/ui/V6PreviewPanel$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPanel$1;-><init>(Lcom/android/camera/ui/V6PreviewPanel;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mHidePreviewCover:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    return-void
.end method

.method private getLeftMarginAccordingDevice()I
    .locals 3

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v0, v0

    const-string/jumbo v1, "camera_front_count_down_margin"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isDelayNumberInCenter()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v2, Lcom/android/camera/Device;->IS_A8:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/Util;->isActivityInvert(Landroid/app/Activity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-ne v2, v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCaptureDelayView(Z)V
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    if-eqz v2, :cond_1

    aput v4, v1, v6

    aput v3, v1, v5

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Landroid/widget/TextView;

    const v3, 0x429f570a    # 79.67f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    return-void

    :cond_1
    aput v3, v1, v6

    aput v4, v1, v5

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPanel;->getLeftMarginAccordingDevice()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Landroid/widget/TextView;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method


# virtual methods
.method public hideDelayNumber()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa7

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;->playVideo()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a00d4
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a00d0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Landroid/widget/TextView;

    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewCover:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPanel;->isDelayNumberInCenter()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->updateCaptureDelayView(Z)V

    return-void
.end method

.method public showDelayNumber(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
