.class public Lcom/android/camera/ui/BottomControlLowerPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlLowerPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final DURATION:I


# instance fields
.field private mModuleAnimationCallback:Ljava/lang/Runnable;

.field public mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

.field private mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

.field public mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

.field public mProgressBar:Landroid/view/View;

.field public mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

.field private mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

.field public mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    sput v0, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    return-void

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initModulePickerSwitchAnimation(FFFF)V
    .locals 10

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p2, p3

    div-float v3, p2, p3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float/2addr v1, v2

    neg-float v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initShutterButtonSwitchAnimation(FFFF)V
    .locals 10

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p3, p2

    div-float v3, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float v2, v1, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->post(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v4, 0x7f0a0010

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ThumbnailButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    const v4, 0x7f0a0014

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ShutterButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    const v4, 0x7f0a0017

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ModulePicker;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    const v4, 0x7f0a0012

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mProgressBar:Landroid/view/View;

    const v4, 0x7f0a0013

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6PauseRecordingButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    const v4, 0x7f0a0018

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v4, v4, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModulePicker;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v0, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v1, v4

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->initShutterButtonSwitchAnimation(FFFF)V

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->initModulePickerSwitchAnimation(FFFF)V

    return-void
.end method
