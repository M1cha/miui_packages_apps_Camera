.class public Lcom/android/camera/ui/V6PreviewFrame;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mAspectRatio:F

.field public mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3fe38e39

    iput v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    return-void
.end method

.method private isReferenceLineEnabled()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private needReferenceLineMode()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v2, 0xa3

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0xab

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hidePreviewGrid()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/SplitLineDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isFullScreen()Z
    .locals 6

    const/4 v1, 0x1

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLineColor(I)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6PreviewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    sub-int v0, p5, p3

    sub-int v1, p4, p2

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iput p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    :cond_1
    return-void
.end method

.method public updatePreviewGrid()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewFrame;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewFrame;->needReferenceLineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateReferenceLineAccordSquare()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v2, 0x6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method
