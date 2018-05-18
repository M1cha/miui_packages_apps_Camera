.class public Lcom/android/camera/fragment/FragmentBottomAction;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
.implements Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.implements Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterSwitcher;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapLongStatusMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBottomAction$1;
    }
.end annotation


# instance fields
.field private mBottomAnimator:Landroid/animation/ValueAnimator;

.field private mCameraPickEnable:Z

.field private mCameraPicker:Landroid/view/View;

.field private mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field private mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

.field private mFilterLayout:Landroid/view/View;

.field private mFilterListHeight:I

.field private mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mInLoading:Z

.field private mIsIntentAction:Z

.field private mIsShowFilter:Z

.field private mLongPressBurst:Z

.field private mModeSelectLayout:Landroid/view/View;

.field private mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

.field private mOnCreated:Z

.field private mRecordingPause:Landroid/widget/ImageView;

.field private mRecordingSnap:Landroid/widget/ImageView;

.field private mShutterButton:Lcom/android/camera/ui/CameraSnapView;

.field private mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

.field private mThumbnailImage:Landroid/widget/ImageView;

.field private mThumbnailImageLayout:Landroid/view/ViewGroup;

.field private mThumbnailProgress:Landroid/widget/ProgressBar;

.field private mV9bottomParentLayout:Landroid/widget/RelativeLayout;

.field private mVideoCaptureEnable:Z

.field private mVideoPauseSupported:Z

.field private mVideoRecordingStarted:Z


# direct methods
.method static synthetic -get1(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/fragment/FragmentBottomAction;)Lcom/android/camera/ui/ModeSelectView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomAction$1;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

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

.method private initThumbLayoutByIntent()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v5, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v4, 0x7f02018f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private isInMovieSolidMode()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThumbLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    return v0
.end method

.method private prepareRecording()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v2, 0xa6

    if-eq v1, v2, :cond_0

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording()V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    goto :goto_0
.end method

.method private resetBottom()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateBottomInRecording(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBottomAction$4;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBottomAction$5;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoPause()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    goto :goto_1

    :pswitch_3
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public canSnap()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeMode(II)V
    .locals 7

    const/4 v6, 0x1

    iget v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    if-eq p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa1

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    return-void

    :cond_5
    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/camera/module/loader/StartControl;->setStartDelay(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/module/loader/StartControl;->setLastMode(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public filterUiChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf1

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f04000c

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0a0038

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mOnCreated:Z

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v2, 0x7f0a0039

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/camera/Util;->sNavigationBarHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    const v2, 0x7f0a0035

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/EdgeHorizonScrollView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ModeSelectView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/ModeSelectView;->setOnModeClickedListener(Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;)V

    const v2, 0x7f0a003a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v2, 0x7f0a003d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const v2, 0x7f0a003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f0a003e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraSnapView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v2, 0x7f0a003f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    const v2, 0x7f0a0040

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/ui/CameraSnapView;->setCurrentMode(IZ)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v6}, Lcom/android/camera/ui/CameraSnapView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->provideAnimateElement(ILjava/util/List;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    new-instance v2, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    new-instance v2, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v2}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/FragmentFilter;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public isShowFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    return v0
.end method

.method public notifyDataChanged(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->initThumbLayoutByIntent()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v12

    const/16 v13, 0xa1

    invoke-virtual {v12, v13}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ActivityBase;

    invoke-virtual {v12}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "FragmentBottomAction"

    const-string/jumbo v13, "onClick: ignore click event, because module isn\'t ready"

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v12

    if-eqz v12, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    :pswitch_2
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v12

    if-eqz v12, :cond_6

    return-void

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v12

    if-eqz v12, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    if-nez v4, :cond_9

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    const/4 v12, 0x1

    if-ne v8, v12, :cond_a

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const/high16 v13, -0x3ccc0000    # -180.0f

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v12

    const/16 v13, 0xac

    invoke-virtual {v12, v13}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v10

    check-cast v10, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu()V

    const-string/jumbo v12, "FragmentBottomAction"

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v14, "switch camera from %d to %d, for module 0x%x"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    sparse-switch v12, :sswitch_data_0

    invoke-interface {v3, v8}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(I)Z

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    const v13, 0x7f0f012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto/16 :goto_2

    :sswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    const/16 v13, 0xa2

    invoke-virtual {v12, v13}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/Camera;

    const/16 v13, 0xa2

    invoke-static {v13}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_3

    :sswitch_1
    const/16 v9, 0xa2

    if-nez v8, :cond_b

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoFastMotion()Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v9, 0xa9

    :cond_b
    :goto_4
    const/16 v12, 0xa2

    if-eq v9, v12, :cond_d

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/Camera;

    invoke-static {v9}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_3

    :cond_c
    invoke-interface {v5}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoSlowMotion()Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v9, 0xa8

    goto :goto_4

    :cond_d
    invoke-interface {v3, v8}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(I)Z

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa9

    if-eq v12, v13, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa8

    if-eq v12, v13, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa2

    if-eq v12, v13, :cond_f

    :cond_e
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v11}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa9

    if-eq v12, v13, :cond_11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa8

    if-eq v12, v13, :cond_11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa2

    if-eq v12, v13, :cond_11

    :cond_10
    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v11}, Lcom/android/camera/module/VideoModule;->capture()Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a003a
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onModeClicked(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->changeMode(II)V

    return-void
.end method

.method public onReleaseRecording()V
    .locals 3

    const/4 v2, 0x2

    const-string/jumbo v0, "FragmentBottomAction"

    const-string/jumbo v1, "onReleaseRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->initThumbLayoutByIntent()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    :cond_1
    return-void
.end method

.method public onSmartShutterFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onSmartShutterButtonFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public onSnapClick()V
    .locals 6

    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "FragmentBottomAction"

    const-string/jumbo v4, "onSnapClick: ignore onSnapClick event, because module isn\'t ready"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa1

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xab

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    const-string/jumbo v3, "FragmentBottomAction"

    const-string/jumbo v4, "onSnapClick"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0f0130

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    :cond_5
    return-void

    :pswitch_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->prepareRecording()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    :cond_7
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapLongPress()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    const-string/jumbo v2, "FragmentBottomAction"

    const-string/jumbo v3, "onSnapLongPress"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClick()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    :cond_3
    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPressCancelIn"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel()V

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapLongPressCancelOut()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPressCancelOut"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel()V

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    :cond_2
    return-void
.end method

.method public onSnapLongReachLimit()V
    .locals 0

    return-void
.end method

.method public onSnapPrepare()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapPrepare"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onStartRecording()V
    .locals 4

    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onStartRecording"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onStopRecording()V
    .locals 3

    const/4 v2, 0x2

    const-string/jumbo v0, "FragmentBottomAction"

    const-string/jumbo v1, "onStopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xba

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackSnapMissTaken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonMissTaken(J)V

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xba

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackSnapTaken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonTaken(J)V

    return-void
.end method

.method public processingAudioCapture(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->startRing()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->stopRing()V

    goto :goto_0
.end method

.method public processingFailed()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->updateLoading(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->resetBottom()V

    return-void
.end method

.method public processingFinish()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->resetBottom()V

    return-void
.end method

.method public processingPause()V
    .locals 3

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f020117

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public processingResume()V
    .locals 3

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->resumeRecording()V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f020116

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public processingStart()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->prepareRecording()V

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->processingAudioCapture(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1, p2}, Lcom/android/camera/fragment/FragmentFilter;->isShowAnimation(Ljava/util/List;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, p1, v1}, Lcom/android/camera/ui/CameraSnapView;->setCurrentMode(IZ)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-boolean v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    invoke-virtual {v1, p1, p2, v4}, Lcom/android/camera/ui/ModeSelectView;->judgePosition(ILjava/util/List;Z)V

    packed-switch p1, :pswitch_data_1

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    :goto_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const/high16 v4, 0x7f0d0000

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    :pswitch_3
    const/4 v0, -0x1

    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-ne v0, v2, :cond_5

    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_3
    return-void

    :cond_4
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
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

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_0
    .end packed-switch
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xa2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb3

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomAction;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public selectMode(II)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-ne p1, v6, :cond_6

    const p1, 0x800005

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    iget v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v6, 0xa9

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_3

    :cond_2
    const/16 v1, 0xa2

    :cond_3
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v5

    if-ne v5, v1, :cond_9

    move v3, v0

    :cond_4
    packed-switch p1, :pswitch_data_0

    :cond_5
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/camera/fragment/FragmentBottomAction;->changeMode(II)V

    return-void

    :cond_6
    if-ne p1, v7, :cond_1

    const p1, 0x800003

    goto :goto_0

    :cond_7
    if-ne p1, v6, :cond_8

    const p1, 0x800003

    goto :goto_0

    :cond_8
    if-ne p1, v7, :cond_1

    const p1, 0x800005

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :pswitch_2
    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x800003
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setClickEnable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setEnabled(Z)V

    return-void
.end method

.method public showOrHideFilter()V
    .locals 10

    const/high16 v9, 0x42480000    # 50.0f

    const v8, 0x3f666666    # 0.9f

    const-wide/16 v6, 0x12c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentFilter;->delayShowSelected(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomAction$2;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    const v1, 0x7f0f012e

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentFilter;->delayShowSelected(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomAction$3;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto/16 :goto_0
.end method

.method public switchFilter(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/FragmentFilter;->switchFilter(I)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v1, 0xb3

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v1, 0xa2

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v1, 0xc0

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v1, 0xb7

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v1, 0xc2

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomAction;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public updateLoading(Z)V
    .locals 4

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;Z)V
    .locals 6

    const/16 v2, 0x8

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v2, 0x7f020136

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v4}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
