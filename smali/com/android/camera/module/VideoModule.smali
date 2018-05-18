.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/BaseModule;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$1;,
        Lcom/android/camera/module/VideoModule$2;,
        Lcom/android/camera/module/VideoModule$3;,
        Lcom/android/camera/module/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/module/VideoModule$LoadThumbnailTask;,
        Lcom/android/camera/module/VideoModule$MainHandler;,
        Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/module/VideoModule$SavingTask;,
        Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    }
.end annotation


# static fields
.field private static HOLD_WHEN_SAVING_VIDEO:Z

.field private static final TAG:Ljava/lang/String;

.field public static final VIDEO_MIN_SINGLE_FILE_SIZE:J

.field protected static final VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSmartShutterButtonEnable:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseFileName:Ljava/lang/String;

.field private mCaptureTimeLapse:Z

.field private mContinuousFocusSupported:Z

.field private volatile mCurrentFileNumber:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mFaceDetectionStarted:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManagerSimple;

.field private mFocusStartTime:J

.field protected final mHandler:Landroid/os/Handler;

.field protected mHfr:Ljava/lang/String;

.field private mInStartingFocusRecording:Z

.field private mIsFromStop:Z

.field private mIsTouchFocused:Z

.field protected mIsVideoCaptureIntent:Z

.field private mLastBackPressedTime:J

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxVideoDurationInMs:I

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field private volatile mMediaRecorderRecording:Z

.field private mMediaRecorderRecordingPaused:Z

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOrientationCompensationAtRecordStart:I

.field private mOriginalMusicVolume:I

.field private mPauseClickTime:J

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private volatile mPreviewReady:Z

.field private mPreviewing:Z

.field protected mProfile:Landroid/media/CamcorderProfile;

.field protected mQuality:I

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mRecorderBusy:Z

.field private mRecordingStartTime:J

.field private mRecordingTime:Ljava/lang/String;

.field private mRecordingTimeCountsDown:Z

.field protected mRestartPreview:Z

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mSavingResult:Z

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSnapshotInProgress:Z

.field private mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

.field private mSwitchingCamera:Z

.field private final mTaskLock:Ljava/lang/Object;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field private mTouchFocusStartingTime:J

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFocusMode:Ljava/lang/String;

.field protected mVideoHeight:I

.field private mVideoRecordedDuration:J

.field private mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

.field protected mVideoWidth:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/VideoModule;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/camera/module/VideoModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/module/VideoModule;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/camera/module/VideoModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/camera/module/VideoModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/module/VideoModule;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/module/VideoModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/module/VideoModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->isSmartShutterButtonEnable:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/module/VideoModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$StereoSwitchThread;)Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSelectingCapturedVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/module/VideoModule;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->setVideoFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showAlert()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/camera/module/VideoModule;[BLandroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateSlide()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restoreMusicSound()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0x3200000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    new-instance v0, Lcom/android/camera/module/VideoModule$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/module/VideoModule$MainHandler;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->isSmartShutterButtonEnable:Z

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mFaceDetectionStarted:Z

    new-instance v0, Lcom/android/camera/module/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$1;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/module/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$2;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    new-instance v0, Lcom/android/camera/module/VideoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$3;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private addVideoToMediaStore(Landroid/content/ContentValues;)Z
    .locals 9

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v4, :cond_2

    const-string/jumbo v4, "_size"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "duration"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string/jumbo v4, "_data"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-lez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "_%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "_data"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "title"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "_display_name"

    const-string/jumbo v5, "_display_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.hardware.action.NEW_VIDEO"

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1

    :cond_3
    :try_start_1
    const-string/jumbo v4, "_data"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to add video to media store"

    invoke-static {v4, v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    sget-object v4, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v4
.end method

.method private animateHold()V
    .locals 2

    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    :cond_0
    return-void
.end method

.method private animateSlide()V
    .locals 1

    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private autoFocus(IIIIII)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoFocus focusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_9

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->focusPoint()V

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(IIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    if-eq p6, v0, :cond_6

    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(IIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewPosition(III)V

    :cond_7
    const/4 v0, 0x3

    if-ne p6, v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_9
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v0, "auto"

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private checkCallingState()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    const v1, 0x7f0f0207

    const v2, 0x7f0f0208

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private cleanupEmptyFile()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, ".mp4"

    return-object v0

    :cond_0
    const-string/jumbo v0, ".3gp"

    return-object v0
.end method

.method public static convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "video/mp4"

    return-object v0

    :cond_0
    const-string/jumbo v0, "video/3gpp"

    return-object v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-gtz v2, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0f00f0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1, v1}, Lcom/android/camera/Util;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteVideoFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 14

    const-wide/16 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-nez v8, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    sget-object v8, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "new video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 12

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "slow"

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    :cond_0
    :goto_0
    sget-object v6, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "previewSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/camera/Device;->IS_X5:Z

    if-eqz v6, :cond_4

    :cond_3
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    iget v8, p0, Lcom/android/camera/module/VideoModule;->mModuleIndex:I

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    sget-boolean v6, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-nez v6, :cond_7

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    :goto_2
    invoke-static {v8, v9, v5, v6, v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v6, v6

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    goto :goto_2
.end method

.method private getDuration(Ljava/lang/String;)J
    .locals 6

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v4

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "RuntimeException when getDuration()"

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_0
    const-wide/16 v4, 0x0

    return-wide v4

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "IllegalArgumentException when getDuration()"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v3
.end method

.method private getHFRQuality(II)I
    .locals 4

    sget-object v1, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/VideoModule;->isProfileExist(ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot find hfrQuality in VIDEO_QUALITY_TO_HIGHSPEED, quality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hfrQuality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getSpeedRecordVideoLength(JD)J
    .locals 7

    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    long-to-double v2, p1

    div-double v0, v2, p3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hideAlert()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReviewViews()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "auto"

    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    const-string/jumbo v0, "continuous-video"

    sget-object v1, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mContinuousFocusSupported:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 8

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    new-instance v4, Lcom/android/camera/FocusManagerSimple;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v5

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewHeight()I

    move-result v6

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v7

    if-ne v3, v7, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v4, v5, v6, v3, v1}, Lcom/android/camera/FocusManagerSimple;-><init>(IIZI)V

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    sget v3, Lcom/android/camera/Util;->sWindowHeight:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private initializeMiscControls()V
    .locals 0

    return-void
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->mapTapCoordinate(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0
.end method

.method private initializeRecorder()V
    .locals 24

    sget-object v19, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "initializeRecorder"

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    const-wide/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    if-eqz v11, :cond_2

    const-string/jumbo v19, "output"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    if-eqz v18, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string/jumbo v20, "rw"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v19, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    :cond_2
    new-instance v19, Landroid/media/MediaRecorder;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    const-string/jumbo v19, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/CamcorderProfile;->duration:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->setProfileToRecorder()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v19

    const-string/jumbo v20, "pref_audio_focus_key"

    const v21, 0x7f0f01dd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    sget-object v19, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "set AudioParam camcorder_mode="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "camcorder_mode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v14

    sget-boolean v19, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v19, :cond_4

    const-string/jumbo v19, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const v20, 0x3d0900

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v20, v22, v20

    invoke-virtual/range {v19 .. v21}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->configMediaRecorder(Landroid/media/MediaRecorder;)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_3
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v20

    const-wide/32 v22, 0x3200000

    sub-long v12, v20, v22

    const-wide v20, 0xdac00000L

    cmp-long v19, v20, v12

    if-gez v19, :cond_7

    sget-object v19, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "need reduce, now maxFileSize="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v12, 0xdac00000L

    :cond_7
    sget-wide v20, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v19, v12, v20

    if-gez v19, :cond_8

    sget-wide v12, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    :cond_8
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-lez v19, :cond_9

    cmp-long v19, v16, v12

    if-gez v19, :cond_9

    move-wide/from16 v12, v16

    :cond_9
    :try_start_1
    sget-object v19, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "maxFileSize="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    const-string/jumbo v19, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    :goto_5
    const/4 v15, 0x0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    rem-int/lit16 v15, v0, 0x168

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    return-void

    :catch_0
    move-exception v6

    sget-object v19, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    goto/16 :goto_1

    :cond_b
    const v19, 0x7f0f01e3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/camera/module/VideoModule;->generateVideoFilename(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    goto/16 :goto_5

    :cond_e
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    rem-int/lit16 v15, v0, 0x168

    goto/16 :goto_6

    :cond_f
    iget v15, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto/16 :goto_6

    :catch_1
    move-exception v5

    sget-object v19, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "prepare failed for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    :catch_2
    move-exception v7

    goto/16 :goto_4
.end method

.method private insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isMovieSolidOn()Z
    .locals 2

    const-string/jumbo v0, "slow"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->disableVideoStabilizationInSpeedSlowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    return v0
.end method

.method private isSelectingCapturedVideo()Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const v1, 0x7f0a00ea

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xff3

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isVideoProcessing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->isAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18

    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onPreviewStart()V
    .locals 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/16 v5, 0xe

    const/4 v4, 0x1

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreviewStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/module/VideoModule;->onShutterButtonFocus(ZI)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-virtual {v0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->shouldCountDownFromAction()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extras.EXTRAS_CAPTURE_ACTION_DONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/VideoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$4;-><init>(Lcom/android/camera/module/VideoModule;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private onRestartVideoRecording()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$SavingTask;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    :cond_0
    return-void
.end method

.method private onSettingsBack()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restorePreferences()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStopVideoRecording(Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoOnPause()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->currentIsMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    goto :goto_0
.end method

.method private pauseVideoRecording()V
    .locals 6

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pauseVideoRecording() mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not pause media recorder. "

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iput v3, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    return-void

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    if-eq v3, v1, :cond_1

    iput v3, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    if-ne v1, v3, :cond_2

    const v1, 0x3fe38e39

    :goto_0
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    return-void

    :cond_2
    const v1, 0x3faaaaab

    goto :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 6

    const v5, 0x7f0f01dd

    const/4 v4, 0x0

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releasing media recorder."

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;->onReleaseRecording()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cleanupEmptyFile()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore AudioParam camcorder_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_2
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    return-void
.end method

.method private releaseResources()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    goto :goto_0
.end method

.method private restoreMusicSound()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOriginalMusicVolume:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_0
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mOriginalMusicVolume:I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private restorePreferences()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method private setProfileToRecorder()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_0
    return-void
.end method

.method private setVideoFocusMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateVideoFocusMode()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    neg-int v4, v2

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v5

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v1, v4, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showReviewViews(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private showFirstUseHintIfNeeded()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x13

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private silenceSounds()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mOriginalMusicVolume:I

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOriginalMusicVolume:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private startFaceDetection()V
    .locals 2

    invoke-static {}, Lcom/android/camera/Device;->supportFaceDetectionInVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFaceDetectionStarted:Z

    :cond_5
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->silenceSounds()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->prepareRecording()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restoreMusicSound()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording process done"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.camera.action.start_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "listen call state"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOn()V

    invoke-virtual {p0, v6, v2}, Lcom/android/camera/module/VideoModule;->trackGeneralInfo(IZ)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackVideoRecording()V

    return-void
.end method

.method private stopFaceDetection()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/Device;->supportFaceDetectionInVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mFaceDetectionStarted:Z

    :cond_3
    return-void
.end method

.method private stopVideoOnPause()V
    .locals 4

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoOnPause>>>isRecording =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->waitForRecorder()V

    :goto_1
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoOnPause<<< isSaving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " savingTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    goto :goto_1
.end method

.method private stopVideoRecordingAsync()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateHold()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$SavingTask;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    return-void
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v20

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v20

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v17

    const/16 v3, 0xc

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    return-void
.end method

.method private switchCamera()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchCamera(I)V

    return-void
.end method

.method private trackPauseVideoRecording()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "\u524d\u540e\u6444"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u524d\u6444"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "capture"

    const-string/jumbo v2, "video_pause_recording"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackVideoRecording()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "\u524d\u540e\u6444"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "\u524d\u6444"

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "\u6a21\u5f0f"

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "\u753b\u8d28"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraStatUtil;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "\u95ea\u5149\u706f"

    const-string/jumbo v2, "torch"

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "torch"

    :goto_1
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "capture"

    const-string/jumbo v3, "video_taken"

    invoke-static {v2, v3, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-lez v2, :cond_0

    const-string/jumbo v2, "fast"

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "\u95f4\u9694"

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-static {v3}, Lcom/android/camera/CameraStatUtil;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "capture"

    const-string/jumbo v3, "video_time_lapse_interval"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method private trackVideoSnapshot()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "\u524d\u540e\u6444"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u524d\u6444"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "capture"

    const-string/jumbo v2, "video_snapshot"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "\u540e\u6444"

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateMotionFocusManager()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const-string/jumbo v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    return-void
.end method

.method private updateMutexModePreference()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    :cond_0
    return-void
.end method

.method private updateParametersAfterRecording()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "videoStabilization=off"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    :cond_2
    return-void
.end method

.method private updateRecordingTime()V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    move-wide/from16 v20, v0

    sub-long v8, v12, v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    const v20, 0xea60

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v8, v20

    if-ltz v17, :cond_7

    const/4 v6, 0x1

    :goto_0
    move-wide v10, v8

    if-eqz v6, :cond_2

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v22, v10

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0x3e7

    add-long v10, v20, v22

    :cond_2
    const-wide/16 v14, 0x3e8

    const-string/jumbo v17, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v11, v0}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v6, :cond_5

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    :cond_5
    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    rem-long v20, v8, v14

    sub-long v4, v14, v20

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_9
    const-wide/16 v18, 0x0

    const-string/jumbo v17, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-long v14, v0

    :cond_a
    :goto_2
    const-wide/16 v20, 0x0

    cmpl-double v17, v18, v20

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/camera/module/VideoModule;->getSpeedRecordVideoLength(JD)J

    move-result-wide v20

    const-string/jumbo v17, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move-wide/from16 v0, v20

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-wide/from16 v0, v18

    double-to-long v14, v0

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v17, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isShowHFRDuration()Z

    move-result v17

    if-eqz v17, :cond_a

    sget-object v17, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string/jumbo v17, "off"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_a

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v18, v22, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    div-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v14, v0

    goto/16 :goto_2

    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v11, v0}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1
.end method

.method private updateStereoSettings(Z)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_camera_video_flashmode_key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_0
.end method

.method private updateVideoFocusMode()V
    .locals 4

    sget-object v1, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "continuous-video"

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    :goto_0
    sget-object v1, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMotionFocusManager()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    goto :goto_0
.end method

.method private waitStereoSwitchThread()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->cancel()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 4

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method public capture()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    return v3

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ImageSaver is full, wait for a moment!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    const v2, 0x7f0f0272

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Video snapshot start"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackVideoSnapshot()V

    return v5

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_0
.end method

.method public checkDisplayOrientation()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerSimple;->setDisplayOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public closeCamera()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    :cond_0
    return-void
.end method

.method protected configMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 8

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    const-string/jumbo v5, "slow"

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v5, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting capture-rate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v6, v1

    invoke-virtual {p1, v6, v7}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_0
    const/16 v4, 0x1e

    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting target fps = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {}, Lcom/android/camera/Device;->supportHFRBitRateScale()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v5, v5, 0x1e

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v0, v5, v6

    :cond_1
    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Profile bitrate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Scaled Video bitrate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :cond_2
    return-void

    :catch_0
    move-exception v3

    sget-object v5, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid hfr("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected enterMutexMode()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const-string/jumbo v2, "pref_camera_coloreffect_key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected exitMutexMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 1

    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 2

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getNormalVideoFrameRate()I
    .locals 2

    const-string/jumbo v0, "slow"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "pref_video_speed_fast_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pref_video_speed_slow_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "pref_audio_focus_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public isCameraEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public isDoingAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isProfileExist(ILjava/lang/Integer;)Z
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    return v0
.end method

.method protected isShowHFRDuration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isVideoRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyError()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->notifyError()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 8

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoFocusTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms focused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " waitForRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v3}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isNeedMute()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManagerSimple;->onAutoFocus(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    return-void

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 4

    const/4 v1, 0x2

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAutoFocusMoving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isCreated()Z

    move-result v2

    if-nez v2, :cond_0

    return v6

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    return v7

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    if-eqz v2, :cond_2

    return v6

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0f0156

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return v7

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v2

    if-eqz v2, :cond_5

    return v7

    :cond_5
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v2

    return v2
.end method

.method protected onCameraOpened()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeMiscControls()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeFocusManager()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->prepareUIByPreviewSize()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start to copy texture."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    :goto_0
    iput p1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCameraSwitched()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    const-string/jumbo v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFaces(I[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    :cond_0
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reached max size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onRestartVideoRecording()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0f00f2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyDown keyCode->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " paused ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isIgnoreTouchEvent()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isDoing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isDoingAction()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " previewing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", preview ready "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->restoreBottom()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)V

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x18

    if-eq p1, v2, :cond_6

    const/16 v2, 0x58

    if-ne p1, v2, :cond_5

    move v0, v1

    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_6
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_0
    return v3

    :sswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onObjectStable()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->canAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v5, v0

    const/4 v1, 0x5

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIIII)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopFaceDetection()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->waitStereoSwitchThread()V

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xa2

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SensorStateManager;->reset()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restoreMusicSound()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v1

    :goto_1
    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    goto/16 :goto_0
.end method

.method public onPauseButtonClick()V
    .locals 9

    const/4 v8, 0x0

    sget-object v4, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mVideoPauseResumeListener.onClick() mMediaRecorderRecordingPaused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mRecorderBusy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mMediaRecorderRecording = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v4, :cond_3

    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v4}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->resumeMediaRecorder(Landroid/media/MediaRecorder;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v8, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    sget-object v4, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mVideoPauseResumeListener.onClick() end. mRecorderBusy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Could not start media recorder. "

    invoke-static {v4, v5, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->pauseVideoRecording()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackPauseVideoRecording()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    goto :goto_1
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewLayoutChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setRenderArea(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewSizeChanged width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 2

    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->animateSwitchCamera()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mOpenCameraFail:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisabled:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onSettingsBack()V

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 1
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->deleteCurrentVideo()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->hideAlert()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method public onReviewDoneClicked()V
    .locals 1
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public onShutterButtonClick(I)V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick mSwitchingCamera="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mMediaRecorderRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mInStartingFocusRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->isSmartShutterButtonEnable:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isIgnoreTouchEvent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateParametersAfterRecording()V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->checkCallingState()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "storage issue, ignore the start request"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->setTriggerMode(I)V

    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->canRecord()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait for autoFocus"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    goto :goto_0
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 7

    const/4 v3, 0x7

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewHeight()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v5

    const/4 v1, 0x5

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterButtonLongClickCancel()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 9

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->isInTapableRect(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "auto"

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->setVideoFocusMode(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v7, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v8}, Lcom/android/camera/module/VideoModule;->mapTapCoordinate(Ljava/lang/Object;)V

    iget v2, v8, Landroid/graphics/Point;->x:I

    iget v3, v8, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIIII)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPause()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    :cond_1
    return-void
.end method

.method public onStopRecording()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    :cond_0
    const-string/jumbo v0, "continuous-video"

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->setVideoFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "from_where"

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->trackGotoSettings()V

    return-void
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V

    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->restoreBottom()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)V

    :cond_1
    return-void
.end method

.method public playVideo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPlayVideoActivity()V

    return-void
.end method

.method protected prepareRecording()V
    .locals 0

    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resetMutexModeManually()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopFaceDetection()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start to switch camera."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    return-void
.end method

.method public readVideoPreferences()V
    .locals 12

    const/16 v11, 0x3e8

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v5

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v5, 0x1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getVideoSpeed()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    iput v8, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    iput-boolean v8, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    const-string/jumbo v7, "fast"

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v7

    const-string/jumbo v9, "pref_video_time_lapse_frame_interval_key"

    const v10, 0x7f0f002e

    invoke-virtual {p0, v10}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    iget-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v7, :cond_2

    add-int/lit16 v5, v5, 0x3e8

    if-lt v5, v11, :cond_1

    const/16 v7, 0x3fa

    if-le v5, v7, :cond_2

    :cond_1
    add-int/lit16 v5, v5, -0x3e8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/config/DataItemConfig;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    const-string/jumbo v7, "pref_video_speed_key"

    const-string/jumbo v9, "normal"

    invoke-interface {v1, v7, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    iput-boolean v8, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    const-string/jumbo v7, "normal"

    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v7

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    const v10, 0x7f0f0159

    invoke-virtual {v7, v10, v9}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    :cond_2
    rem-int/lit16 v7, v5, 0x3e8

    iput v7, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->quality:I

    rem-int/lit16 v7, v7, 0x3e8

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-eq v7, v9, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    :cond_4
    iget v7, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0, v7, v5}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    sget-object v7, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readVideoPreferences: frameRate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", codec="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getDesiredPreviewSize()V

    const-string/jumbo v7, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit16 v7, v6, 0x3e8

    iput v7, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    :goto_3
    iget v7, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    if-ge v7, v11, :cond_5

    iput v11, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    :cond_5
    return-void

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    move v7, v8

    goto/16 :goto_1

    :cond_8
    iput v5, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const-string/jumbo v7, "slow"

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-direct {p0, v7, v5}, Lcom/android/camera/module/VideoModule;->getHFRQuality(II)I

    move-result v5

    goto/16 :goto_2

    :cond_9
    iget v7, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    const v7, 0x75300

    iput v7, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_3

    :cond_a
    iput v8, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_3
.end method

.method public record()V
    .locals 3

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "record"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    return-void
.end method

.method public registerProtocol()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xa4

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void
.end method

.method protected removeHandlerMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setCameraParameters()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    :cond_1
    return-void
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .locals 0

    return-void
.end method

.method public setNeedRestartPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    return-void
.end method

.method public startObjectTracking()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    const-string/jumbo v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "auto"

    sget-object v1, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMotionFocusManager()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startObjectTracking rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    :cond_3
    return-void
.end method

.method public startPreview()V
    .locals 4

    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->checkDisplayOrientation()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startFaceDetection()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected startRecordVideo()Z
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeRecorder()V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Fail to initialize media recorder"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;->onStartRecording()V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isMovieSolidOn()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->isSmartShutterButtonEnable:Z

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not start media recorder."

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    const v3, 0x7f0f0207

    const v4, 0x7f0f0209

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    return v6
.end method

.method public stopObjectTracking(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onStopObjectTrack()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isAdjustingObjectView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onStopObjectTrack()V

    :cond_4
    return-void
.end method

.method public stopPreview()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewReady:Z

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    :cond_2
    return-void
.end method

.method protected subStopRecording()Z
    .locals 6

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xc0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;->onStopRecording()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->isSmartShutterButtonEnable:Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopVideoRecording: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v3, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stop fail"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v3

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v3

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public updateFlashPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resetMutexModeManually()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected updateLoadUI(Z)V
    .locals 0

    return-void
.end method

.method protected updateStatusBar(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 24

    sget-object v20, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "previewSize: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v20, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "videoSize: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "video-size"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v20

    const-string/jumbo v21, "pref_camera_video_flashmode_key"

    const v22, 0x7f0f0067

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->updateVideoFocusMode()V

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v5

    sget-object v20, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "colorEffect: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v19, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getZoomValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isMovieSolidOn()Z

    move-result v20

    if-eqz v20, :cond_12

    sget-boolean v20, Lcom/android/camera/Device;->IS_X9:Z

    if-eqz v20, :cond_5

    const-string/jumbo v20, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    :cond_5
    sget-boolean v20, Lcom/android/camera/Device;->IS_C8:Z

    if-eqz v20, :cond_6

    const-string/jumbo v20, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_12

    sget-object v20, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "videoStabilization: on"

    invoke-static/range {v20 .. v21}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    :goto_1
    const v10, 0x7fffffff

    const v9, 0x7fffffff

    invoke-static {}, Lcom/android/camera/Device;->isVideoSnapshotSizeLimited()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v10, v9}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    if-nez v12, :cond_13

    sget-object v20, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "get null pictureSize"

    invoke-static/range {v20 .. v21}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    sget-object v21, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "snapshotSize: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_14

    const-string/jumbo v20, "null"

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v20

    if-eqz v20, :cond_a

    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x15

    move/from16 v0, v21

    move/from16 v1, v20

    if-gt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v15

    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    invoke-static {v15, v0, v1}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    if-eqz v11, :cond_9

    invoke-virtual {v12, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    :cond_9
    sget-object v21, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "thumbnailSize: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_15

    const-string/jumbo v20, "null"

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    move/from16 v20, v0

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    sget-object v20, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/hardware/CameraHardwareProxy;->clearExposureTime(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v20

    if-eqz v20, :cond_b

    sget-object v20, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/hardware/CameraHardwareProxy;->disableBokeh(Landroid/hardware/Camera$Parameters;)V

    :cond_b
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v20

    if-eqz v20, :cond_17

    const-string/jumbo v20, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    const-string/jumbo v4, "off"

    :goto_6
    sget-object v20, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "antiBanding: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v16

    sget-object v20, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "uiStyle: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/data/data/runing/DataItemRunning;->setUiStyle(I)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/camera/module/VideoModule;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v20

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->onPreviewSizeChanged(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "xiaomi-time-watermark"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_e

    sget-object v20, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "off"

    invoke-virtual/range {v20 .. v22}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "xiaomi-dualcam-watermark"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_f

    sget-object v20, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "off"

    invoke-virtual/range {v20 .. v22}, Lcom/android/camera/hardware/CameraHardwareProxy;->setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "watermark"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "watermark"

    const-string/jumbo v22, "off"

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    sget-object v20, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string/jumbo v21, "auto"

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    sget-object v20, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "videoStabilization: off"

    invoke-static/range {v20 .. v21}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto/16 :goto_1

    :cond_13
    if-eqz v11, :cond_8

    invoke-virtual {v12, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_2

    :cond_14
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "x"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    :cond_15
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "x"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto/16 :goto_5

    :cond_17
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6
.end method

.method protected waitForRecorder()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Wait for releasing camera done in MediaRecorder"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/android/camera/module/VideoModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Got notify from Media recorder()"

    invoke-static {v1, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
