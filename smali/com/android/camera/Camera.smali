.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityWithAudioCapture;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/ModeChangeManager$OnModeChangeListener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$ImageNamer;,
        Lcom/android/camera/Camera$ImageSaver;,
        Lcom/android/camera/Camera$SaveRequest;,
        Lcom/android/camera/Camera$AutoFocusMoveCallback;,
        Lcom/android/camera/Camera$AutoFocusCallback;,
        Lcom/android/camera/Camera$JpegQuickPictureCallback;,
        Lcom/android/camera/Camera$JpegPictureCallback;,
        Lcom/android/camera/Camera$RawPictureCallback;,
        Lcom/android/camera/Camera$PostViewPictureCallback;,
        Lcom/android/camera/Camera$ShutterCallback;,
        Lcom/android/camera/Camera$MainHandler;,
        Lcom/android/camera/Camera$CameraStartUpThread;
    }
.end annotation


# static fields
.field public static mBrightnessVisible:Z

.field public static statsdata:[I


# instance fields
.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBurstShotTitle:Ljava/lang/String;

.field private mCameraDisplayOrientation:I

.field mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

.field private mCameraState:I

.field private mCameraSwitching:Z

.field public mCaptureStartTime:J

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field public mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field private mFoundFace:Z

.field private mHandNight:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPendingSwitching:Z

.field private mImageNamer:Lcom/android/camera/Camera$ImageNamer;

.field private mImageSaver:Lcom/android/camera/Camera$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCaptureAfterLaunch:Z

.field private mIsImageCaptureIntent:Z

.field mIsRecreateCameraScreenNail:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastAudioCaptureTime:J

.field private mLastFaceDetectTime:J

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

.field private mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

.field private mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

.field private mMultiSnapStatus:Z

.field private mMultiSnappedCount:I

.field private mMutliSnapStopRequest:Z

.field private mNeedFlash:Z

.field private mOnResumeTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mPendingCapture:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPlayCaptureAnimationAfter:Z

.field private final mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressBarCapture:Landroid/view/View;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedJpegCallbackNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReferenceline:Landroid/widget/ImageView;

.field private mRestartPreview:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotMode:I

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextMulitSnapNumber:Landroid/widget/TextView;

.field private mTotalJpegCallbackNum:I

.field private mTouchAfAecFlag:Z

.field private mUpdateSet:I

.field private mbrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/Camera;->mBrightnessVisible:Z

    .line 106
    const/16 v0, 0x101

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Camera;->statsdata:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/camera/ActivityWithAudioCapture;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mTotalJpegCallbackNum:I

    .line 102
    iput v3, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    .line 158
    iput v3, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    .line 187
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastFaceDetectTime:J

    .line 209
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 244
    iput v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 249
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 250
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 252
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 254
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 256
    new-instance v0, Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    .line 280
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 286
    iput v3, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    .line 293
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 681
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 915
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3471
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->onSettingsBack()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->takeAPhotoIfNeeded()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    return v0
.end method

.method static synthetic access$2304(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2708(Lcom/android/camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->sendDoCaptureMessage()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/camera/Camera;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mTotalJpegCallbackNum:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->needMirrorInStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPlayCaptureAnimationAfter:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mPlayCaptureAnimationAfter:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->playCaptureAnimation()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mBurstShotTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/Camera;->mBurstShotTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->handleMultiSnapDone()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5900(Lcom/android/camera/Camera;)Lcom/android/camera/MotionFocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 596
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 597
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 604
    return-void
.end method

.method private canSetMirror()Z
    .locals 1

    .prologue
    .line 2253
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 2147
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2312
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2314
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2315
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2316
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2317
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2318
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 2319
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2320
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 2321
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2322
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2323
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 2325
    :cond_0
    return-void
.end method

.method private doAttach()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v7, 0x0

    .line 1655
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1751
    :goto_0
    return-void

    .line 1658
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->needMirrorInStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1659
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1660
    iget-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    invoke-static {v1}, Lcom/android/camera/Storage;->flipJpeg([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1661
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1662
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1664
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1669
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1670
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1671
    iget-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v8

    .line 1673
    iget v1, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    add-int/2addr v1, v8

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_2

    .line 1674
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1675
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1680
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 1681
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1682
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "camera_picture_taken_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    iget-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    move v9, v7

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIIZ)V

    .line 1685
    iget-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1690
    iget-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 1693
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1694
    :try_start_2
    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 1695
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1697
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setResultEx(I)V

    .line 1698
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1702
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1677
    :cond_2
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1678
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_2

    .line 1699
    :catch_0
    move-exception v0

    move-object v0, v10

    .line 1702
    :goto_3
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v10}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1705
    :cond_3
    const v0, 0xc800

    invoke-static {v11, v0}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1706
    invoke-static {v0, v8}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1707
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v12, v0}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 1709
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1716
    :cond_4
    :try_start_3
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1717
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1718
    const-string v1, "crop-temp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 1719
    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 1720
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1721
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 1731
    invoke-static {v10}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1734
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1735
    iget-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1736
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    :cond_5
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    .line 1739
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1744
    :goto_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1747
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1749
    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1722
    :catch_1
    move-exception v0

    .line 1723
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setResultEx(I)V

    .line 1724
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1731
    invoke-static {v10}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1726
    :catch_2
    move-exception v0

    .line 1727
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setResultEx(I)V

    .line 1728
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1731
    invoke-static {v10}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v10}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1741
    :cond_6
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 1665
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 1702
    :catchall_2
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto/16 :goto_4

    .line 1699
    :catch_4
    move-exception v1

    goto/16 :goto_3
.end method

.method private doCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1828
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1829
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :goto_0
    return-void

    .line 1834
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 1836
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1839
    const-string v0, "1"

    const-string v1, "camera.capture.flashing"

    const-string v2, "null"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1843
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    .line 1844
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1847
    :cond_3
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1848
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 1849
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mPendingCapture:Z

    .line 1850
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    goto :goto_0
.end method

.method private doSettingSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    .line 3027
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, p1, p3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3028
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3030
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3031
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3035
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3036
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v2}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 3037
    return-void

    .line 3033
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 1371
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 4
    .parameter "preferences"

    .prologue
    .line 1389
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1390
    .local v0, intentCameraId:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1403
    .end local v0           #intentCameraId:I
    .local v1, intentCameraId:I
    :goto_0
    return v1

    .line 1398
    .end local v1           #intentCameraId:I
    .restart local v0       #intentCameraId:I
    :cond_0
    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "camera_mode_change"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1400
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1402
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    move v1, v0

    .line 1403
    .end local v0           #intentCameraId:I
    .restart local v1       #intentCameraId:I
    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2430
    const-string v0, "off"

    .line 2431
    invoke-static {}, Lcom/android/camera/Device;->supportZSL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_zsl_key"

    const v2, 0x7f0d0150

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2436
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_iso_key"

    const v3, 0x7f0d00cc

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2438
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    if-nez v2, :cond_1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-nez v1, :cond_2

    .line 2440
    const-string v0, "off"

    .line 2442
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->supportZSL()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2443
    const-string v0, "on"

    .line 2445
    :cond_3
    return-object v0
.end method

.method private handleMultiSnapDone()V
    .locals 2

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/camera/Camera;->playCaptureAnimation()V

    .line 853
    invoke-direct {p0}, Lcom/android/camera/Camera;->restoreStatusAfterBurst()V

    .line 854
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 855
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 3088
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 3090
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingsStatusBar;->show()V

    .line 3091
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 3092
    new-array v1, v2, [I

    const v2, 0x7f0c0083

    aput v2, v1, v0

    .line 3093
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 3094
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3093
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3096
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3097
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3098
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3099
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3100
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3102
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->supportSkinBeautification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3103
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3105
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3106
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3111
    :cond_3
    :goto_1
    return-void

    .line 3107
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_3

    .line 3108
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_1
.end method

.method private initializeAfterCameraOpen()V
    .locals 3

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 539
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ModeManager;->enableSettingView(Z)V

    .line 543
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initializeZoom()V

    .line 544
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 545
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 547
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 548
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3356
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3357
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    .line 3360
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    .line 3361
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    .line 3362
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    .line 3363
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    .line 3365
    return-void

    :cond_0
    move v0, v2

    .line 3357
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3360
    goto :goto_1
.end method

.method private initializeControlByIntent()V
    .locals 4

    .prologue
    const v1, 0x7f0c0084

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2049
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 2053
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 2054
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 2055
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2060
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2063
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 2079
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    if-eqz v0, :cond_1

    .line 2081
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2082
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2083
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2085
    :cond_1
    return-void

    .line 2065
    :cond_2
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 2066
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    .line 2067
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    .line 2068
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2069
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2070
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2071
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2072
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    .line 2074
    new-instance v0, Lcom/android/camera/ModeChangeManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ModeChangeManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    .line 2075
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModeChangeManager;->setOnModeChangeListener(Lcom/android/camera/ModeChangeManager$OnModeChangeListener;)V

    .line 2076
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 564
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 568
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 569
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 571
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 574
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 575
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 576
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setLongClickable(Z)V

    .line 579
    new-instance v0, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 580
    new-instance v0, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v0}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 581
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 583
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 584
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 2089
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 2090
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v7, :cond_0

    .line 2091
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2093
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v5, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2100
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2101
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2102
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2103
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2104
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/AbstractFocusManager;->setRenderSize(II)V

    .line 2105
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setRenderSize(II)V

    .line 2106
    return-void

    .line 2090
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 1

    .prologue
    .line 2110
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2111
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    .line 2113
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2114
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    .line 2115
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    .line 2116
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControl;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 2117
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 2118
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2119
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2120
    return-void
.end method

.method private initializeSecondTime()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 613
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 614
    new-instance v0, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 615
    new-instance v0, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v0}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 616
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 617
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 619
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 622
    :cond_0
    return-void
.end method

.method private initializeSettingScreen()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1504
    .line 1505
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_4

    .line 1506
    new-instance v0, Lcom/android/camera/CameraModeManager;

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-direct {v0, p0, v3, p0, p0}, Lcom/android/camera/CameraModeManager;-><init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    move v0, v1

    .line 1509
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v4

    .line 1510
    if-nez v4, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ActivityBase;->showIndicators(Z)V

    .line 1511
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-boolean v7, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v3, v5, v4, v6, v1}, Lcom/android/camera/ModeManager;->initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V

    .line 1513
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 1514
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 1515
    const/high16 v1, 0x7f06

    invoke-virtual {p0, p0, v1}, Lcom/android/camera/ActivityBase;->initializeCameraControls(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V

    .line 1516
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    invoke-direct {p0}, Lcom/android/camera/Camera;->returnFromPanorama()V

    .line 1520
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 1521
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/FlashButton;->setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V

    .line 1522
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->resetAudioCapture()V

    .line 1525
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 1526
    return-void

    :cond_2
    move v3, v2

    .line 1510
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1511
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1887
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1889
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1890
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1891
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1892
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1893
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1895
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3040
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCaptureAfterLaunch()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3458
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3459
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3460
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3461
    if-eqz v2, :cond_0

    const-string v0, "captureAfterLaunch"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3462
    const-string v0, "captureAfterLaunch"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3463
    const-string v3, "captureAfterLaunch"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3464
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3468
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 3046
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3047
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPreviewVisible()Z
    .locals 1

    .prologue
    .line 2257
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_1

    .line 2261
    :cond_0
    const/4 v0, 0x0

    .line 2263
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReferenceLineEnabled()Z
    .locals 3

    .prologue
    .line 3374
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_key_camera_referenceline"

    const v2, 0x7f0d017e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3377
    const v1, 0x7f0d017f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isScanQRCodeIntent()Z
    .locals 2

    .prologue
    .line 3051
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3052
    const-string v1, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectingCapturedImage()Z
    .locals 1

    .prologue
    .line 2243
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShutterButtonClickable()Z
    .locals 2

    .prologue
    .line 1811
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isShutterButtonUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2396
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 558
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3275
    return-void
.end method

.method private needMirrorInStorage()Z
    .locals 1

    .prologue
    .line 2247
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needRestart()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2450
    invoke-direct {p0}, Lcom/android/camera/Camera;->getZSL()Ljava/lang/String;

    move-result-object v0

    .line 2451
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 2454
    const-string v0, "camera"

    const-string v1, "Switching to ZSL Camera Mode. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2456
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2465
    :goto_0
    return v0

    .line 2458
    :cond_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_1

    .line 2461
    const-string v0, "camera"

    const-string v1, "Switching to Normal Camera Mode. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2463
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto :goto_0

    .line 2465
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto :goto_0
.end method

.method private onSettingsBack()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 3167
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 3168
    .local v0, cm:Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3169
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3170
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    .line 3171
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 3179
    :cond_0
    :goto_0
    return-void

    .line 3172
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3173
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3174
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    goto :goto_0

    .line 3175
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3176
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3177
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_exposure_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ModeManager;->overrideSettings([Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 1489
    :cond_0
    return-void
.end method

.method private playCaptureAnimation()V
    .locals 2

    .prologue
    .line 3256
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3257
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 3259
    :cond_0
    return-void
.end method

.method private prepareUIByPreviewSize()V
    .locals 3

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-static {}, Lcom/android/camera/Device;->defaultPictrueSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1470
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1471
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1472
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 1474
    iget v1, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v0, v1, :cond_0

    .line 1475
    iput v0, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    .line 1476
    iget v0, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Landroid/app/Activity;I)V

    .line 1479
    :cond_0
    return-void
.end method

.method private previewBecomeInvisible()V
    .locals 1

    .prologue
    .line 3114
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 3115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 3116
    return-void
.end method

.method private previewBecomeVisible()V
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    .line 3120
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3121
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 3122
    return-void
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2471
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "luma-adaptation"

    iget v2, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2475
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_touchafaec_key"

    const v2, 0x7f0d008e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2478
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2479
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2486
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getTouchAfAec()Ljava/lang/String;

    move-result-object v0

    const-string v1, "touch-on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2496
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_pictureformat_key"

    const v2, 0x7f0d005a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2499
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "picture-format"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_jpegquality_key"

    const v3, 0x7f0d0057

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2507
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2508
    if-nez v2, :cond_15

    .line 2509
    const-string v0, "camera"

    const-string v2, "error getPictureSize: size is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_selectablezoneaf_key"

    const v3, 0x7f0d0151

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2525
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    .line 2526
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2527
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSelectableZoneAf(Ljava/lang/String;)V

    .line 2530
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_19

    .line 2531
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_18

    .line 2532
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "AE-Bracket"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2533
    const-string v0, "persist.capture.burst.exposures"

    const-string v2, "0,0,0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2534
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture-burst-exposures = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2536
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-exposures"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    :cond_3
    if-eqz v0, :cond_4

    .line 2539
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2540
    if-eqz v0, :cond_4

    .line 2541
    const-string v2, ""

    .line 2542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2543
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num-snaps-per-shutter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "num-snaps-per-shutter"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2560
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1b

    const-string v0, "denoise-off"

    .line 2563
    :goto_4
    const-string v2, "denoise-on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2564
    const-string v0, "denoise-off"

    .line 2565
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0d015c

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2567
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setDenoise(Ljava/lang/String;)V

    .line 2571
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_redeyereduction_key"

    const v2, 0x7f0d015b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2574
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2575
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    if-eqz v0, :cond_1c

    const-string v0, "enable"

    .line 2577
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedRedeyeReductionModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2579
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRedeyeReductionMode(Ljava/lang/String;)V

    .line 2583
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_iso_key"

    const v2, 0x7f0d00cc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2586
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2588
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 2592
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0086

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2595
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color effect value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2597
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2601
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_saturation_key"

    const v2, 0x7f0d00b4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2604
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2605
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saturation value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    if-ltz v0, :cond_b

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v1

    if-gt v0, v1, :cond_b

    .line 2607
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 2611
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_contrast_key"

    const v2, 0x7f0d00b2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2614
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2615
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contrast value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v1

    if-gt v0, v1, :cond_c

    .line 2617
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 2621
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_sharpness_key"

    const v2, 0x7f0d00b0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2624
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    mul-int/2addr v0, v1

    .line 2626
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sharpness value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 2628
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 2632
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_autoexposure_key"

    const v2, 0x7f0d0136

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2635
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoExposure value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2637
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V

    .line 2641
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_antibanding_key"

    const v2, 0x7f0d00e5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2644
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antiBanding value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2646
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2649
    :cond_f
    invoke-direct {p0}, Lcom/android/camera/Camera;->getZSL()Ljava/lang/String;

    move-result-object v0

    .line 2650
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2652
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 2653
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 2660
    :cond_10
    :goto_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1e

    const-string v0, "off"

    .line 2665
    :goto_7
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFaceDetectionModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2666
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 2667
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-nez v1, :cond_11

    .line 2668
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 2669
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 2671
    :cond_11
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-ne v0, v5, :cond_12

    .line 2672
    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 2673
    iput-boolean v6, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 2676
    :cond_12
    return-void

    .line 2482
    :cond_13
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2483
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    goto/16 :goto_0

    .line 2489
    :cond_14
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2490
    :catch_0
    move-exception v0

    .line 2491
    const-string v0, "camera"

    const-string v1, "Handled NULL pointer Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2512
    :cond_15
    const-string v3, "100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0xc80

    if-ge v2, v3, :cond_1

    .line 2515
    :cond_16
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v2, :cond_17

    .line 2516
    const-string v0, "normal"

    .line 2518
    :cond_17
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_2

    .line 2548
    :cond_18
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "HDR"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2549
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2551
    :cond_19
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1a

    .line 2552
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 2554
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2555
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2560
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_denoise_key"

    const v3, 0x7f0d00cb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 2575
    :cond_1c
    const-string v0, "disable"

    goto/16 :goto_5

    .line 2654
    :cond_1d
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2655
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 2656
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    goto/16 :goto_6

    .line 2660
    :cond_1e
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_facedetection_key"

    const v2, 0x7f0d0156

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3269
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3270
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3271
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3295
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3296
    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 3297
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 3298
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 3301
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_1

    .line 3302
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 3305
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_2

    .line 3306
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 3307
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 3309
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 3310
    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 1

    .prologue
    .line 1873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 1878
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1879
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 1880
    invoke-virtual {p0}, Lcom/android/camera/Camera;->cancelAutoFocus()V

    .line 1882
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1883
    return-void
.end method

.method private returnFromPanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1529
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1534
    :cond_0
    const-string v1, "pref_camera_coloreffect_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1535
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingView;->popup(Z)V

    .line 1536
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1537
    const/16 v2, 0x13

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1538
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1539
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1540
    :cond_1
    const-string v1, "pref_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1541
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->openSettingActivity()V

    goto :goto_0

    .line 1543
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SettingView;->setCurrentMode(Ljava/lang/String;)V

    .line 1544
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    goto :goto_0
.end method

.method private saveStatusBeforeBurst()V
    .locals 1

    .prologue
    .line 1867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 1868
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 1869
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1870
    return-void
.end method

.method private sendDoCaptureMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 3444
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    .line 3445
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3446
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3448
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2906
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2907
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 2910
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2911
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 2914
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2915
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 2918
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2919
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2924
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2925
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2928
    iput v3, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2949
    :cond_0
    :goto_0
    return-void

    .line 2930
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2931
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2932
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 2933
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_2

    .line 2934
    const-string v0, "camera"

    const-string v1, "Restarting Preview..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2936
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 2937
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2939
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2940
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 2941
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 2942
    iput v3, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 2944
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2945
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1245
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 1246
    packed-switch p1, :pswitch_data_0

    .line 1256
    :goto_0
    :pswitch_0
    return-void

    .line 1250
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->enableCameraControls(Z)V

    goto :goto_0

    .line 1253
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->enableCameraControls(Z)V

    goto :goto_0

    .line 1246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2328
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 2329
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 2330
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 2331
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2332
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2334
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 2335
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 3057
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3058
    if-eqz v1, :cond_0

    .line 3059
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 3060
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 3062
    :cond_0
    return-void
.end method

.method private showHDRExit(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1461
    iget-object v3, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1463
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1464
    return-void

    :cond_0
    move v0, v2

    .line 1461
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1462
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1463
    goto :goto_2
.end method

.method private showPostCaptureAlert()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3065
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 3068
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3069
    invoke-direct {p0}, Lcom/android/camera/Camera;->previewBecomeInvisible()V

    .line 3070
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingsStatusBar;->hide()V

    .line 3071
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3072
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3073
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSkinBeautifyButton:Lcom/android/camera/ui/SkinBeautifyButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3074
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3075
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3076
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3077
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3078
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3079
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3080
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f0c0083

    aput v2, v1, v0

    .line 3081
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 3082
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3081
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3085
    :cond_0
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 593
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2338
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2340
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2344
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2346
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 2347
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2349
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-nez v0, :cond_2

    .line 2352
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2353
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2355
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 2358
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    .line 2359
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2361
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_3

    .line 2362
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2363
    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_5

    .line 2364
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 2368
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    .line 2369
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2370
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2373
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 2374
    const-string v0, "camera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2377
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 2378
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 2379
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_4

    .line 2380
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2382
    :cond_4
    return-void

    .line 2366
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2385
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2386
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2388
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2389
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 2391
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2392
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 2393
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3197
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3246
    :goto_0
    return-void

    .line 3199
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    .line 3200
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_1

    .line 3201
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->exitHDRMode(Z)V

    .line 3203
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 3205
    const-string v0, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to switch camera. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 3207
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3208
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 3209
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 3210
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    if-nez v0, :cond_2

    .line 3211
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    .line 3212
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 3215
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 3216
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    .line 3217
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 3218
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3219
    :cond_4
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 3220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3222
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3226
    :goto_1
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 3227
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    .line 3228
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v3

    .line 3229
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 3230
    :goto_2
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 3231
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3232
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 3233
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initializeZoom()V

    .line 3234
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 3235
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3236
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 3237
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3238
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 3239
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 3240
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 3242
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    .line 3245
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 3229
    goto :goto_2

    .line 3223
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 3

    .prologue
    .line 3125
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3136
    :goto_0
    return-void

    .line 3126
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 3127
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 3128
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v0, :cond_3

    .line 3129
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3130
    const-string v1, "SecurePictureNum"

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSecureNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3133
    :cond_3
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 3134
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3135
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private takeAPhotoIfNeeded()V
    .locals 2

    .prologue
    .line 3426
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    if-eqz v0, :cond_0

    .line 3427
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 3429
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCaptureAfterLaunch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    .line 3431
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    if-eqz v0, :cond_1

    .line 3433
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3434
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    .line 3435
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3436
    invoke-direct {p0}, Lcom/android/camera/Camera;->sendDoCaptureMessage()V

    .line 3437
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 3441
    :goto_0
    return-void

    .line 3439
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->autoFocus()V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2404
    if-eqz v0, :cond_0

    .line 2405
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2406
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2413
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2414
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2415
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 2679
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2683
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 2684
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2687
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    .line 2688
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2691
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 2693
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2696
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "pref_camera_front_picturesize_key"

    :goto_0
    invoke-virtual {v2, v0, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2699
    if-nez v0, :cond_14

    .line 2700
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_13

    move v0, v1

    :goto_1
    invoke-static {p0, v2, v3, v0}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IZ)V

    .line 2715
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2718
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 2720
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)D

    move-result-wide v3

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZ)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2722
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2723
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v3

    .line 2724
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v2, v3, :cond_7

    .line 2725
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2728
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2729
    iget v2, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v2, v3, :cond_6

    .line 2730
    iput v3, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    .line 2731
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    if-nez v2, :cond_15

    .line 2732
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2737
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2738
    const-string v2, "camera"

    const-string v3, "Preview Size changed. Restart Preview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2741
    :cond_7
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    .line 2742
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    .line 2743
    const-string v0, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2749
    const-string v0, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSceneMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2751
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2752
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2757
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2758
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2768
    :cond_8
    :goto_4
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2770
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2777
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;Z)I

    move-result v0

    .line 2778
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 2779
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 2780
    if-lt v0, v3, :cond_17

    if-gt v0, v2, :cond_17

    .line 2781
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2787
    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->supportSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2788
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_skin_beautify_key"

    const v3, 0x7f0d0072

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2790
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2791
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "skinBeautification"

    const-string v3, "65537"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    :cond_9
    :goto_6
    const-string v0, "auto"

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2799
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_19

    :cond_a
    const-string v0, "off"

    .line 2802
    :goto_7
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 2803
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2804
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2814
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_whitebalance_key"

    const v3, 0x7f0d0079

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2817
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2819
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2828
    :cond_c
    :goto_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v6}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2829
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1c

    const-string v0, "auto"

    .line 2832
    :goto_a
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2837
    :goto_b
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    if-eqz v0, :cond_d

    .line 2838
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "continuous-picture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2839
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2845
    :cond_d
    :goto_c
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-eqz v0, :cond_e

    .line 2846
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    const-string v2, "auto"

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/MotionFocusManager;->setEnabled(Z)V

    .line 2847
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_e

    .line 2848
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->update()V

    .line 2852
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/Camera;->canSetMirror()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2853
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->setMirror(Landroid/hardware/Camera$Parameters;Z)V

    .line 2856
    :cond_f
    sget-boolean v0, Lcom/android/camera/Device;->IS_MITWO:Z

    if-eqz v0, :cond_10

    .line 2857
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isWatermarkOn(Landroid/content/SharedPreferences;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->setWatermark(Landroid/hardware/Camera$Parameters;Z)V

    .line 2861
    :cond_10
    invoke-direct {p0}, Lcom/android/camera/Camera;->qcomUpdateCameraParametersPreference()V

    .line 2863
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    if-nez v0, :cond_11

    .line 2864
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(II)V

    .line 2866
    :cond_11
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->needScanQRCode(Z)V

    .line 2867
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setTransposePreviewSize(II)V

    .line 2868
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setPreviewFormat(I)V

    .line 2869
    return-void

    .line 2696
    :cond_12
    const-string v0, "pref_camera_picturesize_key"

    goto/16 :goto_0

    .line 2700
    :cond_13
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    goto/16 :goto_1

    .line 2703
    :cond_14
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2704
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 2705
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v3, v4}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2707
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2708
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 2709
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_4

    .line 2710
    const-string v0, "camera"

    const-string v2, "Picture Size changed. Restart Preview"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto/16 :goto_2

    .line 2734
    :cond_15
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    goto/16 :goto_3

    .line 2761
    :cond_16
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2762
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 2763
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_4

    .line 2783
    :cond_17
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid exposure range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2793
    :cond_18
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "skinBeautification"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2799
    :cond_19
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_flashmode_key"

    const v3, 0x7f0d0071

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 2806
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2807
    if-nez v0, :cond_b

    .line 2808
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto/16 :goto_8

    .line 2821
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2822
    if-nez v0, :cond_c

    .line 2823
    const-string v0, "auto"

    goto/16 :goto_9

    .line 2829
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2834
    :cond_1d
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2841
    :cond_1e
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_c
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2422
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2424
    :cond_0
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2885
    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 2886
    move v0, p1

    .line 2887
    .local v0, tmp:I
    move p1, p2

    .line 2888
    move p2, v0

    .line 2891
    .end local v0           #tmp:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 2892
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/AbstractFocusManager;->setRenderSize(II)V

    .line 2894
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    .line 2896
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 2897
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2898
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2900
    :cond_1
    return-void
.end method

.method private updatePreviewGrid(Z)V
    .locals 2

    .prologue
    .line 3381
    invoke-direct {p0}, Lcom/android/camera/Camera;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_1

    .line 3382
    if-eqz p1, :cond_0

    .line 3383
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3387
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3391
    :goto_1
    return-void

    .line 3385
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3389
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1494
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    :goto_0
    return-void

    .line 1499
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1953
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 1955
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 1956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1957
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1959
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 2156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 2157
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2159
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2161
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2166
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2168
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2170
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v11, 0x0

    .line 1261
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v13, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    move v12, v11

    .line 1309
    :cond_1
    :goto_0
    return v12

    .line 1265
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    .line 1267
    iput-object v7, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1270
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1271
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "picture-format"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1273
    .local v9, pictureFormat:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1274
    .local v8, loc:Landroid/location/Location;
    if-eqz v9, :cond_3

    const-string v0, "jpeg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1276
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 1278
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v8}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1282
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_8

    const-string v0, "off"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1285
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_4

    .line 1286
    invoke-direct {p0, v11}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    .line 1288
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_5

    .line 1290
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->noDraw()V

    .line 1292
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/Camera$JpegPictureCallback;

    invoke-direct {v4, p0, v8}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1294
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 1295
    .local v10, size:Landroid/hardware/Camera$Size;
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_9

    const-string v7, "_HHT"

    .line 1296
    .local v7, suffix:Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v10, Landroid/hardware/Camera$Size;->width:I

    iget v5, v10, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIIILjava/lang/String;)V

    .line 1299
    iput-boolean v11, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 1300
    invoke-direct {p0, v13}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1301
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "num-snaps-per-shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mTotalJpegCallbackNum:I

    .line 1302
    iput v11, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    .line 1303
    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    if-eq v0, v13, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_a

    :cond_7
    move v0, v12

    :goto_3
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPlayCaptureAnimationAfter:Z

    .line 1305
    invoke-virtual {p0, v11}, Lcom/android/camera/Camera;->playSound(I)V

    .line 1306
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPlayCaptureAnimationAfter:Z

    if-nez v0, :cond_1

    .line 1307
    invoke-direct {p0}, Lcom/android/camera/Camera;->playCaptureAnimation()V

    goto/16 :goto_0

    .line 1282
    .end local v7           #suffix:Ljava/lang/String;
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1295
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    :cond_9
    const-string v7, "_HDR"

    goto :goto_2

    .restart local v7       #suffix:Ljava/lang/String;
    :cond_a
    move v0, v11

    .line 1303
    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "m"

    .prologue
    .line 656
    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 678
    :goto_0
    return v3

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 661
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 664
    .local v2, y:F
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v3, :cond_1

    .line 665
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 666
    .local v0, popup:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 670
    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 673
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 678
    .end local v0           #popup:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public findQRCode()V
    .locals 0

    .prologue
    .line 3414
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 3415
    return-void
.end method

.method isShutterButtonUsable()Z
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiCapture()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1314
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return v2

    .line 1320
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v3, :cond_2

    .line 1321
    const v3, 0x7f0d0190

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1325
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->isAudioCaptureRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1326
    const v3, 0x7f0d0191

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1331
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v3, p0}, Lcom/android/camera/CameraSettings;->isBurstShootingEnabled(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1335
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1336
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1337
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v3

    const-wide/32 v5, 0x2faf080

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    .line 1338
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1342
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "picture-format"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, pictureFormat:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1344
    .local v0, loc:Landroid/location/Location;
    if-eqz v1, :cond_5

    const-string v3, "jpeg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1346
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1349
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1351
    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v4, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1352
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1354
    iput v2, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    .line 1355
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    .line 1356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1357
    iput-object v8, p0, Lcom/android/camera/Camera;->mBurstShotTitle:Ljava/lang/String;

    .line 1358
    invoke-direct {p0}, Lcom/android/camera/Camera;->saveStatusBeforeBurst()V

    .line 1359
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1360
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1362
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v5, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v6, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v7, Lcom/android/camera/Camera$JpegQuickPictureCallback;

    invoke-direct {v7, p0, v8}, Lcom/android/camera/Camera$JpegQuickPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/Camera$JpegQuickPictureCallback;->reset(Landroid/location/Location;)Lcom/android/camera/Camera$JpegQuickPictureCallback;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1365
    iget-object v3, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v3, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2125
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2126
    packed-switch p1, :pswitch_data_0

    .line 2144
    :goto_0
    return-void

    .line 2128
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2129
    if-eqz p3, :cond_0

    .line 2130
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2131
    if-eqz v1, :cond_0

    .line 2132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2135
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 2136
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2138
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2139
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2126
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 2204
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2206
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2208
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onReviewCancelClicked(Landroid/view/View;)V

    .line 2240
    :cond_0
    :goto_0
    return-void

    .line 2212
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v1, :cond_0

    .line 2216
    :cond_2
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2220
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2221
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_4

    .line 2222
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapsePopupForSimpleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2224
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_3

    .line 2225
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->exitHDR()V

    goto :goto_0

    .line 2231
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v1, :cond_0

    .line 2235
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2239
    :cond_4
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3

    .prologue
    .line 3183
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3194
    :cond_0
    :goto_0
    return-void

    .line 3185
    :cond_1
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 3189
    iput p1, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3191
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3192
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 3193
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1409
    invoke-super {p0, p1}, Lcom/android/camera/ActivityWithAudioCapture;->onCreate(Landroid/os/Bundle;)V

    .line 1410
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1411
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 1412
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 1413
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 1415
    invoke-static {v1}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 1416
    new-instance v0, Lcom/android/camera/MotionFocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/camera/MotionFocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/MotionFocusManager$MotionFocusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    .line 1419
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1420
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1421
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setContentView(I)V

    .line 1422
    invoke-direct {p0}, Lcom/android/camera/Camera;->prepareUIByPreviewSize()V

    .line 1425
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 1426
    invoke-direct {p0}, Lcom/android/camera/Camera;->isScanQRCodeIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    .line 1427
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    invoke-virtual {v0, p0, v2, p0, v3}, Lcom/android/zxing/QRCodeManager;->onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;Z)V

    .line 1429
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(Z)V

    .line 1430
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 1432
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateFlashButton()V

    .line 1434
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 1437
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1439
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 1440
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v2, 0x7f040028

    invoke-direct {v0, p0, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 1441
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 1442
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 1443
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    .line 1444
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    .line 1445
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    .line 1446
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/Camera$5;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1452
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    .line 1453
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    .line 1454
    new-instance v0, Lcom/android/camera/ui/CameraSettingsStatusBar;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    .line 1455
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initSettingButton()V

    .line 1457
    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->enableCameraControls(Z)V

    .line 1458
    return-void

    :cond_0
    move v0, v1

    .line 1429
    goto/16 :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 6
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 3330
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v2, :cond_1

    .line 3348
    :cond_0
    :goto_0
    return-void

    .line 3333
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3337
    .local v0, time:J
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastFaceDetectTime:J

    const-wide/16 v4, 0x3e8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3339
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    .line 3340
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 3342
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3343
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3344
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    .line 3346
    :cond_5
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastFaceDetectTime:J

    goto :goto_0
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2953
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2954
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2955
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v3, "mode_none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v3, "mode_none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2957
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetAllStatus()V

    .line 2959
    :cond_2
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    .line 2960
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2961
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v3, Lcom/android/camera/Camera$6;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    .line 2975
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SettingView;->updateExitView(Landroid/widget/TextView;)V

    .line 2976
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2992
    :cond_4
    :goto_1
    const-string v0, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2993
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 2994
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->launchHDRMode()V

    .line 3001
    :goto_2
    return-void

    .line 2968
    :cond_5
    const-string v0, "pref_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2969
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v3, Lcom/android/camera/Camera$7;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2978
    :cond_6
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2979
    invoke-static {v3}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 2980
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    goto :goto_1

    .line 2981
    :cond_7
    const-string v0, "pref_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2982
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->openSettingActivity()V

    goto :goto_1

    .line 2983
    :cond_8
    const-string v0, "pref_key_camera_referenceline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2984
    const v0, 0x7f0d017f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2985
    const v3, 0x7f0d017e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2986
    invoke-direct {p0, p2, v0, v3}, Lcom/android/camera/Camera;->doSettingSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    iget v0, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updatePreviewGrid(Z)V

    .line 2988
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_1

    :cond_9
    move v0, v2

    .line 2987
    goto :goto_3

    .line 2995
    :cond_a
    const-string v0, "pref_camera_hand_night_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2996
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 2997
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->launchHDRMode()V

    goto :goto_2

    .line 2999
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityWithAudioCapture;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2268
    sparse-switch p1, :sswitch_data_0

    .line 2291
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2270
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2271
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .line 2275
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2276
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto :goto_0

    .line 2281
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->handleVolumeKeyEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2268
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "oldr"
    .parameter "oldb"

    .prologue
    .line 2874
    invoke-super/range {p0 .. p9}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 2875
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2876
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setRenderSize(II)V

    .line 2877
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AbstractFocusManager;->setRenderSize(II)V

    .line 2879
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2881
    :cond_0
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    .line 2882
    return-void
.end method

.method protected onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 1755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1756
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1757
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1758
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1759
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1760
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v0, v2, v4

    aput v1, v2, v6

    .line 1761
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1762
    aget v0, v2, v4

    add-float/2addr v0, v5

    .line 1763
    aget v1, v2, v6

    add-float/2addr v1, v5

    .line 1765
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    .line 1767
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1769
    :cond_0
    return-void
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 3140
    if-eqz p1, :cond_0

    .line 3141
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    .line 3142
    const/4 v0, 0x1

    .line 3144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1966
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1969
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1970
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    .line 1973
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1974
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 1976
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 1977
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 1978
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1979
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1981
    :cond_1
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onPause()V

    .line 1984
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSettingActivityShow:Z

    if-nez v0, :cond_2

    .line 1985
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 1986
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    .line 1990
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 1992
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 1993
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1995
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1996
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 1997
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 1998
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1999
    iput-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2001
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 2004
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    .line 2005
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2007
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_5

    .line 2008
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2009
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_5

    .line 2010
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 2011
    iput-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 2012
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 2013
    iput-object v3, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 2017
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_6

    .line 2018
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2019
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 2024
    :cond_6
    iput-object v3, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 2027
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2028
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2029
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2030
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2031
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2032
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2033
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2034
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2035
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2036
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2037
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 2038
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsRecreateCameraScreenNail:Z

    .line 2039
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2040
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->reset()V

    .line 2042
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 2043
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    if-eqz v0, :cond_8

    .line 2044
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2046
    :cond_8
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3253
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1924
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onResume()V

    .line 1925
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 1930
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1931
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1932
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1935
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getLastThumbnail()V

    .line 1939
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_4

    .line 1940
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1944
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 1946
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1947
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    .line 1948
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    goto :goto_0

    .line 1942
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1636
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-direct {p0}, Lcom/android/camera/Camera;->previewBecomeVisible()V

    .line 1638
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1640
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1646
    :goto_0
    return-void

    .line 1643
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 1644
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1650
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    .line 1651
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .prologue
    .line 3149
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3164
    :goto_0
    return-void

    .line 3150
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 3151
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3153
    invoke-direct {p0}, Lcom/android/camera/Camera;->needRestart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3154
    const-string v0, "camera"

    const-string v1, "Restarting Preview... Camera Mode Changhed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 3156
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 3159
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 3160
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    goto :goto_0

    .line 3162
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 1803
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    .line 1804
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 1805
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1806
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    .line 1808
    :cond_0
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 2
    .parameter "pressed"
    .parameter "fromWhat"

    .prologue
    const/16 v1, 0xf

    .line 1773
    if-nez p1, :cond_3

    .line 1774
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 1775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1778
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPendingCapture:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1779
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPendingCapture:Z

    .line 1781
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isCancled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1782
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    .line 1787
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    :cond_4
    if-eqz p1, :cond_5

    .line 1795
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2}, Lcom/android/camera/FocusManager;->onShutterDown(I)V

    goto :goto_0

    .line 1797
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1855
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1861
    :goto_0
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1862
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1863
    return v4

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 1859
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mPendingCapture:Z

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2175
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2184
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2187
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z

    if-eqz v0, :cond_0

    .line 2191
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2194
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2198
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2199
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3370
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 3371
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1605
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onStop()V

    .line 1606
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1610
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1614
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->hideScreenSettingView()Z

    .line 1615
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 1616
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 1618
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    .line 1621
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3263
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3264
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 3265
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1899
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1900
    if-eqz p1, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    .line 1906
    :goto_0
    return-void

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method protected performShutterClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2296
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2297
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    .line 2298
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    .line 2299
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    .line 2301
    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->isAudioCaptureRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1384
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 1386
    :cond_1
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 842
    .local v0, now:J
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-ne v2, v6, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastAudioCaptureTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    const-wide/16 v4, 0x5dc

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    .local v6, ready:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 846
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastAudioCaptureTime:J

    .line 848
    :cond_1
    return v6

    .line 842
    .end local v6           #ready:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected recreateCameraScreenNail()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1625
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsRecreateCameraScreenNail:Z

    if-nez v1, :cond_0

    .line 1626
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsRecreateCameraScreenNail:Z

    .line 1627
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerMotionFocusManager(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1910
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->registerMotionFocusManager(Z)V

    .line 1911
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-nez v0, :cond_0

    .line 1919
    :goto_0
    return-void

    .line 1914
    :cond_0
    if-eqz p1, :cond_1

    .line 1915
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    goto :goto_0

    .line 1917
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method public requestAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3419
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 3420
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-ne v0, v1, :cond_0

    .line 3421
    invoke-virtual {p0}, Lcom/android/camera/Camera;->autoFocus()V

    .line 3423
    :cond_0
    return-void
.end method

.method protected resetAllStatus()V
    .locals 3

    .prologue
    .line 3009
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->resetAudioCapture()V

    .line 3010
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0086

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3013
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3015
    const-string v1, "pref_camera_coloreffect_key"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3016
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3017
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3018
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 3020
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_1

    .line 3021
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3022
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->exitHDR()V

    .line 3024
    :cond_1
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3403
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendDelayedCaptureMessage(II)V
    .locals 3
    .parameter "period"
    .parameter "times"

    .prologue
    const/16 v2, 0x17

    .line 3451
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3452
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3453
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3455
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected sendFadeoutZoomMsg()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 2305
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2306
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2308
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2309
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1376
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1377
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1379
    :cond_0
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 1583
    const/16 v5, 0x13

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    aput-object v6, v3, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v3, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    aput-object v6, v3, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    aput-object v6, v3, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    aput-object v6, v3, v5

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/16 v5, 0xf

    iget-object v6, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/16 v6, 0x10

    iget-object v5, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    const/16 v6, 0x11

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    const/16 v6, 0x12

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    .line 1588
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 1589
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1588
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1596
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_2

    .line 1597
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1600
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setOrientationIndicator(IZ)V

    .line 1601
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 4

    .prologue
    .line 3395
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3396
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 3397
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isFullScreen(II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->updatePreviewGrid(Z)V

    .line 3398
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 626
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v3, v1, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 629
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 630
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 631
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 633
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v3, v4

    .line 634
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 635
    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 636
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 637
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 638
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 634
    goto :goto_1
.end method

.method public stopFaceDetection(Z)V
    .locals 2
    .parameter "clearFaces"

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 648
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 649
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 650
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method protected supportSkinBeautification()Z
    .locals 1

    .prologue
    .line 3352
    invoke-static {}, Lcom/android/camera/Device;->supportSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected switchModeLayout()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    return-void
.end method

.method protected tryRemoveCountDownMessage()V
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1823
    invoke-virtual {p0}, Lcom/android/camera/ActivityWithAudioCapture;->hideDelayNumber()V

    .line 1824
    return-void
.end method

.method protected updateHDRExitText()V
    .locals 2

    .prologue
    .line 3004
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d016e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3006
    return-void

    .line 3004
    :cond_0
    const v0, 0x7f0d016d

    goto :goto_0
.end method
