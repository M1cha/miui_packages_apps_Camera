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

.field public static mHiston:Z

.field public static statsdata:[I


# instance fields
.field private mAeLockSupported:Z

.field private mAudioIndicator:Landroid/widget/ImageView;

.field private final mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBurstJpegCallbackNum:I

.field private mBurstRawCallbackNum:I

.field private mCameraDisplayOrientation:I

.field mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

.field private mCameraState:I

.field private mCameraSwitching:Z

.field public mCaptureStartTime:J

.field private mColorEffectIndicator:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mExposureIndicator:Landroid/widget/ImageView;

.field public mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/widget/ImageView;

.field private mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field private mFoundFace:Z

.field private mHandNight:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPendingSwitching:Z

.field private mISOIndicator:Landroid/widget/ImageView;

.field private mImageNamer:Lcom/android/camera/Camera$ImageNamer;

.field private mImageSaver:Lcom/android/camera/Camera$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCaptureAfterLaunch:Z

.field private mIsImageCaptureIntent:Z

.field private mIsScanQRCodeIntent:Z

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

.field public mPictureDisplayedToJpegCallbackTime:J

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

.field private mReceivedRawCallbackNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReferenceLineIndicator:Landroid/widget/ImageView;

.field private mReferenceline:Landroid/widget/ImageView;

.field private mRestartPreview:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneIndicator:Landroid/widget/ImageView;

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

.field private mTouchAfAecFlag:Z

.field private mUpdateSet:I

.field private mWhiteBalanceIndicator:Landroid/widget/ImageView;

.field private mbrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/Camera;->mBrightnessVisible:Z

    .line 109
    const/16 v0, 0x101

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Camera;->statsdata:[I

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Camera;->mHiston:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/camera/ActivityWithAudioCapture;-><init>()V

    .line 100
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 102
    iput v0, p0, Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I

    .line 103
    iput v2, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    .line 104
    iput v0, p0, Lcom/android/camera/Camera;->mBurstRawCallbackNum:I

    .line 105
    iput v2, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    .line 106
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 160
    iput v2, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    .line 166
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 190
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastFaceDetectTime:J

    .line 221
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 257
    iput v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 258
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 263
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 264
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 266
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 268
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 270
    new-instance v0, Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    .line 294
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 300
    iput v2, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    .line 303
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 304
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    .line 307
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 312
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    .line 313
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    .line 684
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1049
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3563
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->onSettingsBack()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->takeAPhotoIfNeeded()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->multiCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    return v0
.end method

.method static synthetic access$2404(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2808(Lcom/android/camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->sendDoCaptureMessage()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    return v0
.end method

.method static synthetic access$3804(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mBurstRawCallbackNum:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->handleMultiSnapDone()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 599
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 606
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 2250
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

    .line 2422
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2423
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2424
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2425
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2426
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2427
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2428
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 2429
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2430
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 2431
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2432
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2433
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 2435
    :cond_0
    return-void
.end method

.method private doAttach()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 1761
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1844
    :goto_0
    return-void

    .line 1764
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1765
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1766
    iget-object v2, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    invoke-static {v2}, Lcom/android/camera/Storage;->flipJpeg([B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1767
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1768
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1770
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1775
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1777
    iget-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1782
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 1785
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1786
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1787
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1789
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1790
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1794
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1791
    :catch_0
    move-exception v1

    .line 1794
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1797
    :cond_2
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 1798
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1799
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1800
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1802
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 1809
    :cond_3
    :try_start_3
    const-string v2, "crop-temp"

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1810
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1811
    const-string v3, "crop-temp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 1812
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1813
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1814
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    .line 1824
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1827
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1828
    iget-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1829
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 1832
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1837
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1840
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1842
    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1815
    :catch_1
    move-exception v1

    .line 1816
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1817
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1824
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1819
    :catch_2
    move-exception v1

    .line 1820
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1821
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1824
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1834
    :cond_5
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1771
    :catch_3
    move-exception v1

    goto/16 :goto_1

    .line 1824
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 1794
    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2
.end method

.method private doCapture()V
    .locals 4

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1919
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

    .line 1940
    :goto_0
    return-void

    .line 1924
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 1926
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

    .line 1928
    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1929
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

    .line 1933
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    .line 1934
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1937
    :cond_3
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 1939
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
    .line 3131
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, p1, p3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3132
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3134
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3135
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3139
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3140
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v2}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 3141
    return-void

    .line 3137
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 1488
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 3
    .parameter

    .prologue
    .line 1506
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1507
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1520
    :goto_0
    return v0

    .line 1515
    :cond_0
    const/4 v0, 0x0

    .line 1516
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "camera_mode_change"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1517
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1519
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2540
    invoke-static {}, Lcom/android/camera/Device;->defaultZSL()Ljava/lang/String;

    move-result-object v0

    .line 2541
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_iso_key"

    const v3, 0x7f0d00c5

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2543
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mNeedFlash:Z

    if-nez v2, :cond_0

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-nez v1, :cond_1

    .line 2545
    const-string v0, "off"

    .line 2547
    :cond_1
    return-object v0
.end method

.method private handleMultiSnapDone()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 994
    invoke-direct {p0}, Lcom/android/camera/Camera;->restoreStatusAfterBurst()V

    .line 995
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 996
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 3191
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_2

    .line 3193
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RestrictRotateLayout;->setVisibility(I)V

    .line 3194
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 3195
    new-array v1, v2, [I

    const v2, 0x7f0c0088

    aput v2, v1, v0

    .line 3196
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 3197
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3199
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3200
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3201
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3203
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3204
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3205
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3206
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3211
    :cond_2
    :goto_1
    return-void

    .line 3207
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_2

    .line 3208
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_1
.end method

.method private initOnScreenIndicator()V
    .locals 1

    .prologue
    .line 703
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mGpsIndicator:Landroid/widget/ImageView;

    .line 704
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/ImageView;

    .line 705
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    .line 706
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    .line 708
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    .line 709
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mISOIndicator:Landroid/widget/ImageView;

    .line 710
    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mColorEffectIndicator:Landroid/widget/ImageView;

    .line 711
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReferenceLineIndicator:Landroid/widget/ImageView;

    .line 712
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mAudioIndicator:Landroid/widget/ImageView;

    .line 713
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityWithAudioCapture;->mCaptrueDelayView:Lcom/android/camera/ui/RotateImageView;

    .line 714
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 3

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 540
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ModeManager;->enableSettingView(Z)V

    .line 544
    invoke-virtual {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 545
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 546
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 548
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    invoke-virtual {v0, p0, v1, p0, v2}, Lcom/android/zxing/QRCodeManager;->initialize(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;Z)V

    .line 549
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3451
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3452
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

    .line 3455
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    .line 3456
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    .line 3457
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    .line 3458
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    .line 3460
    return-void

    :cond_0
    move v0, v2

    .line 3452
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3455
    goto :goto_1
.end method

.method private initializeControlByIntent()V
    .locals 4

    .prologue
    const v1, 0x7f0c0089

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2152
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 2156
    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 2157
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 2158
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2163
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2166
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 2182
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    if-eqz v0, :cond_1

    .line 2184
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2185
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2186
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2188
    :cond_1
    return-void

    .line 2168
    :cond_2
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 2169
    const v0, 0x7f0c008a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    .line 2170
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    .line 2171
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 2172
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2173
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2174
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2175
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    .line 2177
    new-instance v0, Lcom/android/camera/ModeChangeManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ModeChangeManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    .line 2178
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModeChangeManager;->setOnModeChangeListener(Lcom/android/camera/ModeChangeManager$OnModeChangeListener;)V

    .line 2179
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 569
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 570
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 572
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 575
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 576
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 577
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable(Landroid/content/SharedPreferences;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setLongClickable(Z)V

    .line 580
    new-instance v0, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 581
    new-instance v0, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v0}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 582
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 585
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 2192
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v1

    .line 2193
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_0

    .line 2194
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2196
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v4, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2203
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2204
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2205
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2206
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2207
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 2208
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 2209
    return-void

    .line 2193
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 1

    .prologue
    .line 2213
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2214
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    .line 2216
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2217
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    .line 2218
    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControl;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 2219
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RestrictRotateLayout;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    .line 2220
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 2221
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2222
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2223
    return-void
.end method

.method private initializeSecondTime()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 615
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 616
    new-instance v0, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 617
    new-instance v0, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v0}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 618
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 619
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 621
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable(Landroid/content/SharedPreferences;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setLongClickable(Z)V

    .line 625
    return-void
.end method

.method private initializeSettingScreen()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1621
    .line 1622
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_4

    .line 1623
    new-instance v0, Lcom/android/camera/CameraModeManager;

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-direct {v0, p0, v3, p0, p0}, Lcom/android/camera/CameraModeManager;-><init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    move v0, v1

    .line 1626
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v4

    .line 1627
    if-nez v4, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->showIndicators(Z)V

    .line 1628
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-boolean v7, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v3, v5, v4, v6, v1}, Lcom/android/camera/ModeManager;->initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V

    .line 1630
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 1631
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 1632
    const/high16 v1, 0x7f06

    invoke-virtual {p0, p0, v1}, Lcom/android/camera/Camera;->initializeCameraControls(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V

    .line 1633
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    invoke-direct {p0}, Lcom/android/camera/Camera;->returnFromPanorama()V

    .line 1637
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->updateFlashButtonVisibility()V

    .line 1638
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/FlashButton;->setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V

    .line 1639
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1640
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetAudioCapture()V

    .line 1642
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 1643
    return-void

    :cond_2
    move v3, v2

    .line 1627
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1628
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1993
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1995
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1996
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1997
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1998
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1999
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 2001
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3144
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

    .line 3550
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3551
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3552
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3553
    if-eqz v2, :cond_0

    const-string v0, "captureAfterLaunch"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3554
    const-string v0, "captureAfterLaunch"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3555
    const-string v3, "captureAfterLaunch"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3556
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3560
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 3150
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3151
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPreviewVisible()Z
    .locals 1

    .prologue
    .line 2351
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_1

    .line 2355
    :cond_0
    const/4 v0, 0x0

    .line 2357
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReferenceLineEnabled()Z
    .locals 3

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_key_camera_referenceline"

    const v2, 0x7f0d0168

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3472
    const v1, 0x7f0d0169

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isScanQRCodeIntent()Z
    .locals 2

    .prologue
    .line 3155
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3156
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
    .line 2347
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

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
    .line 1901
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

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
    .parameter
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

    .line 2506
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
    .line 555
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 559
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 3369
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3370
    return-void
.end method

.method private launchMultiSnap()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1968
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1989
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_2

    .line 1973
    const v0, 0x7f0d017a

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1977
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isAudioCaptureRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1978
    const v0, 0x7f0d017b

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1982
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->isBurstShootingEnabled(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1987
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1988
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private multiCapture()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1447
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1484
    :goto_0
    return v0

    .line 1451
    :cond_1
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1452
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1453
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v3

    const-wide/32 v5, 0x2faf080

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    .line 1454
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1455
    goto :goto_0

    .line 1458
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->saveStatusBeforeBurst()V

    .line 1460
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "picture-format"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1462
    if-eqz v0, :cond_3

    const-string v3, "jpeg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1464
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1467
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1469
    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v4, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1470
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1472
    iput v2, p0, Lcom/android/camera/Camera;->mMultiSnappedCount:I

    .line 1473
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    .line 1474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1475
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "num-snaps-per-shutter"

    const-string v4, "20"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1478
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1479
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1481
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v4, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v5, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v6, Lcom/android/camera/Camera$JpegQuickPictureCallback;

    invoke-direct {v6, p0, v1}, Lcom/android/camera/Camera$JpegQuickPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v6, v0}, Lcom/android/camera/Camera$JpegQuickPictureCallback;->reset(Landroid/location/Location;)Lcom/android/camera/Camera$JpegQuickPictureCallback;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1484
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private needRestart()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2552
    invoke-direct {p0}, Lcom/android/camera/Camera;->getZSL()Ljava/lang/String;

    move-result-object v0

    .line 2553
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 2556
    const-string v0, "camera"

    const-string v1, "Switching to ZSL Camera Mode. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2558
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2567
    :goto_0
    return v0

    .line 2560
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

    .line 2563
    const-string v0, "camera"

    const-string v1, "Switching to Normal Camera Mode. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2565
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto :goto_0

    .line 2567
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

    .line 3268
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 3269
    .local v0, cm:Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3270
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3271
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    .line 3272
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 3280
    :cond_0
    :goto_0
    return-void

    .line 3273
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3274
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3275
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    goto :goto_0

    .line 3276
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3277
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3278
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    .line 1601
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

    .line 1604
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 1606
    :cond_0
    return-void
.end method

.method private prepareUIByPreviewSize()V
    .locals 3

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-static {}, Lcom/android/camera/Device;->defaultPictrueSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1588
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1589
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

    .line 1591
    iget v1, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v0, v1, :cond_0

    .line 1592
    iput v0, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    .line 1593
    iget v0, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Landroid/app/Activity;I)V

    .line 1596
    :cond_0
    return-void
.end method

.method private previewBecomeInvisible()V
    .locals 1

    .prologue
    .line 3214
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 3215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 3216
    return-void
.end method

.method private previewBecomeVisible()V
    .locals 1

    .prologue
    .line 3219
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 3220
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3221
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 3222
    return-void
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2573
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "luma-adaptation"

    iget v2, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2577
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_touchafaec_key"

    const v2, 0x7f0d0087

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2580
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2581
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2588
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

    .line 2589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2598
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_pictureformat_key"

    const v2, 0x7f0d0058

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2601
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "picture-format"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_jpegquality_key"

    const v3, 0x7f0d0055

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2609
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2610
    if-nez v2, :cond_15

    .line 2611
    const-string v0, "camera"

    const-string v2, "error getPictureSize: size is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_selectablezoneaf_key"

    const v3, 0x7f0d013b

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    .line 2628
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2629
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSelectableZoneAf(Ljava/lang/String;)V

    .line 2641
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_19

    .line 2642
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_18

    .line 2643
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "AE-Bracket"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2644
    const-string v0, "persist.capture.burst.exposures"

    const-string v2, "0,0,0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2645
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

    .line 2646
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2647
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-exposures"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    :cond_3
    if-eqz v0, :cond_4

    .line 2650
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2651
    if-eqz v0, :cond_4

    .line 2652
    const-string v2, ""

    .line 2653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2654
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

    .line 2655
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "num-snaps-per-shutter"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2669
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1a

    const-string v0, "denoise-off"

    .line 2672
    :goto_4
    const-string v2, "denoise-on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2673
    const-string v0, "denoise-off"

    .line 2674
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0d0146

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2676
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setDenoise(Ljava/lang/String;)V

    .line 2680
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_redeyereduction_key"

    const v2, 0x7f0d0145

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2683
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2684
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    if-eqz v0, :cond_1b

    const-string v0, "enable"

    .line 2686
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedRedeyeReductionModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2688
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRedeyeReductionMode(Ljava/lang/String;)V

    .line 2692
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_iso_key"

    const v2, 0x7f0d00c5

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2695
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2697
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 2701
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d007f

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2704
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

    .line 2705
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2706
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2710
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_saturation_key"

    const v2, 0x7f0d00ad

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2713
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2714
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

    .line 2715
    if-ltz v0, :cond_b

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v1

    if-gt v0, v1, :cond_b

    .line 2716
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 2720
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_contrast_key"

    const v2, 0x7f0d00ab

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2723
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2724
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

    .line 2725
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v1

    if-gt v0, v1, :cond_c

    .line 2726
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 2730
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_sharpness_key"

    const v2, 0x7f0d00a9

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2733
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    mul-int/2addr v0, v1

    .line 2735
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

    .line 2736
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 2737
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 2741
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_autoexposure_key"

    const v2, 0x7f0d0120

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2744
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

    .line 2745
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2746
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V

    .line 2750
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_antibanding_key"

    const v2, 0x7f0d00de

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2753
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

    .line 2754
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2755
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2758
    :cond_f
    invoke-direct {p0}, Lcom/android/camera/Camera;->getZSL()Ljava/lang/String;

    move-result-object v0

    .line 2759
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2761
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 2762
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 2769
    :cond_10
    :goto_6
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1d

    const-string v0, "off"

    .line 2774
    :goto_7
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFaceDetectionModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2775
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 2776
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-nez v1, :cond_11

    .line 2777
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 2778
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 2780
    :cond_11
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-ne v0, v5, :cond_12

    .line 2781
    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 2782
    iput-boolean v6, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 2785
    :cond_12
    return-void

    .line 2584
    :cond_13
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2585
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    goto/16 :goto_0

    .line 2591
    :cond_14
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2592
    :catch_0
    move-exception v0

    .line 2593
    const-string v0, "camera"

    const-string v1, "Handled NULL pointer Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2614
    :cond_15
    const-string v3, "100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0xc80

    if-ge v2, v3, :cond_1

    .line 2617
    :cond_16
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v2, :cond_17

    .line 2618
    const-string v0, "normal"

    .line 2620
    :cond_17
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_2

    .line 2659
    :cond_18
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "HDR"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2660
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2663
    :cond_19
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2664
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2669
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_denoise_key"

    const v3, 0x7f0d00c4

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 2684
    :cond_1b
    const-string v0, "disable"

    goto/16 :goto_5

    .line 2763
    :cond_1c
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2764
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 2765
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    goto/16 :goto_6

    .line 2769
    :cond_1d
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_facedetection_key"

    const v2, 0x7f0d0140

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3364
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3365
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3366
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3390
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3391
    iput v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 3392
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 3393
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 3396
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_1

    .line 3397
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 3400
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_2

    .line 3401
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 3402
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 3404
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 3405
    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 1

    .prologue
    .line 1955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 1960
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1961
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 1962
    invoke-virtual {p0}, Lcom/android/camera/Camera;->cancelAutoFocus()V

    .line 1964
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1965
    return-void
.end method

.method private returnFromPanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1646
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1648
    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1664
    :goto_0
    return-void

    .line 1651
    :cond_0
    const-string v1, "pref_camera_coloreffect_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1652
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingView;->popup(Z)V

    .line 1653
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1654
    const/16 v2, 0x13

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1655
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1656
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1657
    :cond_1
    const-string v1, "pref_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1658
    invoke-virtual {p0}, Lcom/android/camera/Camera;->openSettingActivity()V

    goto :goto_0

    .line 1660
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SettingView;->setCurrentMode(Ljava/lang/String;)V

    .line 1661
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 1662
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    goto :goto_0
.end method

.method private saveStatusBeforeBurst()V
    .locals 1

    .prologue
    .line 1949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 1950
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1951
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1952
    return-void
.end method

.method private sendDoCaptureMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 3536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mDoCaptureRetry:I

    .line 3537
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3538
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3540
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 3004
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 3005
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 3008
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 3009
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 3012
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 3013
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 3016
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3017
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 3022
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 3023
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 3026
    iput v2, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 3047
    :cond_0
    :goto_0
    return-void

    .line 3028
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3029
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 3030
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 3031
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_2

    .line 3032
    const-string v0, "camera"

    const-string v1, "Restarting Preview..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 3034
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3035
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3037
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 3038
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 3039
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 3040
    iput v2, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 3042
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3043
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1378
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 1379
    packed-switch p1, :pswitch_data_0

    .line 1389
    :goto_0
    :pswitch_0
    return-void

    .line 1383
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    goto :goto_0

    .line 1386
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    goto :goto_0

    .line 1379
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
    .line 2438
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 2439
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 2440
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 2441
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2444
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 2445
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 3161
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3162
    if-eqz v1, :cond_0

    .line 3163
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 3164
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 3166
    :cond_0
    return-void
.end method

.method private showHDRExit(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1578
    iget-object v3, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1579
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1580
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1581
    return-void

    :cond_0
    move v0, v2

    .line 1578
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1579
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1580
    goto :goto_2
.end method

.method private showPostCaptureAlert()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3169
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 3172
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3173
    invoke-direct {p0}, Lcom/android/camera/Camera;->previewBecomeInvisible()V

    .line 3174
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RestrictRotateLayout;->setVisibility(I)V

    .line 3175
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3176
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3177
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3178
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3179
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3180
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3181
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3182
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3183
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f0c0088

    aput v2, v1, v0

    .line 3184
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 3185
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 3184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3188
    :cond_0
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 595
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2448
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2450
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2454
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2456
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 2457
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2459
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-nez v0, :cond_2

    .line 2462
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2463
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2465
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 2468
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    .line 2469
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2471
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_3

    .line 2472
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2473
    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_5

    .line 2474
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2478
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 2479
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2480
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2483
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 2484
    const-string v0, "camera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2487
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 2488
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 2489
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_4

    .line 2490
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2492
    :cond_4
    return-void

    .line 2476
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2495
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2496
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2498
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2499
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 2501
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2502
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 2503
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3298
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3347
    :goto_0
    return-void

    .line 3300
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    .line 3301
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_1

    .line 3302
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->exitHDRMode(Z)V

    .line 3304
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 3306
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

    .line 3307
    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 3308
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3309
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 3310
    invoke-virtual {p0}, Lcom/android/camera/Camera;->updateFlashButtonVisibility()V

    .line 3311
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    if-nez v0, :cond_2

    .line 3312
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHasSwitchedToFront:Z

    .line 3313
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 3316
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 3317
    invoke-virtual {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    .line 3318
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 3319
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3320
    :cond_4
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 3321
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 3323
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3327
    :goto_1
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 3328
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    .line 3329
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v0, v3

    .line 3330
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 3331
    :goto_2
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 3332
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3333
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 3334
    invoke-virtual {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 3335
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSettingScreen()V

    .line 3336
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3337
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 3338
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3339
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 3340
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 3341
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 3343
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    .line 3346
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 3330
    goto :goto_2

    .line 3324
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 3
    .parameter

    .prologue
    .line 3225
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3236
    :goto_0
    return-void

    .line 3226
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 3227
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 3228
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowWhenLocked:Z

    if-eqz v0, :cond_3

    .line 3229
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3230
    const-string v1, "SecurePictureNum"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSecureNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3233
    :cond_3
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 3234
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3235
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method private takeAPhotoIfNeeded()V
    .locals 2

    .prologue
    .line 3520
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    if-eqz v0, :cond_0

    .line 3521
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 3523
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCaptureAfterLaunch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    .line 3525
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsCaptureAfterLaunch:Z

    if-eqz v0, :cond_1

    .line 3527
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3528
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    .line 3529
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3530
    invoke-direct {p0}, Lcom/android/camera/Camera;->sendDoCaptureMessage()V

    .line 3531
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 3533
    :cond_1
    return-void
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2514
    if-eqz v0, :cond_0

    .line 2515
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2516
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2519
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2523
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2524
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2525
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 2788
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2789
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2792
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 2793
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2796
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    .line 2797
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2800
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 2802
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2805
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "pref_camera_front_picturesize_key"

    :goto_0
    invoke-virtual {v2, v0, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2808
    if-nez v0, :cond_12

    .line 2809
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v0, :cond_11

    move v0, v1

    :goto_1
    invoke-static {p0, v2, v3, v0}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IZ)V

    .line 2824
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2827
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 2829
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)D

    move-result-wide v3

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZ)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2831
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2832
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v3

    .line 2833
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v2, v3, :cond_7

    .line 2834
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2837
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2838
    iget v2, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-eq v2, v3, :cond_6

    .line 2839
    iput v3, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    .line 2840
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    if-nez v2, :cond_13

    .line 2841
    iget-object v2, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2846
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2847
    const-string v2, "camera"

    const-string v3, "Preview Size changed. Restart Preview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2850
    :cond_7
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    .line 2851
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    .line 2852
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2863
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2865
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2866
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2871
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2872
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2882
    :cond_8
    :goto_4
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2884
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2891
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;Z)I

    move-result v0

    .line 2892
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 2893
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 2894
    if-lt v0, v2, :cond_15

    if-gt v0, v1, :cond_15

    .line 2895
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2901
    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->supportSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2902
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_skin_beautify_key"

    const v2, 0x7f0d0070

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2904
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2905
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "skinBeautification"

    const-string v2, "65537"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    :cond_9
    :goto_6
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2913
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_17

    :cond_a
    const-string v0, "off"

    .line 2916
    :goto_7
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2917
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2918
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2928
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0d0077

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2931
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2933
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2942
    :cond_c
    :goto_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v6}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2943
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2948
    :goto_a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    if-eqz v0, :cond_d

    .line 2949
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2950
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2955
    :cond_d
    :goto_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_e

    .line 2956
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/MotionFocusManager;->setAutoFocusEnabled(Z)V

    .line 2960
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/Camera;->qcomUpdateCameraParametersPreference()V

    .line 2962
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraSwitching:Z

    if-nez v0, :cond_f

    .line 2963
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(II)V

    .line 2965
    :cond_f
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setTransposePreviewSize(II)V

    .line 2966
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setPreviewFormat(I)V

    .line 2967
    return-void

    .line 2805
    :cond_10
    const-string v0, "pref_camera_picturesize_key"

    goto/16 :goto_0

    .line 2809
    :cond_11
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    goto/16 :goto_1

    .line 2812
    :cond_12
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2813
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 2814
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v3, v4}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2816
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2817
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 2818
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_4

    .line 2819
    const-string v0, "camera"

    const-string v2, "Picture Size changed. Restart Preview"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto/16 :goto_2

    .line 2843
    :cond_13
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mHasPendingSwitching:Z

    goto/16 :goto_3

    .line 2875
    :cond_14
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2876
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 2877
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_4

    .line 2897
    :cond_15
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2907
    :cond_16
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "skinBeautification"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2913
    :cond_17
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    const v2, 0x7f0d006f

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 2920
    :cond_18
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2921
    if-nez v0, :cond_b

    .line 2922
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    goto/16 :goto_8

    .line 2935
    :cond_19
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2936
    if-nez v0, :cond_c

    .line 2937
    const-string v0, "auto"

    goto/16 :goto_9

    .line 2945
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2952
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_b
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2534
    :cond_0
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2983
    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 2984
    move v0, p1

    .line 2985
    .local v0, tmp:I
    move p1, p2

    .line 2986
    move p2, v0

    .line 2989
    .end local v0           #tmp:I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2990
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 2992
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 2994
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 2995
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2996
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2998
    :cond_1
    return-void
.end method

.method private updateColorEffectIndicator(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/camera/Camera;->mColorEffectIndicator:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/UIHelper;->updateColorEffectIndicator(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 763
    :cond_0
    if-nez p1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFocusOnScreenIndicator()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 809
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 829
    :goto_0
    return-void

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, value:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 821
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 822
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 823
    :cond_2
    const-string v1, "macro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 824
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 825
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 827
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateISOOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/camera/Camera;->mISOIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/android/camera/Camera;->mISOIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mISOIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 729
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->updateColorEffectIndicator(Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getISOValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->updateISOOnScreenIndicator(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateReferenceLineIndicator()V

    .line 735
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 736
    .local v0, isSceneOn:Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateSceneOnScreenIndicator(Z)V

    .line 741
    if-nez v0, :cond_3

    .line 742
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;Z)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->updateExposureOnScreenIndicator(I)V

    .line 743
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusOnScreenIndicator()V

    goto :goto_0

    .line 735
    .end local v0           #isSceneOn:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 746
    .restart local v0       #isSceneOn:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 747
    iget-object v1, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 749
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 750
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 753
    :cond_5
    iget-object v1, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePreviewGrid(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3476
    invoke-direct {p0}, Lcom/android/camera/Camera;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3477
    if-eqz p1, :cond_0

    .line 3478
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3482
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3486
    :goto_1
    return-void

    .line 3480
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3484
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceline:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateReferenceLineIndicator()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceLineIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceLineIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mReferenceLineIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1611
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
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

    .line 1618
    :goto_0
    return-void

    .line 1616
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSceneOnScreenIndicator(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 779
    :goto_0
    return-void

    .line 774
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 2060
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 2062
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->join()V

    .line 2063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 2064
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2066
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 2259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 2260
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->reset()V

    .line 2262
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2263
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2265
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2270
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2271
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2272
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2274
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 1394
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v8

    .line 1443
    :goto_0
    return v0

    .line 1398
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1399
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    .line 1400
    iput-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1403
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    iget v2, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {v0, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1404
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1405
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "picture-format"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    if-eqz v0, :cond_8

    const-string v2, "jpeg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1409
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1411
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1415
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v2, :cond_5

    const-string v2, "off"

    :goto_2
    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1416
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1418
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v2, :cond_2

    .line 1419
    invoke-direct {p0, v8}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    .line 1421
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 1423
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->noDraw()V

    .line 1425
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v4, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v5, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v6, Lcom/android/camera/Camera$JpegPictureCallback;

    invoke-direct {v6, p0, v0}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1427
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1428
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_6

    const-string v7, "_nightshot"

    .line 1429
    :goto_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIIILjava/lang/String;)V

    .line 1432
    iput-boolean v8, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 1433
    invoke-direct {p0, v9}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1434
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "num-snaps-per-shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I

    .line 1435
    iget v0, p0, Lcom/android/camera/Camera;->mBurstJpegCallbackNum:I

    iput v0, p0, Lcom/android/camera/Camera;->mBurstRawCallbackNum:I

    .line 1436
    iput v8, p0, Lcom/android/camera/Camera;->mReceivedJpegCallbackNum:I

    .line 1437
    iput v8, p0, Lcom/android/camera/Camera;->mReceivedRawCallbackNum:I

    .line 1439
    invoke-virtual {p0, v8}, Lcom/android/camera/Camera;->playSound(I)V

    .line 1440
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    .line 1441
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 1443
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1415
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v2}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1428
    :cond_6
    const-string v7, "_HDR"

    goto :goto_3

    :cond_7
    move-object v7, v1

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "m"

    .prologue
    .line 659
    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 681
    :goto_0
    return v3

    .line 662
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 664
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 667
    .local v2, y:F
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v3, :cond_1

    .line 668
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 669
    .local v0, popup:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 673
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

    .line 676
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 681
    .end local v0           #popup:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityWithAudioCapture;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public findQRCode()V
    .locals 0

    .prologue
    .line 3508
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hideScreenSettingView()Z

    .line 3509
    return-void
.end method

.method isShutterButtonUsable()Z
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2228
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityWithAudioCapture;->onActivityResult(IILandroid/content/Intent;)V

    .line 2229
    packed-switch p1, :pswitch_data_0

    .line 2247
    :goto_0
    return-void

    .line 2231
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2232
    if-eqz p3, :cond_0

    .line 2233
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2234
    if-eqz v1, :cond_0

    .line 2235
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2238
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 2239
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2241
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2242
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2229
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

    .line 2308
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2310
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2312
    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onReviewCancelClicked(Landroid/view/View;)V

    .line 2344
    :cond_0
    :goto_0
    return-void

    .line 2316
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v1, :cond_0

    .line 2320
    :cond_2
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2324
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2325
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_4

    .line 2326
    invoke-virtual {p0}, Lcom/android/camera/Camera;->collapsePopupForSimpleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2328
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_3

    .line 2329
    invoke-virtual {p0}, Lcom/android/camera/Camera;->exitHDR()V

    goto :goto_0

    .line 2335
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v1, :cond_0

    .line 2339
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hideScreenSettingView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2343
    :cond_4
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .parameter

    .prologue
    .line 3284
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3295
    :cond_0
    :goto_0
    return-void

    .line 3286
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

    .line 3289
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 3290
    iput p1, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 3292
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3293
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hideScreenSettingView()Z

    .line 3294
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1526
    invoke-super {p0, p1}, Lcom/android/camera/ActivityWithAudioCapture;->onCreate(Landroid/os/Bundle;)V

    .line 1527
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1528
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 1529
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    .line 1530
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 1532
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1533
    invoke-static {v2}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 1534
    new-instance v0, Lcom/android/camera/MotionFocusManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/android/camera/MotionFocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/MotionFocusManager$MotionFocusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    .line 1537
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1538
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 1539
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 1540
    invoke-direct {p0}, Lcom/android/camera/Camera;->prepareUIByPreviewSize()V

    .line 1543
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 1544
    invoke-direct {p0}, Lcom/android/camera/Camera;->isScanQRCodeIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    .line 1545
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->createCameraScreenNail(Z)V

    .line 1546
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setMode(Z)V

    .line 1547
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 1549
    invoke-virtual {p0}, Lcom/android/camera/Camera;->updateFlashButtonVisibility()V

    .line 1551
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 1554
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1556
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 1557
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v1, 0x7f040028

    invoke-direct {v0, p0, v1}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 1558
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 1559
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 1560
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    .line 1561
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    .line 1562
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    .line 1563
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/Camera$5;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1569
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    .line 1570
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    .line 1571
    invoke-direct {p0}, Lcom/android/camera/Camera;->initOnScreenIndicator()V

    .line 1572
    invoke-virtual {p0}, Lcom/android/camera/Camera;->initSettingButton()V

    .line 1574
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 1575
    return-void

    :cond_0
    move v0, v2

    .line 1545
    goto/16 :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 6
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 3425
    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v2, :cond_1

    .line 3443
    :cond_0
    :goto_0
    return-void

    .line 3428
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3432
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

    .line 3434
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFoundFace:Z

    .line 3435
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 3437
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3438
    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3439
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    .line 3441
    :cond_5
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastFaceDetectTime:J

    goto :goto_0
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3051
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 3052
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v2}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3053
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v3, "mode_none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v3, "mode_none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3055
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetAllStatus()V

    .line 3057
    :cond_2
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mCurrentSimpleMode:Ljava/lang/String;

    .line 3058
    const-string v2, "pref_camera_panoramamode_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3059
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v2, Lcom/android/camera/Camera$6;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    .line 3081
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingView;->updateExitView(Landroid/widget/TextView;)V

    .line 3082
    iget v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 3105
    :goto_1
    return-void

    .line 3066
    :cond_3
    const-string v2, "pref_settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3067
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v2, Lcom/android/camera/Camera$7;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3072
    :cond_4
    const-string v2, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3073
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 3074
    invoke-virtual {p0}, Lcom/android/camera/Camera;->switchHDR()V

    goto :goto_0

    .line 3075
    :cond_5
    const-string v2, "pref_camera_hand_night_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3076
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 3077
    invoke-virtual {p0}, Lcom/android/camera/Camera;->switchHDR()V

    goto :goto_0

    .line 3079
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityWithAudioCapture;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 3084
    :cond_7
    const-string v2, "pref_camera_panoramamode_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3085
    invoke-static {v3}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 3086
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    goto :goto_1

    .line 3087
    :cond_8
    const-string v2, "pref_settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3088
    invoke-virtual {p0}, Lcom/android/camera/Camera;->openSettingActivity()V

    goto :goto_1

    .line 3089
    :cond_9
    const-string v2, "pref_key_camera_referenceline"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3090
    const v2, 0x7f0d0169

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3091
    const v3, 0x7f0d0168

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3092
    invoke-direct {p0, p2, v2, v3}, Lcom/android/camera/Camera;->doSettingSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    iget v2, p0, Lcom/android/camera/ActivityBase;->mUIStyle:I

    if-ne v2, v0, :cond_a

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updatePreviewGrid(Z)V

    .line 3094
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateReferenceLineIndicator()V

    goto :goto_1

    :cond_a
    move v0, v1

    .line 3093
    goto :goto_2

    .line 3095
    :cond_b
    const-string v2, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3096
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 3097
    invoke-virtual {p0}, Lcom/android/camera/Camera;->launchHDRMode()V

    goto/16 :goto_1

    .line 3098
    :cond_c
    const-string v1, "pref_camera_hand_night_key"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3099
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    .line 3100
    invoke-virtual {p0}, Lcom/android/camera/Camera;->launchHDRMode()V

    goto/16 :goto_1

    .line 3102
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityWithAudioCapture;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2362
    sparse-switch p1, :sswitch_data_0

    .line 2401
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityWithAudioCapture;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2364
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2365
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .line 2369
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2370
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto :goto_0

    .line 2376
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2380
    invoke-virtual {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2381
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    .line 2382
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2383
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 2387
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 2391
    :cond_2
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2394
    const/16 v0, 0x18

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->handleVolumeKeyEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2385
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 2394
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2362
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
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
    .line 2972
    invoke-super/range {p0 .. p9}, Lcom/android/camera/ActivityWithAudioCapture;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 2973
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 2974
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 2975
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 2977
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2979
    :cond_0
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    .line 2980
    return-void
.end method

.method protected onLongPress(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 1848
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1850
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1851
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1852
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1853
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v0, v2, v4

    aput v1, v2, v6

    .line 1854
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1855
    aget v0, v2, v4

    add-float/2addr v0, v5

    .line 1856
    aget v1, v2, v6

    add-float/2addr v1, v5

    .line 1858
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->onSingleTapUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1859
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    .line 1860
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/PreviewFrameLayout;->performHapticFeedback(I)Z

    .line 1862
    :cond_0
    return-void
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 3240
    if-eqz p1, :cond_0

    .line 3241
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    .line 3242
    const/4 v0, 0x1

    .line 3244
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

    .line 2073
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 2076
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mProgressBarCapture:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2077
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->showHDRExit(Z)V

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2081
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2083
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 2084
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    .line 2085
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2086
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2088
    :cond_1
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onPause()V

    .line 2091
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSettingActivityShow:Z

    if-nez v0, :cond_2

    .line 2092
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 2093
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    .line 2097
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 2099
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 2100
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2102
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 2103
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 2104
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 2105
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 2106
    iput-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2108
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 2111
    invoke-virtual {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    .line 2112
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2114
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_5

    .line 2115
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 2116
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_5

    .line 2117
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 2118
    iput-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 2119
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 2120
    iput-object v3, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 2124
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_6

    .line 2125
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2126
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 2128
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->updateExposureOnScreenIndicator(I)V

    .line 2132
    iput-object v3, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 2135
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2136
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2137
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2138
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2139
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2140
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2141
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2142
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2143
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 2145
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2148
    :cond_7
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->quit()V

    .line 2149
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3353
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3354
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 2030
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onResume()V

    .line 2031
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 2036
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 2037
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 2038
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 2041
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLastThumbnail()V

    .line 2045
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_4

    .line 2046
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2050
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 2053
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 2054
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    .line 2055
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    goto :goto_0

    .line 2048
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1742
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    invoke-direct {p0}, Lcom/android/camera/Camera;->previewBecomeVisible()V

    .line 1744
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1746
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1752
    :goto_0
    return-void

    .line 1749
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1750
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1756
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    .line 1757
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 2

    .prologue
    .line 3249
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3265
    :goto_0
    return-void

    .line 3250
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 3251
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3254
    invoke-direct {p0}, Lcom/android/camera/Camera;->needRestart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3255
    const-string v0, "camera"

    const-string v1, "Restarting Preview... Camera Mode Changhed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 3257
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 3258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 3259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 3260
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 3261
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    goto :goto_0

    .line 3263
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 1893
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    .line 1894
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hideScreenSettingView()Z

    .line 1895
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1896
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    .line 1898
    :cond_0
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 2
    .parameter "pressed"
    .parameter "fromWhat"

    .prologue
    const/16 v1, 0xf

    .line 1866
    if-nez p1, :cond_2

    .line 1867
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 1868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mMutliSnapStopRequest:Z

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1870
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1871
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1872
    iget-object v0, p0, Lcom/android/camera/Camera;->mTextMulitSnapNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1873
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    .line 1877
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1882
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    :cond_3
    if-eqz p1, :cond_4

    .line 1885
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2}, Lcom/android/camera/FocusManager;->onShutterDown(I)V

    goto :goto_0

    .line 1887
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 1944
    invoke-direct {p0}, Lcom/android/camera/Camera;->launchMultiSnap()V

    .line 1945
    const/4 v0, 0x1

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2279
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

    .line 2304
    :cond_0
    :goto_0
    return-void

    .line 2286
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 2288
    invoke-virtual {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2291
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z

    if-eqz v0, :cond_0

    .line 2295
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2298
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->isSelectingCapturedImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2302
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2303
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 3466
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1722
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onStop()V

    .line 1723
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1727
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1731
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hideScreenSettingView()Z

    .line 1732
    invoke-virtual {p0}, Lcom/android/camera/Camera;->tryRemoveCountDownMessage()V

    .line 1733
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    .line 1734
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 1735
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 1737
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3358
    invoke-super {p0}, Lcom/android/camera/ActivityWithAudioCapture;->onUserInteraction()V

    .line 3359
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 3360
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 2005
    invoke-super {p0, p1}, Lcom/android/camera/ActivityWithAudioCapture;->onWindowFocusChanged(Z)V

    .line 2006
    if-eqz p1, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    .line 2012
    :goto_0
    return-void

    .line 2010
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method protected performShutterClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2406
    invoke-direct {p0}, Lcom/android/camera/Camera;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    .line 2408
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCapture()V

    .line 2409
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/Camera;->onShutterButtonFocus(ZI)V

    .line 2411
    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 1500
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isAudioCaptureRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1501
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 1503
    :cond_1
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 984
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

    .line 987
    .local v6, ready:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 988
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastAudioCaptureTime:J

    .line 990
    :cond_1
    return v6

    .line 984
    .end local v6           #ready:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected registerMotionFocusManager(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 2016
    invoke-super {p0, p1}, Lcom/android/camera/ActivityWithAudioCapture;->registerMotionFocusManager(Z)V

    .line 2017
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-nez v0, :cond_0

    .line 2025
    :goto_0
    return-void

    .line 2020
    :cond_0
    if-eqz p1, :cond_1

    .line 2021
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    goto :goto_0

    .line 2023
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method public requestAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3513
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->stopFaceDetection(Z)V

    .line 3514
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-ne v0, v1, :cond_0

    .line 3515
    invoke-virtual {p0}, Lcom/android/camera/Camera;->autoFocus()V

    .line 3517
    :cond_0
    return-void
.end method

.method protected resetAllStatus()V
    .locals 3

    .prologue
    .line 3113
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetAudioCapture()V

    .line 3114
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d007f

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3117
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3118
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3119
    const-string v1, "pref_camera_coloreffect_key"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3121
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 3124
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

    if-eqz v0, :cond_1

    .line 3125
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 3126
    invoke-virtual {p0}, Lcom/android/camera/Camera;->exitHDR()V

    .line 3128
    :cond_1
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3498
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

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mHDRStatus:Z

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

    .line 3543
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3544
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3545
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3547
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected sendFadeoutZoomMsg()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 2415
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2416
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2419
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1493
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1494
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1496
    :cond_0
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 1700
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

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

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

    .line 1705
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

    .line 1706
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1705
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1713
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_2

    .line 1714
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1717
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityWithAudioCapture;->setOrientationIndicator(IZ)V

    .line 1718
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 4

    .prologue
    .line 3490
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3491
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 3492
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isFullScreen(II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->updatePreviewGrid(Z)V

    .line 3493
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 629
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v3, v1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 632
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 633
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 634
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 635
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 636
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ActivityBase;->mCameraId:I

    aget-object v0, v3, v4

    .line 637
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 638
    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 639
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 640
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 641
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 637
    goto :goto_1
.end method

.method public stopFaceDetection(Z)V
    .locals 2
    .parameter "clearFaces"

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 651
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 652
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 653
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
    .line 3447
    const/4 v0, 0x1

    return v0
.end method

.method protected switchModeLayout()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    return-void
.end method

.method protected tryRemoveCountDownMessage()V
    .locals 2

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1913
    invoke-virtual {p0}, Lcom/android/camera/Camera;->hideDelayNumber()V

    .line 1914
    return-void
.end method

.method protected updateAudioOnScreenIndicator(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/camera/Camera;->mAudioIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 726
    :goto_0
    return-void

    .line 721
    :cond_0
    if-eqz p1, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/camera/Camera;->mAudioIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mAudioIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateHDRExitText()V
    .locals 2

    .prologue
    .line 3108
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHDRExitButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHandNight:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0158

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3110
    return-void

    .line 3108
    :cond_0
    const v0, 0x7f0d0157

    goto :goto_0
.end method
